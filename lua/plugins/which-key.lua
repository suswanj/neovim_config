return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {},
    init = function(_, opts)
        -- require("which-key").setup(opts)
        --
        -- local wk = require("which-key")
        --
        -- wk.register({
        --     f = { name = "Find", },
        --     d = { name = "Debug", },
        --     g = { name = "Git", },
        --     n = { name = "Neogen", },
        --     t = { name = "Testing", },
        --     v = { name = "Lsp", },
        --     m = { name = "Misc", },
        -- }, {
        --     prefix = "<leader>",
        -- })
        vim.o.timeout = true
        vim.o.timeoutlen = 500
        
        vim.keymap.set("n", "<C-h>", ":WhichKey<CR>", { silent = true })
    end,
}
