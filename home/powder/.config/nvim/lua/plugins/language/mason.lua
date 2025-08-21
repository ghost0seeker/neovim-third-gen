return {

    -- {
    --     "mason-org/mason.nvim",
    --     opts = {
    --         ui = {
    --             icons = {
    --                 package_installed = "✓",
    --                 package_pending = "➜",
    --                 package_uninstalled = "✗"
    --             }
    --         },
    --     }
    -- },

    {
        "mason-org/mason-lspconfig.nvim",
        
        opts = {
            ensure_installed = {
                'lua_ls',
                'ts_ls',
                'gopls',
                'clangd',
<<<<<<< HEAD
=======
                'pyright',
>>>>>>> cs50x-lecture-c
            },
        },
        
        dependencies = {
<<<<<<< HEAD
        { "mason-org/mason.nvim", opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            },
        } },
            "neovim/nvim-lspconfig",
=======
            { "mason-org/mason.nvim", opts = {
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                },
            } },
                "neovim/nvim-lspconfig",
>>>>>>> cs50x-lecture-c
        },

        config = function(_, opts)
            require('mason-lspconfig').setup(opts)
            vim.lsp.config('lua_ls', {
                settings = {
                    Lua = {
                        runtime = { version = 'Lua 5.1' },
                        diagnostics = {
                            globals = { 'bit', 'vim', 'it', 'describe', 'before_each', 'after_each' },
                        },
                    },
                },
            })
        end
    }  
}