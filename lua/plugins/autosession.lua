return {
    "rmagatti/auto-session",
    config = function()
        local auto_session = require("auto-session")

        auto_session.setup({
            auto_restore_enabled = false,
            auto_session_suppress_dirs = { "~/", "~/Desktop", "~/Desktop/cs/projects", "~/Downloads", "~/Documents" },
        })

        local map = vim.keymap.set

        map("n", "<leader>wr", "<cmd>SessionRestore<CR>")
        map("n", "<leader>ws", "<cmd>SessionSave<CR>")
    end,
}
