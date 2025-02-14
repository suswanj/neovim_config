function ColorMyGruvbox()
    vim.opt.background = "dark"
    vim.opt.termguicolors = true
    vim.cmd.colorscheme("gruvbox")

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    { "blazkowolf/gruber-darker.nvim", name = "gruber-darker", config = ColorMyGruber },
    { "morhetz/gruvbox", name = "gruvbox" },
}
