local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
  vim.notify("没有找到 nvim-tree")
  return
end

-- 列表操作快捷键
-- local list_keys = require('keybinds').nvimTreeList

nvim_tree.setup({
  -- 关闭文件时自动关闭
  -- auto_close = true,
  -- project plugin 需要这样设置
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  -- 隐藏 .文件 和 node_modules 文件夹
  filters = {
    dotfiles = true,
    custom = { "node_modules" },
  },
  view = {
    -- 宽度
    width = 30,
    -- 也可以 'right'
    side = "left",
    -- 隐藏根目录
    hide_root_folder = false,
    -- 打开第一个文件自动resize
    auto_resize = true,
    -- 自定义列表中快捷键
    -- mappings = {
    --   custom_only = false,
    --   list = list_keys,
    -- },
    -- 不显示行数
    number = false,
    relativenumber = false,
    -- 显示图标
    signcolumn = "yes",
  },
  diagnostics = {
    -- 是否启用文件诊断信息
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = ""
    }
  },
  git = {
    -- 是否启用 git 信息
    enable = true,
    ignore = true,
    timeout = 500
  },
  -- npm install -g wsl-open
  -- https://github.com/4U6U57/wsl-open/
  system_open = {
    cmd = "wsl-open",
  },
})

-- 默认图标，可自行修改
vim.g.nvim_tree_icons = {
    default = " ",
    symlink = " ",
    git = {
        unstaged = "",
        staged = "✓",
        unmerged = "",
        renamed = "➜",
        untracked = "",
        deleted = "",
        ignored = ""
    },
    folder = {
        -- arrow_open = "╰─▸",
        -- arrow_closed = "├─▸",
        arrow_open = "",
        arrow_closed = "",
        default = "",
        open = "",
        empty = "",
        empty_open = "",
        symlink = "",
        symlink_open = ""
    }
}

-- 目录后加上反斜杠 /
vim.g.nvim_tree_add_trailing = 1
