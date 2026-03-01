return { -- Highlight, edit, and navigate code
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	branch = "main",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		local parsers =
			{ "bash", "c", "diff", "html", "lua", "luadoc", "markdown", "markdown_inline", "query", "vim", "vimdoc" }
		require("nvim-treesitter").install(parsers)
		vim.api.nvim_create_autocmd("FileType", {
			callback = function(args)
				local buf, filetype = args.buf, args.match

				local language = vim.treesitter.language.get_lang(filetype)
				if not vim.tbl_contains(parsers, language) then
					return
				end

				vim.treesitter.start()
			end,
		})
		require("nvim-ts-autotag").setup({
			opts = {
				-- Defaults
				enable_close = true, -- Auto close tags
				enable_rename = true, -- Auto rename tags
				enable_close_on_slash = false, -- Auto close on trailing </
			},
			per_filetype = {
				["html"] = {
					enable_close = true,
				},
			},
		})
	end,
}
