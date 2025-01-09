return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = {
				"c",
				"cpp",
				"lua",
				"javascript",
				"typescript",
				"vim",
				"vimdoc",
				"query",
				"java",
				"html",
				"css",
				"rust",
				"go",
				"bash",
				"kotlin",
				"json",
				"ruby",
			},
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = "<C-CR>",
					node_decremental = "<bs>",
				},
			},
		})
	end,
}
