return {
  { "nvim-tree/nvim-web-devicons", opts = {} },

  -- mini.nvim (icons for nvim)
  { 'echasnovski/mini.nvim', version = '*' },

  {
    "MunifTanjim/nui.nvim",
    lazy = true, -- Optional: Set to true if you want to load it lazily
  },

				{
				'windwp/nvim-autopairs',
				event = "InsertEnter",
				config = true
				-- use opts = {} for passing setup options
				-- this is equivalent to setup({}) function
				}
}
