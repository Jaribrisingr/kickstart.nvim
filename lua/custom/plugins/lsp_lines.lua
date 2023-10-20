return {
	'ErichDonGubler/lsp_lines.nvim',
	version = "*",
	opts = {},
	config = function()
		require("lsp_lines").setup()
		-- Disable virtual_text since it's redundant due to lsp_lines.
		vim.diagnostic.config({ virtual_text = true, })
		vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>',
			{ desc = "Toggle floating lsp" })
		vim.keymap.set(
			"",
			"<Leader>l",
			require("lsp_lines").toggle,
			{ desc = "Toggle lsp_lines" }
		)
	end,
}
