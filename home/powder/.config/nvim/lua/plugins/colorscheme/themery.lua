return {
   
    {

        "zaldih/themery.nvim",
        lazy = false,
        config = function()
        require("themery").setup({
                themes = {"tokyonight", "oxocarbon"}, -- Your list of installed colorschemes.
                livePreview = true, -- Apply theme while picking. Default to true.
        })
        end
    },
  
   { "nyoom-engineering/oxocarbon.nvim" },

   { "folke/tokyonight.nvim"},

}