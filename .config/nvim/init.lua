local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')
Plug('morhetz/gruvbox')
Plug('neovim/nvim-lspconfig')
vim.call('plug#end')

require("settings")
require("mappings")
require("lsp")
