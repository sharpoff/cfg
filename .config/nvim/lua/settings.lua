vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.signcolumn = "yes"

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

vim.opt.scrolloff = 8
vim.opt.colorcolumn = "100"

vim.opt.guicursor = ""

vim.opt.pumheight = 10

-- monochrome colors
-- vim.cmd([[set bg=dark]])
-- vim.cmd([[colorscheme quiet]])
-- vim.cmd([[highlight Keyword gui=bold]])
-- vim.cmd([[highlight Comment gui=italic]])
-- vim.cmd([[highlight Constant guifg=#999999]])
-- vim.cmd([[highlight NormalFloat guibg=#333333]])
