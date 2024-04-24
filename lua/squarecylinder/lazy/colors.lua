function ColorMyPencils(color)
    color = color or "dracula"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    {
        "Mofiqul/dracula.nvim",
        config = function()
            require("dracula").setup({})
            vim.cmd("colorscheme dracula")
            ColorMyPencils()
        end
    },
}
