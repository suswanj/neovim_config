return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000, -- Ensure it loads first
		config = function()
			-- Set Gruvbox as the colorscheme
			vim.cmd("colorscheme gruvbox")
		end,
	},
}
