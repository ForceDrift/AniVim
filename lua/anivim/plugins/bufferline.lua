return {
	'akinsho/bufferline.nvim',
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function()
		local colors = require("anivim.configs.colors").palette

		require("bufferline").setup({
			options = {
				mode = "buffers",
				separator_style = "slant",
				-- THIS PART FIXES THE OVERLAP
				offsets = {
					{
						filetype = "neo-tree",
						text = "󰙅 EXPLORER", -- Title shown above the tree
						text_align = "center",
						separator = true, -- Keeps the separator line consistent
					}
				},
				-- Optional: Force the background of the offset to match your theme
				highlights = {
					fill = {
						bg = colors.black,
					},
					offset_separator = {
						fg = colors.grey,
						bg = colors.black,
					},
				},
			}
		})
	end
}
