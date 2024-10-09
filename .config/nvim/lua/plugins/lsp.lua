return {
    "neovim/nvim-lspconfig",
    dependencies = {
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
        "williamboman/mason.nvim",
    },
    config = function()
        local opts = { noremap=true, silent=true }
        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        local lspconfig = require('lspconfig')
        local cmp = require('cmp')
        vim.opt.completeopt = { "menu" }

        local on_attach = function(client, bufnr)
            vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
            vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
            vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
        end

        -- default setup for all servers
        local servers = {'lua_ls', 'cmake', 'gopls', "jdtls", "rust_analyzer"}
        for _, lsp in ipairs(servers) do
            lspconfig[lsp].setup {
                on_attach = on_attach,
                capabilities = capabilities
            }
        end

        -- clangd setup
        lspconfig.clangd.setup {
            on_attach = on_attach,
            capabilities = capabilities,
            cmd = {
                "clangd",
                "--header-insertion=never"
            }
        }

        require("mason").setup()

        -- completion setup
        cmp.setup({
            snippet = {
                expand = function(args)
                    vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                ['<C-y>'] = cmp.mapping.abort(),
                ['<C-e>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
            }),
            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
            }, {
                { name = 'buffer' },
            }),
            formatting = {
                -- formating source: https://github.com/hrsh7th/nvim-cmp/discussions/609#discussioncomment-5727678
                fields = { "abbr", "menu", "kind" },
                format = function(entry, item)
                    local menu_icon = {
                        nvim_lsp = "NLSP",
                        nvim_lua = "NLUA",
                        luasnip  = "LSNP",
                        buffer   = "BUFF",
                        path     = "PATH",
                    }
                    item.menu = menu_icon[entry.source.name]

                    --fixed_width = 40

                    fixed_width = fixed_width or false

                    local content = item.abbr

                    if fixed_width then
                        vim.o.pumwidth = fixed_width
                    end

                    local win_width = vim.api.nvim_win_get_width(0)

                    local max_content_width = fixed_width and fixed_width - 10 or math.floor(win_width * 0.2)

                    if #content > max_content_width then
                        item.abbr = vim.fn.strcharpart(content, 0, max_content_width - 3) .. "..."
                    else
                        item.abbr = content .. (" "):rep(max_content_width - #content)
                    end
                    return item
                end,
            },
        })
    end
}
