local auto_dark_mode = require('auto-dark-mode')

auto_dark_mode.setup({
	update_interval = 1000,
  transparent_background = true,
	set_dark_mode = function()
		vim.api.nvim_set_option_value('background', 'dark', {})
		vim.cmd('colorscheme gruvbox')
	end,
	set_light_mode = function()
		vim.api.nvim_set_option_value('background', 'light', {})
		vim.cmd('colorscheme gruvbox')
	end,
})
