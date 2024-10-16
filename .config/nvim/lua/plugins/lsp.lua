local lspconfig = require('lspconfig')
vim.opt.completeopt = { "menu" }

local on_attach = function(client, bufnr)
    vim.keymap.set("n", "K", vim.lsp.buf.hover)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition)
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
    vim.keymap.set("n", "<leader>rf", vim.lsp.buf.references)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
    vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)
    vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help)
    vim.keymap.set("n", "[d", vim.diagnostic.goto_next)
    vim.keymap.set("n", "]d", vim.diagnostic.goto_prev)
end

lspconfig.lua_ls.setup{}
lspconfig.clangd.setup {
    on_attach = on_attach,
    cmd = {
        "clangd",
        "--header-insertion=never"
    }
}
require'lspconfig'.rust_analyzer.setup{
    on_attach = on_attach,
    settings = {
        ['rust-analyzer'] = {
            diagnostics = {
                enable = false;
            }
        }
    }
}

lspconfig.gopls.setup{}
lspconfig.jdtls.setup{}
lspconfig.pylsp.setup{}
