return {
    "neovim/nvim-lspconfig",
    dependencies = {
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        local opts = { noremap=true, silent=true }
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        local lspconfig = require('lspconfig')
        local cmp = require('cmp')

        vim.opt.completeopt = { "menu" }

        local on_attach = function(client, bufnr)
            vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end)
            vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end)
            vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end)
            vim.keymap.set("n", "<leader>rf", function() vim.lsp.buf.references() end)
            vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end)
            vim.keymap.set("n", "<leader>hh", function() vim.lsp.buf.signature_help() end)
            vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end)
            vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end)
        end

        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "clangd",
                "gopls",
                "rust_analyzer",
                "lua_ls",
                "jdtls",
            },
            handlers = {
                function(server_name) -- default handler (optional)
                    require("lspconfig")[server_name].setup {
                        capabilities = capabilities,
                        on_attach = on_attach
                    }
                end,
                clangd = function()
                    lspconfig.clangd.setup {
                        on_attach = on_attach,
                        capabilities = capabilities,
                        cmd = {
                            "clangd",
                            "--header-insertion=never"
                        }
                    }
                end,
                lua_ls = function()
                    lspconfig.lua_ls.setup {
                        capabilities = capabilities,
                        settings = {
                            Lua = {
                                diagnostics = {
                                    globals = { "vim" },
                                }
                            }
                        }
                    }
                end,
            },
        })

        local cmp_select = { behavior = cmp.SelectBehavior.Select }

        -- completion setup
        cmp.setup({
            snippet = {
                expand = function(args)
                    vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
                ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
                ['<C-e>'] = cmp.mapping.confirm({ select = true }),
                ["<C-Space>"] = cmp.mapping.complete(),
            }),
            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
            }, {
                { name = 'buffer' },
            }),
        })

        vim.diagnostic.config({
            -- update_in_insert = true,
            float = {
                focusable = false,
                style = "minimal",
                border = "rounded",
                source = "always",
                header = "",
                prefix = "",
            },
        })
    end
}
