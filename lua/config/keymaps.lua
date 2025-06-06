--------------------------------------------
--- Keymaps Configuration
--------------------------------------------

local map = vim.keymap.set
local opts = { noremap = true, silent = true }
local opt = { silent = true }

-- set space as leader key
map("", "<Space>", "<Nop>", opts) -- remove space keybindings
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
-- Exit neovim with <leader>qq
map("n", "<leader>qq", ":qa<CR>", opts)

-- Save file with <C-s>
map("n", "<C-s>", ":w<CR>", opts)

-- Source self with <S-s>
map("n", "<S-s>", ":source %<CR>", opts)

-- Shift focus between windows with <C-hjkl>
map("n", "<A-h>", "<C-w>h", opts)
map("n", "<A-l>", "<C-w>l", opts)

-- Resize windows with arrow keys
map("n", "<C-Up>", ":resize -2<CR>", opts)
map("n", "<C-Down>", ":resize +2<CR>", opts)
map("n", "<C-Left>", ":vertical resize -2<CR>", opts)
map("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers with <S-hl> (shift),
-- close with <leader>bd
map("n", "<S-l>", ":bnext<CR>", opts)
map("n", "<S-h>", ":bprevious<CR>", opts)
map("n", "<leader>bd", ":bdelete<CR>", opts)

-- Move text with <A-jk> (alt)
map("n", "<A-j>", ":m .+1<CR>==", opts)
map("n", "<A-k>", ":m .-2<CR>==", opts)

-- Window stuff
map("n", "<leader>vs", "<C-w>v", opts)
map("n", "<leader>hs", "<C-w>s", opts)
map("n", "<leader>es", "<C-w>=", opts)
map("n", "<leader>xs", ":close<CR>", opts)


-- Tab stuff
map("n", "<leader>to", ":tabnew<CR>", opts)
map("n", "<leader>tx", ":tabclose<CR>", opts)
map("n", "<leader>tn", ":tabn<CR>", opts)
map("n", "<leader>tp", ":tabp<CR>", opts)

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
-- map("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- map("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- map("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- map("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)


--------------------------------------------
--- Lazy keymaps
--------------------------------------------
map("n", "<leader>l", "<cmd>Lazy<CR>", opts)
map("n", "<leader>lh", "<cmd>Lazy health<CR>", opts)
map("n", "<leader>ll", "<cmd>Lazy log<CR>", opts)
map("n", "<leader>li", "<cmd>Lazy install<CR>", opts)
map("n", "<leader>ls", "<cmd>Lazy sync<CR>", opts)
