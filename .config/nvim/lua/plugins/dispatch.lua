return {
    "tpope/vim-dispatch",
    config = function()
        vim.keymap.set('n', '<leader>mr', ":Focus make run -j 8<CR>:Dispatch<CR>", {})
        vim.keymap.set('n', '<leader>mc', ":Focus make clean; make run -j 10<CR>:Dispatch<CR>", {})
    end
}
