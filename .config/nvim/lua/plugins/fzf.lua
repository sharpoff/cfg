return {
    'junegunn/fzf.vim',
    dependencies = { 'junegunn/fzf' },
    config = function()
        vim.keymap.set('n', '<leader>pf', ":Files<CR>", {})
        vim.keymap.set('n', '<leader>pb', ":Buffers<CR>", {})
        vim.keymap.set('n', '<leader>ps', ":Rg<CR>", {})
        vim.keymap.set('n', '<C-p>', ":GFiles<CR>", {})
        vim.keymap.set('n', '<leader>vh', ":Helptags<CR>", {})
    end
}
