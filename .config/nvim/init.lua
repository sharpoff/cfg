local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')
Plug('morhetz/gruvbox')
Plug('neovim/nvim-lspconfig')
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-nvim-lsp')
vim.call('plug#end')

require("settings")
require("mappings")
require("lsp")
