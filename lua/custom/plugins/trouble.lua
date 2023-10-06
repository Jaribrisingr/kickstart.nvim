return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {},
	config = function()
		-- Lua
		vim.keymap.set("n", "<leader>xx", function() require("trouble").open() end,
			{ desc = 'Open diagonistics' })
		vim.keymap.set("n", "<leader>wx", function() require("trouble").open("workspace_diagnostics") end,
			{ desc = 'Open workspace diagonistics' })
		vim.keymap.set("n", "<leader>dx", function() require("trouble").open("document_diagnostics") end,
			{ desc = 'Open document diagonistics' })
	end,
}
