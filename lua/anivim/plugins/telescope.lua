return {

	'nvim-telescope/telescope.nvim',
	tag = 'v0.2.0',

	dependencies = { 'nvim-lua/plenary.nvim'

	},

	config = function()
		vim.keymap.set("n", "<space>f", require('telescope.builtin').find_files)
	end,


}
