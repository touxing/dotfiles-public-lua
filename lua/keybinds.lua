-- leader key
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"

-- 本地变量
local map = vim.api.nvim_set_keymap
-- 复用 opt 参数
local opt = {noremap = true, silent = true}

vim.u.keymap = {
  set = {},
  opt = {
    ns_opt = {noremap = true, silent = true},
    se_opt = {silent = true, expr = true}
  },
  fn = {
    register_key = function (plugin_name)
      local vim_api_set = vim.u.keymap.set[plugin_name].vim_api_set
      for _, value in ipairs(vim_api_set) do
        map(value[1], value[2], value[3], vim.u.keymap.opt[value[4]])
      end
    end
  }
}

vim.keybinds = {
  gmap = vim.api.nvim_set_keymap,
  bmap = vim.api.nvim_buf_set_keymap,
  dgmap = vim.api.nvim_del_keymap,
  dbmap = vim.api.nvim_buf_del_keymap,
  opts = {noremap = true, silent = true}
}

vim.u.keymap.set.base = {
  vim_api_set = {
    -- 插入模下 jj 退出插入模式
    {"i", "jj", "<Esc>", "ns_opt"},
    {"i", "<C-j>", "<Esc>", "ns_opt"},
    -- 系统粘贴
    {"i", "<C-v>", "<Esc>\"+pa", "ns_opt"},
    -- 保存 asdsad
    {"i", "<C-s>", "<Esc>:w<Cr>a", "ns_opt"},
    {"n", "<C-s>", ":w<Cr>", "ns_opt"},
    -- 映射 O 快捷键插入行
    {"n", "<C-k>", "<S-o>", "ns_opt"},
    -- 按 Esc 取消当前搜索高亮
    {"n", "<Esc>", ":nohlsearch<CR>", "ns_opt"},
    -- windows 分屏快捷键
    {"n", "sv", ":vsp<CR>", "ns_opt"},
    {"n", "sh", ":sp<CR>", "ns_opt"},
    -- 关闭当前
    {"n", "sc", "<C-w>c", "ns_opt"},
    -- 关闭其他
    {"n", "so", "<C-w>o", "ns_opt"},
    -- Alt + hjkl  窗口之间跳转
    {"n", "<A-h>", "<C-w>h", "ns_opt"},
    {"n", "<A-j>", "<C-w>j", "ns_opt"},
    {"n", "<A-k>", "<C-w>k", "ns_opt"},
    {"n", "<A-l>", "<C-w>l", "ns_opt"},

    -- 左右比例控制
    {"n", "<C-Left>", ":vertical resize -2<CR>", "ns_opt"},
    {"n", "<C-Right>", ":vertical resize +2<CR>", "ns_opt"},
    {"n", "s,", ":vertical resize -20<CR>", "ns_opt"},
    {"n", "s.", ":vertical resize +20<CR>", "ns_opt"},
    -- 上下比例
    {"n", "sj", ":resize +10<CR>", "ns_opt"},
    {"n", "sk", ":resize -10<CR>", "ns_opt"},
    {"n", "<C-Down>", ":resize +2<CR>", "ns_opt"},
    {"n", "<C-Up>", ":resize -2<CR>", "ns_opt"},
    -- 等比例
    {"n", "s=", "<C-w>=", "ns_opt"},

    -- Terminal相关
    {"n", "<leader>t", ":sp | terminal<CR>", "ns_opt"},
    {"n", "<leader>vt", ":vsp | terminal<CR>", "ns_opt"},
    {"t", "<Esc>", "<C-\\><C-n>", "ns_opt"},
    {"t", "<A-h>", [[ <C-\><C-N><C-w>h ]], "ns_opt"},
    {"t", "<A-j>", [[ <C-\><C-N><C-w>j ]], "ns_opt"},
    {"t", "<A-k>", [[ <C-\><C-N><C-w>k ]], "ns_opt"},
    {"t", "<A-l>", [[ <C-\><C-N><C-w>l ]], "ns_opt"},

    -- insert 模式下，跳到行首行尾
    {"i", "<C-h>", "<ESC>I", "ns_opt"},
    {"i", "<C-l>", "<ESC>A", "ns_opt"},
  },
  plugin_set= {}
}

