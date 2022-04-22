-- https://github.com/wbthomason/packer.nvim

local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    ---@diagnostic disable-next-line: lowercase-global
    packer_bootstrap =
        vim.fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
end

local packer = require("packer")
packer.startup(
function(use)
  -- Packer 可以管理自己本身
  use("wbthomason/packer.nvim")
  -- 优化启动速度
  use("lewis6991/impatient.nvim")
  -- other plugin --
  -- 主题
  use("folke/tokyonight.nvim")
  -- 主题 OceanicNext
  use("mhartington/oceanic-next")
  -- 主题 gruvbox
  use({ "ellisonleao/gruvbox.nvim", requires = { "rktjmp/lush.nvim" } })
  -- 主题 nord
  use("shaunsingh/nord.nvim")
  -- 主题 onedark
  use("ful1e5/onedark.nvim")
  -- 主题 nightfox
  use("EdenEast/nightfox.nvim")
  -- nvim-tree
  use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
  -- bufferline
  use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }})
  -- lualine
  use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
  use("arkav/lualine-lsp-progress")
  -- telescope 模糊查找
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      "nvim-lua/plenary.nvim", -- Lua 开发模块
      "BurntSushi/ripgrep", -- 文字查找
      "sharkdp/fd" -- 文件查找
    },
    config = function()
      require('conf.telescope')
    end
  }
  -- telescope extensions
  use "LinArcX/telescope-env.nvim"
  -- dashboard-nvim
  use("glepnir/dashboard-nvim")
  -- project
  use("ahmedkhalf/project.nvim")
  -- treesitter
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
  -- 搜索时显示条目
  use {
    "kevinhwang91/nvim-hlslens",
    config = function()
      require("conf.nvim-hlslens")
    end
  }
  -- 自动匹配括号
  use {
    "windwp/nvim-autopairs",
    config = function()
      require("conf.nvim-autopairs")
    end
  }
  -- 快速跳转
  use {
    "phaazon/hop.nvim",
    config = function()
      require("conf.hop")
    end
  }
  -- 显示光标下相同词汇
  use {
    "RRethy/vim-illuminate",
    config = function()
      require("conf.vim-illuminate")
    end
  }
  -- 全局替换
  use {
    "nvim-pack/nvim-spectre",
    requires = {
      "nvim-lua/plenary.nvim", -- Lua 开发模块
      "BurntSushi/ripgrep" -- 文字查找
    },
    config = function()
      require("conf.nvim-spectre")
    end
  }
  -- 显示网页色
  use {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("conf.nvim-colorizer")
    end
  }
  -- 内置终端
  use {
    "akinsho/toggleterm.nvim",
    config = function()
      require("conf.toggleterm")
    end
  }
  -- 包裹修改
  use {
    "ur4ltz/surround.nvim",
    config = function()
      require("conf.surround")
    end
  }
  -- indent-blankline
  use("lukas-reineke/indent-blankline.nvim")
  -- 代码注释
  use {
    "numToStr/Comment.nvim",
    requires = {
      "JoosepAlviste/nvim-ts-context-commentstring"
    },
    config = function()
      require("conf.Comment")
    end
  }
  -- 代码格式化
  use {
    "sbdchd/neoformat",
    config = function()
      require("conf.neoformat")
    end
  }
  -- 自动保存
  use {
    "Pocco81/AutoSave.nvim",
    config = function()
      require("conf.AutoSave")
    end
  }
  -- 多光标模式
  use {
    "terryma/vim-multiple-cursors",
    config = function()
      require("conf.vim-multiple-cursors")
    end
  }
  -- 键位绑定器
  use {
    "folke/which-key.nvim",
    config = function()
      require("conf.which-key")
    end
  }
  -- todo tree
  use {
    "folke/todo-comments.nvim",
    config = function()
      require("conf.todo-comments")
    end
  }
  -- view tree
  use {
    "liuchengxu/vista.vim",
    config = function()
      require("conf.vista")
    end
  }
  -- git copilot 自动补全
  use {
    "github/copilot.vim",
    config = function()
      require("conf.copilot")
    end
  }
  -- ------------------ LSP --------------------
  -- LSP 基础服务
  use {
    "neovim/nvim-lspconfig",
    config = function()
      require("conf.nvim-lspconfig")
    end
  }

  -- 自动安装 LSP
  use {
    "williamboman/nvim-lsp-installer",
    config = function()
      require("conf.nvim-lsp-installer")
    end
  }

  -- LSP UI 美化
  use {
    "tami5/lspsaga.nvim",
    config = function()
      require("conf.lspsaga")
    end
  }
  -- 自动代码补全系列插件
  use {
    "hrsh7th/nvim-cmp",  -- 代码补全核心插件，下面都是增强补全的体验插件
    requires = {
      {"onsails/lspkind-nvim"}, -- 为补全添加类似 vscode 的图标
      {"hrsh7th/vim-vsnip"}, -- vsnip 引擎，用于获得代码片段支持
      {"hrsh7th/cmp-vsnip"}, -- 适用于 vsnip 的代码片段源
      {"hrsh7th/cmp-nvim-lsp"}, -- 替换内置 omnifunc，获得更多补全
      {"hrsh7th/cmp-path"}, -- 路径补全
      {"hrsh7th/cmp-buffer"}, -- 缓冲区补全
      {"hrsh7th/cmp-cmdline"}, -- 命令补全
      {"f3fora/cmp-spell"}, -- 拼写建议
      {"rafamadriz/friendly-snippets"}, -- 提供多种语言的代码片段
      {"lukas-reineke/cmp-under-comparator"}, -- 让补全结果的排序更加智能
      {"tzachar/cmp-tabnine", run = "./install.sh"} -- tabnine 源,提供基于 AI 的智能补全
    },
    config = function()
      require("conf.nvim-cmp")
    end
  }
  -- LSP 进度提示
  use {
    "j-hui/fidget.nvim",
    config = function()
      require("conf.fidget")
    end
  }
  -- 插入模式获得函数签名
  use {
    "ray-x/lsp_signature.nvim",
    config = function()
      require("conf.lsp_signature")
    end
  }
  -- 为不支持 LSP 高亮的主题提供默认高亮方案
  use {
    "folke/lsp-colors.nvim",
    config = function()
      require("conf.lsp-colors")
    end
  }
  -- ------------------ LSP end--------------------
end
)

-- 每次保存 plugins.lua 自动安装插件
-- pcall(
-- vim.cmd,
-- [[
-- augroup packer_user_config
-- autocmd!
-- autocmd BufWritePost plugins.lua source <afile> | PackerSync
-- augroup end
-- ]]
-- )
