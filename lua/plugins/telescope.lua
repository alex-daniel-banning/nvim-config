return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    cmd = 'Telescope',
    keys = {
      { '<leader><leader>', '<cmd>Telescope find_files<cr>', desc = 'Find files' },
      { '<leader>/', '<cmd>Telescope live_grep<cr>', desc = 'Search text' },
    },
    config = function()
      require('telescope').setup({
        defaults = {
          layout_strategy = 'horizontal',
          sorting_strategy = 'ascending',
          layout_config = { prompt_position = 'top' },
        },
      })
    end,
  },
}

