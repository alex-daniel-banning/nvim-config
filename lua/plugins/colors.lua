return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,        -- load immediately
    priority = 1000,     -- load early
    opts = {
      --theme = "wave",
      transparent = false,
      commentStyle = { italic = true },
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      overrides = function(colors)
        return {
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
        }
      end,
    },
    config = function(_, opts)
      require("kanagawa").setup(opts)
      vim.cmd("colorscheme kanagawa")
    end,
  },
}

