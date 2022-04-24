-- https://github.com/github/copilot.vim

vim.g.copilot_no_tab_map = true
-- 由于延迟加载，所以需要在这里删除 tab 的绑定
vim.api.nvim_del_keymap("i", "<tab>")

-- 使用 C-l 确认补全
-- 使用 M-[ 查看上一个补全
-- 使用 M-[ 查看下一个补全
-- 使用 C-[ 关闭补全
