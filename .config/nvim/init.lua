local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug("neovim/nvim-lspconfig")
Plug("tpope/vim-fugitive")
Plug("nvim-telescope/telescope.nvim")
Plug("nvim-lua/plenary.nvim")

vim.call('plug#end')

require("settings")
require("mappings")

require("plugins.lsp")
require("plugins.telescope")