-- bufferline
vim.u.keymap.set.bufferline = {
  vim_api_set = {
    -- 左右Tab切换
    {"n", "<C-h>", ":BufferLineCyclePrev<CR>", "ns_opt"},
    {"n", "<C-l>", ":BufferLineCycleNext<CR>", "ns_opt"},
    -- 关闭 tab
    {"n", "<C-A-w>", ":Bdelete!<CR>", "ns_opt"},
    {"n", "<leader>bl", ":<CR>", "ns_opt"},
    {"n", "<leader>bh", ":<CR>", "ns_opt"},
    {"n", "<leader>bc", ":<CR>", "ns_opt"},
  },
  plugin_set = {}
}

vim.u.keymap.set.comment = {
  vim_api_set = {},
  plugin_set = {
    toggler = {
      -- 切换行注释
      line = "gcc",
      --- 切换块注释
      block = "gCC"
    },
    opleader = {
      -- 可视模式下的行注释
      line = "gc",
      -- 可视模式下的块注释
      block = "gC"
    },
    extra = {
      -- 在当前行上方新增行注释
      above = "gcO",
      -- 在当前行下方新增行注释
      below = "gco",
      -- 在当前行行尾新增行注释
      eol = "gcA"
    },
  }
}

vim.u.keymap.set.copilot = {
  vim_api_set = {
    {"i", "<C-y>", "copilot#Accept('')",  "ns_opt"}
  },
  plugin_set = {}
  -- 使用 C-l 确认补全
  -- 使用 M-[ 查看上一个补全
  -- 使用 M-[ 查看下一个补全
  -- 使用 C-[ 关闭补全
}


vim.u.keymap.set.hop = {
  vim_api_set = {
    -- 搜索并跳转到单词
    {"n", "<leader>hw", "<cmd>HopWord<CR>", "ns_opt"},
    -- 搜索并跳转到行
    {"n", "<leader>hl", "<cmd>HopLine<CR>", "ns_opt"},
    -- 搜索并跳转到字符
    {"n", "<leader>hc", "<cmd>HopChar1<CR>", "ns_opt"},

  },
  plugin_set = {}
}

vim.u.keymap.set.lsp_signature = {
  vim_api_set = {},
  plugin_set = {
    -- 显示签名
    toggle_key = "<C-k>"
  }
}

vim.u.keymap.set.lspsaga = {
  vim_api_set = {},
  plugin_set = {
    code_action_keys = {
      quit = "<esc>",
      exec = "<cr>"
    },
    rename_action_keys = {
      quit = "<esc>",
      exec = "<cr>"
    }
  }
}

vim.u.keymap.set.neoformat = {
  vim_api_set = {
    {"n", "<leader>cf", "<cmd>Neoformat<cr>", "ns_opt"}
  },
  plugin_set = {}
}

vim.u.keymap.set.nvim_cmp = {
  vim_api_set = {},
  plugin_set = {
    select_prev_item = "<c-p>",
    select_next_item = "<c-n>",
    confirm_current = "<cr>",
    toggle_complete = "<c-k>",
    current_or_next = "<tab>"
  }
}

vim.u.keymap.set.nvim_hlslens = {
  vim_api_set = {
      {
          "n",
          "n",
          "<cmd>execute('normal!'.v:count1.'n')<cr><cmd>lua require('hlslens').start()<cr>",
          "ns_opt"
      },
      {
          "n",
          "N",
          "<cmd>execute('normal!'.v:count1.'N')<cr><cmd>lua require('hlslens').start()<cr>",
          "ns_opt"
      },
      {"n", "*", "*<cmd>lua require('hlslens').start()<cr>", "ns_opt"},
      {"n", "#", "#<cmd>lua require('hlslens').start()<cr>", "ns_opt"},
      {"n", "g*", "g*<cmd>lua require('hlslens').start()<cr>", "ns_opt"},
      {"n", "g#", "g#<cmd>lua require('hlslens').start()<cr>", "ns_opt"}
  },
  plugin_set = {}
}


vim.u.keymap.set.nvim_lsp_installer = {
  vim_api_set = {},
  plugin_set = {
    lsp_definitions = "gd",
    lsp_references = "gr",
    diagnostics = "go",
    lsp_code_actions = "<leader>ca",
    rename = "<leader>rn",
    hover_doc = "gh",
    diagnostic_jump_prev = "g[",
    diagnostic_jump_next = "g]",
    smart_scroll_with_saga_prev = "<c-p>",
    smart_scroll_with_saga_next = "<c-n>"
  }
}

vim.u.keymap.set.nvim_spectre = {
  vim_api_set = {
      {"n", "<leader>rp", "<cmd>lua require('spectre').open()<cr>", "ns_opt"},
      {"n", "<leader>rf", "viw:lua require('spectre').open_file_search()<cr>", "ns_opt"},
      {"n", "<leader>rw", "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "ns_opt"}
  },
  plugin_set = {
      mapping = {
          ["toggle_line"] = {
              map = "dd",
              cmd = "<cmd>lua require('spectre').toggle_line()<cr>",
              desc = "toggle current item"
          },
          ["enter_file"] = {
              map = "<cr>",
              cmd = "<cmd>lua require('spectre.actions').select_entry()<cr>",
              desc = "goto current file"
          },
          ["show_option_menu"] = {
              map = "<leader>o",
              cmd = "<cmd>lua require('spectre').show_options()<cr>",
              desc = "show option"
          },
          ["run_replace"] = {
              map = "<leader>r",
              cmd = "<cmd>lua require('spectre.actions').run_replace()<cr>",
              desc = "replace all"
          },
          ["change_view_mode"] = {
              map = "<leader>v",
              cmd = "<cmd>lua require('spectre').change_view()<cr>",
              desc = "change result view mode"
          }
      }
  }
}

-- nvim-tree
vim.u.keymap.set.nvim_tree = {
  vim_api_set = {
    -- alt + m 键打开关闭tree
    {"n", "<A-m>", ":NvimTreeToggle<CR>", "ns_opt"},
    -- 按 leader 1 打开文件树
    {"n", "<leader>1", "<cmd>NvimTreeToggle<CR>", "ns_opt"},
    -- 按 leader fc 在文件树中找到当前以打开文件的位置
    {"n", "<leader>fc", "<cmd>NvimTreeFindFile<CR>", "ns_opt"},

    -- 默认按键
    -- o     ：打开目录或文件
    -- a     ：新增目录或文件
    -- r     ：重命名目录或文件
    -- x     ：剪切目录或文件
    -- c     ：复制目录或文件
    -- d     ：删除目录或文件
    -- y     ：复制目录或文件名称
    -- Y     ：复制目录或文件相对路径
    -- gy    ：复制目录或文件绝对路径
    -- p     ：粘贴目录或文件
    -- s     ：使用系统默认程序打开目录或文件
    -- <Tab> ：将文件添加到缓冲区，但不移动光标
    -- <C-v> ：垂直分屏打开文件
    -- <C-x> ：水平分屏打开文件
    -- <C-]> ：进入光标下的目录
    -- <C-r> ：重命名目录或文件，删除已有目录名称
    -- -     ：返回上层目录
    -- I     ：切换隐藏文件/目录的可见性
    -- H     ：切换点文件的可见性
    -- R     ：刷新资源管理器
    -- 另外，文件资源管理器操作和操作文档方式一致，可按 / ? 进行搜索
  },
  plugin_set = {}
}

vim.u.keymap.set.nvim_treesitter = {
  vim_api_set = {},
  plugin_set = {
    incremental_selection_keymaps = {
      -- 初始化选择
      init_selection = "<CR>",
      -- 递增
      node_incremental = "<CR>",
      -- 递减
      node_decremental = "<BS>",
      -- 选择一个范围
      scope_incremental = "<TAB>"
    }
  }
}

vim.u.keymap.set.telescope = {
  vim_api_set = {
    -- 查找文件
    { "n", "<C-p>", ":Telescope find_files theme=dropdown<CR>", "ns_opt" },
    -- 全局搜索
    { "n", "<C-f>", ":Telescope live_grep<CR>", "ns_opt"},
    -- 查找文件
    {"n", "<leader>ff", "<cmd>Telescope find_files theme=dropdown<CR>", "ns_opt"},
    -- 查找文字
    {"n", "<leader>fg", "<cmd>Telescope live_grep theme=dropdown<CR>", "ns_opt"},
    -- 查找特殊符号
    {"n", "<leader>fb", "<cmd>Telescope buffers theme=dropdown<CR>", "ns_opt"},
    -- 查找帮助文档
    {"n", "<leader>fh", "<cmd>Telescope help_tags theme=dropdown<CR>", "ns_opt"},
    -- 查找最近打开的文件
    {"n", "<leader>fo", "<cmd>Telescope oldfiles theme=dropdown<CR>", "ns_opt"},
    -- 查找 marks 标记
    {"n", "<leader>fm", "<cmd>Telescope marks theme=dropdown<CR>", "ns_opt"},
  },
  plugin_set = {}
}

vim.u.keymap.set.todo_comments = {
    vim_api_set = {
        {"n", "<leader>ft", "<cmd>TodoTelescope theme=dropdown<cr>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap.set.toggleterm = {
    vim_api_set = {
        {"n", "<leader>tt", "<cmd>exe v:count.'ToggleTerm'<cr>", "ns_opt"},
        {"n", "<leader>tf", "<cmd>lua require('toggleterm').float_toggle()<cr>", "ns_opt"},
        {"n", "<leader>tg", "<cmd>lua require('toggleterm').lazygit_toggle()<cr>", "ns_opt"},
        {"n", "<leader>ta", "<cmd>ToggleTermToggleAll<cr>", "ns_opt"}
    },
    plugin_set = {
        delete_all_exit = "<esc>",
        lazygit = {
            lazygit_exit = "q",
            again_exit = "<esc>"
        },
        float = {
            float_exit = "<esc>",
            again_exit = "<esc>"
        }
    }
}

vim.u.keymap.set.undotree = {
    vim_api_set = {
        {"n", "<leader>3", ":UndotreeToggle<cr>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap.set.vim_multiple_cursors = {
  vim_api_set = {},
  plugin_set = {
      start_word_key = "gb",
      next_key = "<c-n>",
      prev_key = "<c-p>",
      skip_key = "<c-b>",
      quit_key = "<esc>"
  }
}

vim.u.keymap.set.vim_translator = {
  vim_api_set = {
      {"n", "<leader>tsc", ":Translate --target_lang=zh --source_lang=auto<cr>", "ns_opt"},
      {"v", "<leader>tsc", ":TranslateW --target_lang=zh --source_lang=auto<cr>", "ns_opt"},
      {"n", "<leader>tse", ":Translate --target_lang=en --source_lang=auto<cr>", "ns_opt"},
      {"v", "<leader>tse", ":TranslateW --target_lang=en --source_lang=auto<cr>", "ns_opt"},
      {"n", "<leader>trc", ":TranslateR --target_lang=zh --source_lang=auto<cr>", "ns_opt"},
      {"v", "<leader>trc", ":TranslateR --target_lang=zh --source_lang=auto<cr>", "ns_opt"},
      {"n", "<leader>tre", ":TranslateR --target_lang=en --source_lang=auto<cr>", "ns_opt"},
      {"v", "<leader>tre", ":TranslateR --target_lang=en --source_lang=auto<cr>", "ns_opt"}
  },
  plugin_set = {}
}

vim.u.keymap.set.aerial = {
  vim_api_set = {},
  plugin_set = {
      aerial_toggle = "<leader>2",
      aerial_prev = "{",
      aerial_next = "}",
      aerial_prev_up = "[[",
      aerial_next_up = "]]"
  }
  -- <C-j> : 移动到下一个项目
  -- <C-k> : 移动到上一个项目
  -- {     : 移动到上一个类别
  -- }     : 移动到下一个类别
  -- [[    : 移动到上一个类别
  -- ]]    : 移动到下一个类别
  -- o     : 打开当前项目
  -- za    : 切换当前项目
  -- zc    : 关闭当前项目
  -- zo    : 打开当前项目
  -- zM    : 关闭所有项目
  -- zR    : 关闭所有项目
}

vim.u.keymap.set.vim_dadbod_ui = {
  vim_api_set = {
      {"n", "<leader>4", ":DBUIToggle<cr>", "ns_opt"}
  },
  plugin_set = {}
}

for plugin_name, _ in pairs(vim.u.keymap.set) do
  vim.u.keymap.fn.register_key(plugin_name)
end

-- 插件快捷键
local pluginKeys = {}

-- lsp 回调函数快捷键设置
pluginKeys.mapLSP = function(mapbuf)
  -- rename
  --[[
  Lspsaga 替换 rn
  mapbuf("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opt)
  --]]
  mapbuf("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opt)
  -- code action
  --[[
  Lspsaga 替换 ca
  mapbuf("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opt)
  --]]
  mapbuf("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opt)
  -- go xx
  --[[
  mapbuf('n', 'gd', '<cmd>Lspsaga preview_definition<CR>', opt)
  --]]
  mapbuf("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opt)
  --[[
  Lspsaga 替换 gh
  mapbuf("n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", opt)
  --]]
  mapbuf("n", "gh", "<cmd>Lspsaga hover_doc<cr>", opt)
  --[[
  Lspsaga 替换 gr
  mapbuf("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opt)
  --]]
  mapbuf("n", "gr", "<cmd>Lspsaga lsp_finder<CR>", opt)
  --[[
  Lspsaga 替换 gp, gj, gk
  mapbuf("n", "gp", "<cmd>lua vim.diagnostic.open_float()<CR>", opt)
  mapbuf("n", "gj", "<cmd>lua vim.diagnostic.goto_next()<CR>", opt)
  mapbuf("n", "gk", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opt)
  --]]
  -- diagnostic
  mapbuf("n", "gp", "<cmd>Lspsaga show_line_diagnostics<CR>", opt)
  mapbuf("n", "gj", "<cmd>Lspsaga diagnostic_jump_next<cr>", opt)
  mapbuf("n", "gk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", opt)
  mapbuf("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opt)
  -- 未用
  -- mapbuf("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opt)
  -- mapbuf("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opt)
  -- mapbuf('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opt)
  -- mapbuf("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opt)
  -- mapbuf('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opt)
  -- mapbuf('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opt)
  -- mapbuf('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opt)
  -- mapbuf('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opt)
end

-- 列表快捷键
pluginKeys.nvimTreeList = {
  -- 打开文件或文件夹
  { key = {"<CR>", "o", "<2-LeftMouse>"}, action = "edit" },
  -- 分屏打开文件
  { key = "v", action = "vsplit" },
  { key = "h", action = "split" },
  -- 显示隐藏文件
  { key = "i", action = "toggle_ignored" }, -- Ignore (node_modules)
  { key = ".", action = "toggle_dotfiles" }, -- Hide (dotfiles)
  -- 文件操作
  { key = "<F5>", action = "refresh" },
  { key = "a", action = "create" },
  { key = "d", action = "remove" },
  { key = "r", action = "rename" },
  { key = "x", action = "cut" },
  { key = "c", action = "copy" },
  { key = "p", action = "paste" },
  { key = "s", action = "system_open" },
}


pluginKeys.telescopeList = {
  i = {
    -- 上下移动
    ["<C-j>"] = "move_selection_next",
    ["<C-k>"] = "move_selection_previous",
    ["<Down>"] = "move_selection_next",
    ["<Up>"] = "move_selection_previous",
    -- 历史记录
    ["<C-n>"] = "cycle_history_next",
    ["<C-p>"] = "cycle_history_prev",
    -- 关闭窗口
    ["<C-c>"] = "close",
    -- 预览窗口上下滚动
    ["<C-u>"] = "preview_scrolling_up",
    ["<C-d>"] = "preview_scrolling_down",
  },
}

return pluginKeys
