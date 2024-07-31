-- mappings
vim.g.mapleader = " "

vim.keymap.set("i", "<C-c>", "<Esc>")

-- open netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- copy to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
