-----------------------------------------------------------------
--- Neovim Settings and Config
-----------------------------------------------------------------

-- [2] Defaults - *nvim-defaults* (help for defaults)

local opt = vim.opt	-- Set options (global/buffer/windows-scoped)

-------------------------------------------------
--- General Settings
-------------------------------------------------
opt.title = true
opt.conceallevel = 2					-- Hide * markup for bold and italic, but not markers with substitutuions
opt.mouse = 'a'						-- Enable mouse support
opt.clipboard = vim.env.SSH_TTY and "" or 'unnamedplus'				-- Enable copy/paste from system clipboard
opt.swapfile = false					-- Disable swap files
opt.completeopt = 'menu,menuone,noselect'	-- Autocomplete options
opt.confirm = true					-- Confirm unsaved changes before exiting buffer
opt.signcolumn = 'yes'					-- Always show sign column
if vim.fn.has('nvim-0.11') == 1 then
  opt.tabclose:append({'uselast'})
end

-------------------------------------------------
--- Neovim UI related settings
-------------------------------------------------
opt.number = true					-- set line number
opt.relativenumber = true				-- set relative line number
opt.showmatch = true					-- show match
opt.ignorecase = truei					-- Ignore case when searching
opt.smartcase = true					-- Consider case in case of special chars and capital letters
opt.termguicolors = true				-- true color support
opt.laststatus = 3					-- Global statusline
opt.scrolloff = 4					-- keep atleast 2 lines above/below
opt.sidescrolloff = 8					-- keep atleast 4 lines left/right
opt.numberwidth = 2					-- minimum number of columns to use for line number
opt.ruler = false					-- Disable default status ruler
opt.list = true						-- Show hidden characters
opt.splitbelow = true					-- New split at bottom
opt.splitright = true					-- New split on right
opt.splitkeep = 'screen'				-- New split keep the text on same screen line
opt.colorcolumn = '+0'					-- Align text at 'textwidth'
opt.showtabline = 2					-- Always show the tabs line
opt.helpheight = 0					-- Disable help window resizing
opt.winwidth = 40					-- Minimum width for active window
opt.winminwidth = 1					-- Minimum width for inactive window
opt.winheight = 10					-- Minimum height for active window
opt.winminheight = 1					-- Minimum height for inactive window
opt.pumblend = 10					-- Popup blend
opt.pumheight = 15					-- Maximum number of items to show in the popup menu
opt.showbreak = '⤷  '
opt.listchars = {
	tab = '  ',
	extends = '⟫',
	precedes = '⟪',
	conceal = '',
	nbsp = '␣',
	trail = '·'
}
opt.fillchars = {
	foldopen = '', -- 󰅀 
	foldclose = '', -- 󰅂 
	fold = ' ', -- ⸱
	foldsep = ' ',
	diff = '╱',
	eob = ' ',
	horiz = '━',
	horizup = '┻',
	horizdown = '┳',
	vert = '┃',
	vertleft = '┫',
	vertright = '┣',
	verthoriz = '╋',
}

------------------------------------------------
--- Indentation Config
------------------------------------------------
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true
opt.shiftround = true

-----------------------------------------------
--- Formatting
-----------------------------------------------
opt.wrap = false					-- No wrap
opt.linebreak = true				-- break long lines
opt.breakindent = true				-- indent broken lines
opt.formatexpr = "v:lua.require'lazyvim.util'.format.formatexpr()"

opt.formatoptions = "jcroqlnt"      --tcqj
opt.grepformat = "%f:%l:%c:%m"
opt.grepprg = "rg --vimgrep"
opt.inccommand = "nosplit"          -- preview incremental substitute
opt.jumpoptions = "view"
if vim.fn.has("nvim-0.10") == 1 then
    opt.smoothscroll = true
    opt.foldexpr = "v:lua.require'lazyvim.util'.ui.foldexpr()"
    opt.foldmethod = "expr"
    opt.foldtext = ""
else
    opt.foldmethod = "indent"
    opt.foldtext = "v:lua.require'lazyvim.util'.ui.foldtext()"
end
vim.g.markdown_recommended_style = 0    -- fix markdown indentatio settings

-----------------------------------------------
--- Memory, CPU
-----------------------------------------------
opt.hidden = true
opt.history = 100
opt.lazyredraw = true
opt.synmaxcol = 240
opt.updatetime = 200
opt.undofile = true
opt.undolevels = 10000
opt.writebackup = false

-----------------------------------------------
--- Startup
-----------------------------------------------
-- Disable nvim intro
opt.shortmess:append "sI"

-- Disable builtin plugins

