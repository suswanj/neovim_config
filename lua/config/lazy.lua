--------------------------------------------------
-- Plugin Manager Config
--------------------------------------------------

-- Plugin manager: Lazy.nvim
-- URL: https://github.com/folke/lazy.nvim
-- Interactive plugin manager to load, update, and install plugins

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit___" },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		-- import/override with personal plugins
		{ import = "plugins" },
		-- Adding lazyvim and its plugins
		{ "LazyVim/LazyVim", import = "lazyvim.plugins" },
	},
	defaults = {
		-- By default only LazyVim plugins will be loaded
		-- set lazy = true to have custom plugins lazy-loaded by default
		lazy = false,
		-- Recommendation version = false (since outdated plugins which do versioning)
		-- version = "*" (Try installing lastest stable version for plugin that supports semver)
		version = false,
	},
	install = { colorscheme = { "catpuccin", "gruvbox", "tokyonight" } },
	checker = {
		enabled = true, -- check for plugins updates periodically
		notify = false, -- notify on update
	}, -- automatically checking for plugins update
	performance = {
		rtp = {
			-- disable rtp plugins
			disabled_plugins = {
				"gzip",
				"matchit",
				"matchparen",
				"netrwPlugin",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			},
		},
	},
})
