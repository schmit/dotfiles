return {
    "folke/tokyonight.nvim",
    lazy = false, -- load during startup since it's the main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- Configure and load the colorscheme here
      require("tokyonight").setup({
        style = "night",
      })
      vim.cmd([[colorscheme tokyonight]])
    end,
  }
