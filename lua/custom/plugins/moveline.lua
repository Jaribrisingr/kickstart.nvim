return {
	'willothy/moveline.nvim',
	build = 'make',
	config = function()
		local moveline = require('moveline')
		-- ITerm2 -> Preferences -> Profiles -> keys -> General -> Choose "left Option key " as "Esc+"
		vim.keymap.set('n', '<M-k>', moveline.up)
		vim.keymap.set('n', '<M-j>', moveline.down)
		vim.keymap.set('v', '<M-k>', moveline.block_up)
		vim.keymap.set('v', '<M-j>', moveline.block_down)
	end
}
