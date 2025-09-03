return {
  -- File Explorer
  -- {
  --   "nvim-tree/nvim-tree.lua",
  --   requires = {
  --     { 'nvim-tree/nvim-web-devicons', version = '*' },
  --   },
  --   config = function()
  --     require("nvim-tree").setup()
  --   end,
  -- },

  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself
  },
 -- File search, grep, buffer management
  {
    'nvim-telescope/telescope.nvim', 
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local telescope = require('telescope')
      telescope.setup{
        -- Add live grep, fuzzy find through git files, search through all project files
        defaults = {
          file_ignore_patterns = { "node_modules", ".git" }
        }
      }
    end
  },

  {
      "nvim-telescope/telescope-ui-select.nvim",
      config = function()
        require("telescope").setup({
            extensions = {
                ["ui-select"] = {
                    require("telescope.themes").get_dropdown {
                    }
                }
            }
        })
        require("telescope").load_extension("ui-select")
    end
  },


  {
      "nvim-telescope/telescope-ui-select.nvim",
      config = function()
        require("telescope").setup({
            extensions = {
                ["ui-select"] = {
                    require("telescope.themes").get_dropdown {
                    }
                }
            }
        })
        require("telescope").load_extension("ui-select")
    end
  },

 -- Git change indicators in gutter
  {
    'lewis6991/gitsigns.nvim',
    event = "BufReadPre",
    config = function()
      require('gitsigns').setup {
        signs = {
          add          = { text = '+' },
          change       = { text = '~' },
          delete       = { text = '_' },
          topdelete    = { text = '‾' },
          changedelete = { text = '~' },
        },
      }
    end,
  },

 -- Enhanced motions/searching
	{
    "folke/flash.nvim",
    event = "VeryLazy", -- Load lazily for better startup performance
    config = function()
      require("flash").setup({
        modes = {
          search = { enabled = true }, -- Enables enhanced `/` and `?` motions
          char = { enabled = true },  -- Enhances `f`, `t`, `F`, `T` motions
        },
      })
    end,
	},

 -- Integrated terminal
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup{
        -- Floating terminal that appears/disappears with a keystroke
        float_opts = {
          border = 'curved',
          width = 120,
          height = 30,
        }
      }
    end
  },

 -- Code outline/structure view
  {
    'stevearc/aerial.nvim',
    config = function()
      require('aerial').setup({
        -- Shows code structure, functions, classes, etc.
        layout = {
          default_direction = "prefer_right"
        },
      })
    end
  },
}
