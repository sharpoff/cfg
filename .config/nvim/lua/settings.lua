vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set rnu")
vim.cmd("set nu")
vim.cmd("set nocompatible")
vim.cmd("filetype plugin on")
vim.cmd("syntax on")
vim.cmd("set signcolumn=yes")

-- for completion window
vim.cmd("set pumheight=8")

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.updatetime = 50

vim.g.netrw_banner = 0 -- disable top help menu
vim.g.netrw_liststyle = 3

vim.opt.colorcolumn = "80"

vim.opt.guicursor = ""
