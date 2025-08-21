return {
    {
        'stevearc/conform.nvim',
        opts = {},

        config = function(_, opts)
            require("conform").setup({
            formatters_by_ft = {
                lua = { "stylua" },
                -- Conform will run multiple formatters sequentially
                go = { "goimports", "gofmt" },
                -- Conform will run multiple formatters sequentially
                python = { "isort", "black" },
                -- You can customize some of the format options for the filetype (:help conform.format)
                rust = { "rustfmt", lsp_format = "fallback" },
                -- Conform will run the first available formatter
                javascript = { "prettierd", "prettier", stop_after_first = true },

                c_cpp = { "clang-format" },
            },
            -- Map to <leader>f in normal mode
            vim.keymap.set("n", "<leader>f", function()
            require("conform").format({ lsp_fallback = true })
            end, { desc = "Format buffer" })    
            })
        end
    }
}