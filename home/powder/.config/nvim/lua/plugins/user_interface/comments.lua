return {
  -- Better Comments
  {
    "Djancyp/better-comments.nvim",
    config = function()
      require('better-comment').Setup({
        tags = {
          { name = "TODO", fg = "white", bg = "#0a7aca", bold = true },
          { name = "FIX", fg = "white", bg = "#f44747", bold = true },
          { name = "WARNING", fg = "#FFA500", bg = "", bold = false },
          { name = "!", fg = "#f44747", bg = "", bold = true },
          { name = "##", fg = "#D3D3D3", bg = "", bold = false },
        }
      })
    end,
  },

-- Comment plugin
  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
  },
}