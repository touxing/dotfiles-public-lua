local status, ident_blankline = pcall(require, "indent_blankline")
if not status then
  vim.notify("没有找到 indent_blankline")
  return
end

ident_blankline.setup({
  -- 空行占位
  space_char_blankline = " ",
  -- 显示所在的区域，用 treesitter 判断上下文
  show_current_context = true,
  -- 显示当前所在区域的开始位置
  show_current_context_start = true,
  -- 显示行尾符
  show_end_of_line = true,
  context_patterns = {
    "class",
    "function",
    "method",
    "element",
    "^if",
    "^while",
    "^for",
    "^object",
    "^table",
    "block",
    "arguments",
  },
  -- :echo &filetype
  filetype_exclude = {
    "dashboard",
    "packer",
    "terminal",
    "help",
    "log",
    "markdown",
    "TelescopePrompt",
    "lsp-installer",
    "lspinfo",
    "toggleterm",
  },
  -- 竖线样式
  -- char = '¦'
  -- char = '┆'
  -- char = '│'
  -- char = "⎸",
  char = "▏",
})
