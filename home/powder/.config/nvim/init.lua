require("config.lazy")

vim.keymap.set('n', '<leader>e', '<CMD>Neotree<CR>', { noremap = true, silent = true })

-- Enable auto and smart indentation
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.tabstop = 2

-- Enable line numbers
vim.opt.number = true       -- Show absolute line numbers

-- Telescope
-- Quick file search
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
-- Search through file content
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
-- Browse open buffers
vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>')
-- Search for string under cursor
vim.keymap.set('n', '<leader>fs', '<cmd>Telescope grep_string<cr>')

-- Toggle floating terminal
vim.keymap.set('n', '<C-\\>', '<cmd>ToggleTerm direction=float<cr>')
vim.keymap.set('t', '<C-\\>', '<cmd>ToggleTerm<cr>')

-- Open terminal in a horizontal split at the bottom (VSCode style)
vim.keymap.set('n', '<C-`>', '<cmd>ToggleTerm direction=horizontal<cr>')
vim.keymap.set('t', '<C-`>', '<cmd>ToggleTerm<cr>')

-- Aerial-Code outline
vim.keymap.set('n', '<leader>a', '<cmd>AerialToggle!<CR>')

-- require("config.lazy").setup({
--   {"nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate"}
-- })

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
