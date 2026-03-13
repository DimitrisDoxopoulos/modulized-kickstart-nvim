return {
	"pmizio/typescript-tools.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"neovim/nvim-lspconfig",
	},
	config = function()
		local on_attach = function(_, bufnr)
			vim.keymap.set("n", "gh", vim.lsp.buf.hover, {
				noremap = true,
				silent = true,
				buffer = bufnr,
			})
		end
		-- local on_attach_no_format = function(client, bufnr)
		-- client.server.capabilities.documentFormattingProvider = false
		-- on_attach(client, bufnr)
		-- end
		require("typescript-tools").setup({
			on_attach = on_attach,
			settings = {
				separate_diagnostic_server = true,
				publish_diagnostic_on = "insert_leave",
				tsserver_plugins = {},
				tsserver_format_options = {},
				tsserver_file_preferences = {},
			},
		})
	end,
}
