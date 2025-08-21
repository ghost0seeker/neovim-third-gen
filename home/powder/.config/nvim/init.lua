require("config.lazy")

require("lazy").setup({
  {"nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate"}
})

-- vim.diagnostic.config(
--     {
--         underline = false,
--         virtual_text = {
--             spacing = 2,
--             prefix = "●",
--         },
--         update_in_insert = false,
--         severity_sort = true,
--         signs = {
--             text = {
--                 -- Alas nerdfont icons don't render properly on Medium!
--                 [vim.diagnostic.severity.ERROR] = " ", 
--                 [vim.diagnostic.severity.WARN] = " ",
--                 [vim.diagnostic.severity.HINT] = " ",
--                 [vim.diagnostic.severity.INFO] = " ",
--             },
--         },
--     }
-- )