return {
  "nvim-telescope/telescope-frecency.nvim",
  -- install any compatible version of 0.9.x
  version = "^0.9.0",
  config = function()
    require("telescope").load_extension "frecency"
  end,
  keys = {
      { '<leader>r', '<cmd>Telescope frecency<cr>', desc = 'Find recent files' },
  }
}
