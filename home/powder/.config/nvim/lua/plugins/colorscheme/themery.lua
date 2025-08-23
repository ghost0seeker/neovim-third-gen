return {
   
    {

        "zaldih/themery.nvim",
        lazy = false,
        config = function()
        require("themery").setup({
                themes = {"tokyonight", "oxocarbon", "pastelnight" }, -- Your list of installed colorschemes.
                livePreview = true, -- Apply theme while picking. Default to true.
        })
        end
    },
  
   { "nyoom-engineering/oxocarbon.nvim" },

   { "folke/tokyonight.nvim"},

	{
  		"pauchiner/pastelnight.nvim",
  		lazy = false,
  		priority = 1000,
    		opts = {},
	}
}
