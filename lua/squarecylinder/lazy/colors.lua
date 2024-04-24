function ColorMyPencils(color)
	color = color or "dracula"
	vim.cmd.colorscheme(color)

	vim.cmd("colorscheme dracula")
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	{
		"Mofiqul/dracula.nvim",
		config = function ()
			require('dracula').setup({
				transparent_bg = false,
			})

			ColorMyPencils()
		end
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "dracula"
		}
	},
}
