vim.g.mapleader = " "
vim.keymap.set("i", "<C-c>", "<Esc>")

-- open netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- copy to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- buffers
vim.keymap.set('n', '[b',  ':bprev<cr>')
vim.keymap.set('n', ']b',  ':bnext<cr>')

-- tabs
vim.keymap.set('n', '[t',  ':tabprev<cr>')
vim.keymap.set('n', ']t',  ':tabnext<cr>')
vim.keymap.set('n', '<leader>tn',  ':tabnew<cr>')

-- omnicomplete
vim.keymap.set('i', '<C-Space>', '<C-x><C-o>')

-- fugitive
vim.keymap.set('n', '<leader>g', ':G<cr>')
