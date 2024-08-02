local opts = { noremap=true, silent=true }

vim.opt.completeopt = { "menu" }

local on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
end

require('lspconfig').clangd.setup {
    on_attach = on_attach,
}

require('lspconfig').lua_ls.setup {
    on_attach = on_attach,
}
