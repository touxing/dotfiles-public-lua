local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
    vim.notify("没有找到 nvim-treesitter")
    return
end

local plugin_key = vim.u.keymap.set.nvim_treesitter.plugin_set

treesitter.setup({
  -- 安装 language parser
  -- :TSInstallInfo 命令查看支持的语言
  -- ensure_installed = { "json", "html", "css", "vim", "lua", "javascript", "typescript", "tsx", "go", "rust", "toml", "yaml", "markdown" },
  -- 安装的高亮支持来源
  ensure_installed = "maintained",
  -- 同步下载高亮支持
  sync_install = false,
  -- 高亮相关
  highlight = {
    -- 启用高亮支持
    enable = true,
    -- 使用 treesitter 高亮而不是 neovim 内置的高亮
    additional_vim_regex_highlighting = false
  },
  -- 范围选择
  incremental_selection = {
    enable = true,
    keymaps = plugin_key.incremental_selection_keymaps
  },
  -- 缩进，关闭
  indent = {
    enable = false
  },
  -- 根据当前上下文定义文件类型，由 nvim-ts-context-commentstring 插件提供
  context_commentstring = {
    enable = true
  }
})

-- 开启 Folding 模块
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
-- 默认不要折叠
-- https://stackoverflow.com/questions/8316139/how-to-set-the-default-to-unfolded-when-you-open-a-file
vim.opt.foldlevel = 99
