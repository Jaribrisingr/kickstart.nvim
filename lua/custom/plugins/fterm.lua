return {
	"numToStr/FTerm.nvim",
	-- FTerm
	config = function()
		require 'FTerm'.setup {
			ft         = 'FTerm',
			border     = 'single',
			--cmd        = os.getenv('SHELL'),
			auto_close = false,
			hl         = 'Normal',
			blend      = 0,
			dimensions = {
				height = 0.9,
				width = 0.9,
				x = 0.5,
				y = 0.5,
			},
			clear_env  = false,
			--env        = nil,
			--on_exit    = nil,
			--on_stdout  = nil,
			--on_stderr  = nil
		}
		vim.keymap.set('n', 't', '<CMD>lua require("FTerm").toggle()<CR>')
		vim.keymap.set('t', '<Esc>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
	end,
}
