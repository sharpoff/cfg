local lspconfig = require('lspconfig')
vim.opt.completeopt = { "menu" }

local function on_attach()
    vim.keymap.set("n", "K", vim.lsp.buf.hover())
    vim.keymap.set("n", "gd", vim.lsp.buf.definition())
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration())
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action(), opts)
    vim.keymap.set("n", "<leader>rf", vim.lsp.buf.references())
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename())
    vim.keymap.set("n", "<leader>:", vim.diagnostic.open_float())
    vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help())
    vim.keymap.set("n", "[d", vim.diagnostic.goto_next())
    vim.keymap.set("n", "]d", vim.diagnostic.goto_prev())
end

lspconfig.lua_ls.setup{}
lspconfig.clangd.setup {
    on_attach = on_attach,
    cmd = {
        "clangd",
        "--header-insertion=never"
    }
}
lspconfig.rust_analyzer.setup{}
lspconfig.gopls.setup{}
lspconfig.jdtls.setup{}
