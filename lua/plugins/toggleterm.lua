return {
	"akinsho/toggleterm.nvim",
	config = function()
		require("toggleterm").setup({
			size = 20,
			open_mapping = "<F12>",
			direction = "float",
			float_opts = {
				border = "curved",
			},
		})
	end,
}
