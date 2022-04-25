-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\cenqw\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\cenqw\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\cenqw\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\cenqw\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\cenqw\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["AutoSave.nvim"] = {
    config = { "require('conf/AutoSave')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\AutoSave.nvim",
    url = "https://github.com/Pocco81/AutoSave.nvim"
  },
  ["Comment.nvim"] = {
    after_files = { "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\Comment.nvim\\after\\plugin\\Comment.lua" },
    config = { "require('conf/Comment')" },
    load_after = {
      ["nvim-ts-context-commentstring"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["aerial.nvim"] = {
    after = { "cmp-nvim-lsp" },
    config = { "require('conf/aerial')" },
    load_after = {
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\aerial.nvim",
    url = "https://github.com/stevearc/aerial.nvim"
  },
  ["bufdelete.nvim"] = {
    after = { "bufferline.nvim" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\bufdelete.nvim",
    url = "https://github.com/famiu/bufdelete.nvim"
  },
  ["bufferline.nvim"] = {
    config = { "require('conf/bufferline')" },
    load_after = {
      ["bufdelete.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    after_files = { "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-buffer\\after\\plugin\\cmp_buffer.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    after_files = { "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-cmdline\\after\\plugin\\cmp_cmdline.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    after = { "nvim-lsp-installer" },
    after_files = { "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-nvim-lsp\\after\\plugin\\cmp_nvim_lsp.lua" },
    load_after = {
      ["aerial.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    after_files = { "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-path\\after\\plugin\\cmp_path.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-spell"] = {
    after_files = { "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-spell\\after\\plugin\\cmp-spell.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-spell",
    url = "https://github.com/f3fora/cmp-spell"
  },
  ["cmp-vsnip"] = {
    after_files = { "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-vsnip\\after\\plugin\\cmp_vsnip.vim" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["copilot.vim"] = {
    config = { "require('conf/copilot')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  dashboard = {
    config = { "require('conf/dashboard')" },
    loaded = true,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\dashboard",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["emmet-vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  fd = {
    after = { "telescope.nvim" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\fd",
    url = "https://github.com/sharkdp/fd"
  },
  ["fidget.nvim"] = {
    config = { "require('conf/fidget')" },
    load_after = {
      ["nvim-lsp-installer"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["friendly-snippets"] = {
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    after = { "lualine.nvim" },
    config = { "require('conf/gitsigns')" },
    load_after = {
      ["nvim-treesitter"] = true,
      ["plenary.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["gruvbox.nvim"] = {
    loaded = true,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  ["hop.nvim"] = {
    commands = { "HopWord", "HopLine", "HopChar1" },
    config = { "require('conf/hop')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["impatient.nvim"] = {
    after = { "nvim-web-devicons" },
    loaded = true,
    only_config = true
  },
  ["indent-blankline.nvim"] = {
    config = { "require('conf/indent-blankline')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp-colors.nvim"] = {
    config = { "require('conf/lsp-colors')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\lsp-colors.nvim",
    url = "https://github.com/folke/lsp-colors.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "require('conf/lsp_signature')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    after = { "nvim-cmp" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "require('conf/lspsaga')" },
    load_after = {
      ["nvim-lsp-installer"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\lspsaga.nvim",
    url = "https://github.com/tami5/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    config = { "require('conf/lualine')" },
    load_after = {
      ["gitsigns.nvim"] = true,
      ["nvim-gps"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  neoformat = {
    commands = { "Neoformat" },
    config = { "require('conf/neoformat')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\neoformat",
    url = "https://github.com/sbdchd/neoformat"
  },
  ["nvim-autopairs"] = {
    config = { "require('conf/nvim-autopairs')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "cmp-path", "cmp-spell", "cmp-vsnip", "friendly-snippets", "vim-dadbod-completion", "cmp-buffer", "cmp-cmdline" },
    config = { "require('conf/nvim-cmp')" },
    load_after = {
      ["lspkind-nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "require('conf/nvim-colorizer')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-dap"] = {
    after = { "nvim-dap-ui", "nvim-dap-virtual-text" },
    config = { "require('conf/nvim-dap')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    config = { "require('conf/nvim-dap-ui')" },
    load_after = {
      ["nvim-dap"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    config = { "require('conf/nvim-dap-virtual-text')" },
    load_after = {
      ["nvim-dap"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-dap-virtual-text",
    url = "https://github.com/theHamsta/nvim-dap-virtual-text"
  },
  ["nvim-gps"] = {
    after = { "lualine.nvim" },
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-gps",
    url = "https://github.com/SmiteshP/nvim-gps"
  },
  ["nvim-hlslens"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-hlslens",
    url = "https://github.com/kevinhwang91/nvim-hlslens"
  },
  ["nvim-lastplace"] = {
    config = { "require('conf/nvim-lastplace')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-lastplace",
    url = "https://github.com/ethanholz/nvim-lastplace"
  },
  ["nvim-lightbulb"] = {
    config = { "require('conf/nvim-lightbulb')" },
    load_after = {
      ["nvim-lsp-installer"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-lightbulb",
    url = "https://github.com/kosayoda/nvim-lightbulb"
  },
  ["nvim-lsp-installer"] = {
    after = { "nvim-lightbulb", "fidget.nvim", "lspsaga.nvim" },
    config = { "require('conf/nvim-lsp-installer')" },
    load_after = {
      ["cmp-nvim-lsp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    after = { "aerial.nvim", "rust-tools.nvim" },
    config = { "require('conf/nvim-lspconfig')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-markdown-preview"] = {
    config = { "require('conf/nvim-markdown-preview')" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-markdown-preview",
    url = "https://github.com/davidgranstrom/nvim-markdown-preview"
  },
  ["nvim-notify"] = {
    config = { "require('conf/nvim-notify')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-spectre"] = {
    config = { "require('conf/nvim-spectre')" },
    load_after = {
      ["plenary.nvim"] = true,
      ripgrep = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-spectre",
    url = "https://github.com/nvim-pack/nvim-spectre"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeToggle", "NvimTreeFindFile" },
    config = { "require('conf/nvim-tree')" },
    load_after = {},
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-gps", "gitsigns.nvim" },
    config = { "require('conf/nvim-treesitter')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-context-commentstring"] = {
    after = { "Comment.nvim" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-ts-rainbow"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    after = { "aerial.nvim", "lualine.nvim", "bufferline.nvim", "nvim-tree.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    after = { "gitsigns.nvim", "telescope.nvim", "nvim-spectre" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["project.nvim"] = {
    config = { "require('conf/project')" },
    load_after = {
      ["telescope.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  ripgrep = {
    after = { "telescope.nvim", "nvim-spectre" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\ripgrep",
    url = "https://github.com/BurntSushi/ripgrep"
  },
  ["rust-tools.nvim"] = {
    config = { "require('conf/rust-tools')" },
    load_after = {
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = true,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["rust.vim"] = {
    loaded = true,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\rust.vim",
    url = "https://github.com/rust-lang/rust.vim"
  },
  ["surround.nvim"] = {
    config = { "require('conf/surround')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\surround.nvim",
    url = "https://github.com/ur4ltz/surround.nvim"
  },
  ["telescope.nvim"] = {
    after = { "project.nvim" },
    commands = { "Telescope" },
    config = { "require('conf/telescope')" },
    load_after = {
      fd = true,
      ["plenary.nvim"] = true,
      ripgrep = true
    },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "require('conf/todo-comments')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "require('conf/toggleterm')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["vim-carbon-now-sh"] = {
    commands = { "CarbonNowSh" },
    config = { "require('conf/vim-carbon-now-sh')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-carbon-now-sh",
    url = "https://github.com/kristijanhusak/vim-carbon-now-sh"
  },
  ["vim-dadbod-completion"] = {
    after_files = { "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-dadbod-completion\\after\\plugin\\vim_dadbod_completion.lua", "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-dadbod-completion\\after\\plugin\\vim_dadbod_completion.vim" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-dadbod-completion",
    url = "https://github.com/kristijanhusak/vim-dadbod-completion"
  },
  ["vim-illuminate"] = {
    config = { "require('conf/vim-illuminate')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vim-multiple-cursors"] = {
    config = { "require('conf/vim-multiple-cursors')" },
    loaded = true,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-multiple-cursors",
    url = "https://github.com/terryma/vim-multiple-cursors"
  },
  ["vim-python-pep8-indent"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-python-pep8-indent",
    url = "https://github.com/Vimjas/vim-python-pep8-indent"
  },
  ["vim-startuptime"] = {
    commands = { "StartupTime" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-startuptime",
    url = "https://github.com/dstein64/vim-startuptime"
  },
  ["vim-translator"] = {
    commands = { "Translate", "TranslateR", "TranslateW" },
    config = { "require('conf/vim-translator')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-translator",
    url = "https://github.com/voldikss/vim-translator"
  },
  ["vim-vsnip"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  vimcdoc = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vimcdoc",
    url = "https://github.com/yianwillis/vimcdoc"
  },
  ["vista.vim"] = {
    config = { "require('conf/vista')" },
    loaded = true,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vista.vim",
    url = "https://github.com/liuchengxu/vista.vim"
  },
  ["which-key.nvim"] = {
    config = { "require('conf/which-key')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\cenqw\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: vista.vim
time([[Config for vista.vim]], true)
require('conf/vista')
time([[Config for vista.vim]], false)
-- Config for: dashboard
time([[Config for dashboard]], true)
require('conf/dashboard')
time([[Config for dashboard]], false)
-- Config for: vim-multiple-cursors
time([[Config for vim-multiple-cursors]], true)
require('conf/vim-multiple-cursors')
time([[Config for vim-multiple-cursors]], false)
-- Config for: impatient.nvim
time([[Config for impatient.nvim]], true)
require('conf/impatient')
time([[Config for impatient.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-web-devicons ]]
time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TranslateW lua require("packer.load")({'vim-translator'}, { cmd = "TranslateW", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file CarbonNowSh lua require("packer.load")({'vim-carbon-now-sh'}, { cmd = "CarbonNowSh", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeFindFile lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeFindFile", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file StartupTime lua require("packer.load")({'vim-startuptime'}, { cmd = "StartupTime", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Neoformat lua require("packer.load")({'neoformat'}, { cmd = "Neoformat", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopWord lua require("packer.load")({'hop.nvim'}, { cmd = "HopWord", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopLine lua require("packer.load")({'hop.nvim'}, { cmd = "HopLine", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopChar1 lua require("packer.load")({'hop.nvim'}, { cmd = "HopChar1", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Translate lua require("packer.load")({'vim-translator'}, { cmd = "Translate", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TranslateR lua require("packer.load")({'vim-translator'}, { cmd = "TranslateR", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType html ++once lua require("packer.load")({'emmet-vim'}, { ft = "html" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'emmet-vim'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescript ++once lua require("packer.load")({'emmet-vim'}, { ft = "typescript" }, _G.packer_plugins)]]
vim.cmd [[au FileType vue ++once lua require("packer.load")({'emmet-vim'}, { ft = "vue" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'nvim-markdown-preview'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType python ++once lua require("packer.load")({'vim-python-pep8-indent'}, { ft = "python" }, _G.packer_plugins)]]
vim.cmd [[au FileType xml ++once lua require("packer.load")({'emmet-vim'}, { ft = "xml" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au TextChanged * ++once lua require("packer.load")({'AutoSave.nvim'}, { event = "TextChanged *" }, _G.packer_plugins)]]
vim.cmd [[au TextChangedI * ++once lua require("packer.load")({'AutoSave.nvim'}, { event = "TextChangedI *" }, _G.packer_plugins)]]
vim.cmd [[au InsertCharPre * ++once lua require("packer.load")({'copilot.vim'}, { event = "InsertCharPre *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'nvim-ts-rainbow', 'nvim-lspconfig', 'surround.nvim', 'todo-comments.nvim', 'toggleterm.nvim', 'nvim-dap', 'bufdelete.nvim', 'nvim-treesitter', 'vimcdoc', 'ripgrep', 'fd', 'indent-blankline.nvim', 'lsp-colors.nvim', 'lsp_signature.nvim', 'nvim-lastplace', 'nvim-colorizer.lua', 'vim-illuminate', 'nvim-ts-context-commentstring', 'nvim-hlslens', 'which-key.nvim', 'nvim-notify', 'plenary.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au BufNewFile * ++once lua require("packer.load")({'nvim-ts-rainbow', 'nvim-lspconfig', 'surround.nvim', 'todo-comments.nvim', 'toggleterm.nvim', 'nvim-dap', 'bufdelete.nvim', 'nvim-treesitter', 'vimcdoc', 'ripgrep', 'fd', 'indent-blankline.nvim', 'lsp-colors.nvim', 'lsp_signature.nvim', 'nvim-lastplace', 'nvim-colorizer.lua', 'vim-illuminate', 'nvim-ts-context-commentstring', 'nvim-hlslens', 'which-key.nvim', 'nvim-notify', 'plenary.nvim'}, { event = "BufNewFile *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'vim-vsnip', 'lspkind-nvim', 'nvim-autopairs'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
