-- https://github.com/williamboman/nvim-lsp-installer

local plugin_key = vim.u.keymap.set.nvim_lsp_installer.plugin_set

local lsp_installer_servers = require("nvim-lsp-installer.servers")

-- 使用 cmp_nvim_lsp 代替内置 omnifunc，获得更强的补全体验
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

-- WARN: lsp install 手动书写 LSP 配置文件
-- 名称：https://github.com/williamboman/nvim-lsp-installer#available-lsps
-- 配置：https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
-- 另外注意安装的 nodejs 和 npm 的版本要新，太久的版本会导致 lsp 无法正常工作

local servers = {
    sumneko_lua = require("lsp.config.sumneko_lua"),
    -- pyright = require("lsp.config.pyright"),
    tsserver = require("lsp.config.tsserver"),
    html = require("lsp.config.html"),
    cssls = require("lsp.config.cssls"),
    gopls = require("lsp.config.gopls"),
    jsonls = require("lsp.config.jsonls"),
    zeta_note = require("lsp.config.zeta_note"),
    -- rust_analyzer = require("lsp.config.rust_analyzer"),
    vuels = require("lsp.config.vuels")
}

local function attach(client, bufnr)
    require("aerial").on_attach(client, bufnr)
    vim.api.nvim_buf_set_keymap(
        bufnr,
        "n",
        plugin_key.lsp_definitions,
        "<cmd>Telescope lsp_definitions theme=dropdown<CR>",
        vim.u.keymap.opt.ns_opt
    )
    vim.api.nvim_buf_set_keymap(
        bufnr,
        "n",
        plugin_key.lsp_references,
        "<cmd>Telescope lsp_references theme=dropdown<CR>",
        vim.u.keymap.opt.ns_opt
    )
    vim.api.nvim_buf_set_keymap(
        bufnr,
        "n",
        plugin_key.diagnostics,
        "<cmd>Telescope diagnostics theme=dropdown<CR>",
        vim.u.keymap.opt.ns_opt
    )
    vim.api.nvim_buf_set_keymap(
        bufnr,
        "n",
        plugin_key.lsp_code_actions,
        "<cmd>Telescope lsp_code_actions theme=dropdown<CR>",
        vim.u.keymap.opt.ns_opt
    )
    vim.api.nvim_buf_set_keymap(bufnr, "n", plugin_key.rename, "<cmd>Lspsaga rename<CR>", vim.u.keymap.opt.ns_opt)
    vim.api.nvim_buf_set_keymap(bufnr, "n", plugin_key.hover_doc, "<cmd>Lspsaga hover_doc<CR>", vim.u.keymap.opt.ns_opt)
    vim.api.nvim_buf_set_keymap(
        bufnr,
        "n",
        plugin_key.diagnostic_jump_prev,
        "<cmd>Lspsaga diagnostic_jump_prev<CR>",
        vim.u.keymap.opt.ns_opt
    )
    vim.api.nvim_buf_set_keymap(
        bufnr,
        "n",
        plugin_key.diagnostic_jump_next,
        "<cmd>Lspsaga diagnostic_jump_next<CR>",
        vim.u.keymap.opt.ns_opt
    )
    vim.api.nvim_buf_set_keymap(
        bufnr,
        "n",
        plugin_key.smart_scroll_with_saga_prev,
        "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>",
        vim.u.keymap.opt.ns_opt
    )
    vim.api.nvim_buf_set_keymap(
        bufnr,
        "n",
        plugin_key.smart_scroll_with_saga_next,
        "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>",
        vim.u.keymap.opt.ns_opt
    )
end

-- 自动安装或启动 LanguageServers
for server_name, server_options in pairs(servers) do
    local server_available, server = lsp_installer_servers.get_server(server_name)
    -- 判断服务是否可用
    if server_available then
        -- 判断服务是否准备就绪，若就绪则启动服务
        server:on_ready(
            function()
                -- keybind
                server_options.on_attach = attach
                -- options config
                server_options.flags = {
                    debounce_text_changes = 150
                }
                -- 代替内置 omnifunc
                server_options.capabilities = capabilities
                server:setup(server_options)
            end
        )
        -- 如果语言服务器未准备就绪，则自动安装
        if not server:is_installed() then
            vim.notify("Install Language Server : " .. server_name, "WARN", {title = "Language Servers"})
            server:install()
        end
    end
end
