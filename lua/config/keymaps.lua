--------------------------------------------
--- Keymaps Configuration
--------------------------------------------

local map = vim.keymap.set
local opts = { noremap = true, silent = true }
local opt = { silent = true }

-- set space as leader key
map("", "<Space>", "<Nop>", opts)               -- remove space keybindings
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes:
--  'n' : normal
--  'i' : insert
--  'v' : visual
--  'x' : visual block
--  't' : terminal
--  'c' : command

--------------------------------------------
--- Normal Mode Keymappings
--------------------------------------------
-- Shift focus between windows with <C-hjkl> (cntl)
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Resize windows with arrow keys
map("n", "<C-Up>", ":resize -2<CR>", opts)
map("n", "<C-Down>", ":resize +2<CR>", opts)
map("n", "<C-Left>", ":vertical resize -2<CR>", opts)
map("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers with <S-hl> (shift)
map("n", "<S-l>", ":bnext<CR>", opts)
map("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text with <A-jk> (alt)
map("n", "<A-j>", ":m .+1<CR>==", opts)
map("n", "<A-k>", ":m .-2<CR>==", opts)

--------------------------------------------
--- Insert Mode Keymappings
--------------------------------------------


--------------------------------------------
--- Visual Mode Keymappings
--------------------------------------------
-- Stay in indent mode
map("v", "<", "<gv^", opts)
map("v", ">", ">gv^", opts)

-- Move text
map("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
map("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
map("v", "p", '"_dp', opts)

--------------------------------------------
--- Visual Block Mode Keymappings
--------------------------------------------
-- move text block
map("x", "J", ":m '>+1<CR>gv=gv", opts)
map("x", "K", ":m '<-2<CR>gv=gv", opts)
map("x", "<A-j>", ":m '>+1<CR>gv=gv", opts)
map("x", "<A-k>", ":m '<-2<CR>gv=gv", opts)

--------------------------------------------
--- Terminal Mode Keymappings
--------------------------------------------
-- Better terminal navigation
map("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
map("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
map("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
map("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
