return {
    "tpope/vim-fugitive",
    config = function()
        local map = vim.keymap.set

        map("n", "gh", "<cmd>diffget //2<CR>")
        map("n", "gl", "<cmd>diffget //3<CR>")
    end,

    keys = {
        { "<leader>gs", function() vim.cmd.Git() end },
    },
}
