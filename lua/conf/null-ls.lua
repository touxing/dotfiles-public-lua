local null_ls = require("null-ls")
local sources = {
	null_ls.builtins.formatting.trim_newlines.with({
		disabled_filetypes = { "rust" }, -- use rustfmt
	}),
	null_ls.builtins.formatting.trim_whitespace.with({
		disabled_filetypes = { "rust" }, -- use rustfmt
	}),
	null_ls.builtins.formatting.stylua,
	null_ls.builtins.formatting.shfmt,
	null_ls.builtins.formatting.prettier.with({
		filetypes = { "html", "css", "yaml", "markdown", "json" },
	}),
}
null_ls.setup({ sources = sources })
