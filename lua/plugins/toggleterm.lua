return {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
        vim.keymap.set("n", "<C-`>", "<cmd>ToggleTerm size=20 direction=horizontal<CR>", { silent = true, noremap = true }),
        vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTerm size=60 direction=vertical<CR>", { silent = true, noremap = true }),
    }

}
