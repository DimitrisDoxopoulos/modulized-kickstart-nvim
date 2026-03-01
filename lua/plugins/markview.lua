return {
	"OXY2DEV/markview.nvim",
	lazy = false,

	-- Completion for 'blink.cmp'
	dependenties = {
		"seghen/blink.cmp",
	},

	config = function()
		require("markview").setup({
			preview = { enable = false },
		})

		vim.keymap.set("n", "<leader>mt", "<CMD>Markview<CR>", {
			desc = "[T]oggles the [m]arkview previews globally",
		})

		vim.keymap.set("i", "<C-h>", "<CMD>Markview HybridToggle<CR>", {
			desc = "Toggles [h]ybrid mode globally",
		})

		vim.keymap.set(
			"n",
			"<leader>tl",
			"<CMD>Markview linewiseToggle<CR>",
			{ desc = "[T]oggles `[l]ine-wise` hybrid mode." }
		)

		vim.keymap.set(
			"n",
			"<leader>ts",
			"<CMD>Markview splitToggle<CR>",
			{ desc = "[T]oggles `[s]plitview` for current buffer." }
		)
	end,
}
