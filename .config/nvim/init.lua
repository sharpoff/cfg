local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')
Plug('morhetz/gruvbox')
Plug('tpope/vim-dispatch')
Plug('junegunn/fzf.vim')
Plug('junegunn/fzf', { ['do'] = function()
  vim.fn['fzf#install']()
end })
vim.call('plug#end')

require("settings")
