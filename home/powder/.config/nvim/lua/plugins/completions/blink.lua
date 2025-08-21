return {
        {
        'saghen/blink.cmp',
        version = '1.*',
        -- `main` is untested, please open a PR if you've confirmed it works as expected
        dependencies = { 'L3MON4D3/LuaSnip', version = 'v2.*' },
        opts = {
            keymap = { preset = 'default' },
            appearance = {
            -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
            -- Adjusts spacing to ensure icons are aligned
            nerd_font_variant = 'mono'
            },
            snippets = { preset = 'luasnip' },
            -- ensure you have the `snippets` source (enabled by default)
            sources = {
                default = { 'lsp', 'path', 'snippets', 'buffer' },
            },

            config = function(_, opts)
                local lspconfig = require('lspconfig')
                for server, config in pairs(opts.servers) do
                -- passing config.capabilities to blink.cmp merges with the capabilities in your
                -- `opts[server].capabilities, if you've defined it
                config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
                lspconfig[server].setup(config)
                end
            end
            
        }
    },

	{
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!).
		build = "make install_jsregexp",

		-- vscode like snippets
		dependencies = {
			"rafamadriz/friendly-snippets",
		},
		config = function()
			require("luasnip.loaders.from_vscode").lazy_load()
		end,
	},
}