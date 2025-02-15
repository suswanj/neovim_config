return {
    "akinsho/toggleterm.nvim",
    require("toggleterm").setup{},

    vim.keymap.set("n", "<leader>th", "<cmd>ToggleTerm size=20 direction=horizontal<CR>", { silent = true, noremap = true }),
    vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTerm size=60 direction=vertical<CR>", { silent = true, noremap = true }),
}
