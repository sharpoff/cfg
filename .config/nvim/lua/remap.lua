vim.g.mapleader = " "

vim.keymap.set("i", "<C-c>", "<Esc>")

-- open netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- copy to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- rename
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- tabs
vim.keymap.set("n", "<C-e>", ":tabn<CR>", {})
vim.keymap.set("n", "<C-q>", ":tabp<CR>", {})
