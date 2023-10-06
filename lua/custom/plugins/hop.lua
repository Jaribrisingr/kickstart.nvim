return {
	'smoka7/hop.nvim',
	version = "*",
	opts = {},
	config = function()
		require("hop").setup {
			keys = 'etovxqpdygfblzhckisuran',
			jump_on_sole_occurrence = false,
		}
		vim.keymap.set('n', 'HH', ':HopWord<cr>')
		vim.keymap.set('n', 'HL', ':HopLineStart<cr>')
	end,
}
