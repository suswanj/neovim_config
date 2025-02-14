return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag",
    },
    config = function()
        local treesitter = require("nvim-treesitter.configs")

        -- configure
        treesitter.setup({
            highlight = {
                enable = true,
            },

            indent = {
                enable = true,
            },

            autotag = {
                enable = true,
            },

            ensure_installed = {
                "c",
                "cpp",
                "java",
                "javascript",
                "json",
                "typescript",
                "tsx",
                "html",
                "css",
                "bash",
                "markdown",
                "gitignore",
                "vim",
                "lua",
                "python",
                "rust",
                "go",
                "sql",
            },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<C-space>",
                    node_incremental = "<C-space>",
                    scope_incremental = false,
                    node_decremental = "<bs>",
                },
            },
        })
    end,
}
