return {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    version = "*",
    opts = {
        options = {
            show_close_icon = false,
            diagnostics = 'nvim_lsp',
            max_prefix_length = 8,
        },
    },
}
