vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<A-Down>", ":m+<CR>==")
vim.keymap.set("n", "<A-Up>", ":m-2<CR>==")
vim.keymap.set("n", "<leader><CR>", ":so ~/.config/nvim/init.lua <CR>")

vim.keymap.set("i", "<A-Down>", "<Esc>:m+<CR>==gi")
vim.keymap.set("i", "<A-Up>", "<Esc>:m-2<CR>==gi")
vim.keymap.set("v", "<A-Down>", ":m'>+<CR>gv=gv")
vim.keymap.set("v", "<A-Up>", ":m-2<CR>gv=gv")
