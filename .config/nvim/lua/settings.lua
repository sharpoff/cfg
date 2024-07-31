vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set rnu")
vim.cmd("set nu")
vim.cmd("set nocompatible")
vim.cmd("filetype plugin on")
vim.cmd("syntax on")

-- undodir --
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- enable incsearch --
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.updatetime = 50

vim.g.netrw_banner = 0 -- disable top help menu
vim.g.netrw_liststyle = 3

-- Change color of left light grey bar for gruvbox --
vim.g.gruvbox_sign_column = 'bg0'


-- mappings
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
vim.cmd('colorscheme gruvbox')
