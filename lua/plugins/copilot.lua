return {
    "github/copilot.vim",
    config = function()
        vim.g.copilot_enabled = 0;
        vim.g.copilot_filetype = {};

        --- Keymaps for copilot
        vim.api.nvim_set_keymap('n', '<leader>cpe', ':Copilot enable<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>cpd', ':Copilot disable<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('i', '<C-g>', 'copilot#Accept("<CR>")', { noremap = true, silent = true, expr = true })
    end
}
