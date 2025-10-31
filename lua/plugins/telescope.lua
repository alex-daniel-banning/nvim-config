return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    cmd = 'Telescope',
    keys = {
      { '<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'Find files' },
      { '<leader>fg', '<cmd>Telescope live_grep<cr>', desc = 'Search text' },
      { '<leader>b', '<cmd>Telescope buffers<cr>', desc = 'Switch buffer' },
      { '<leader>ld', '<cmd>Telescope diagnostics bufnr=0<cr>', desc = 'List diagnostic errors in buffer' },
      { '<leader>lD', '<cmd>Telescope diagnostics<cr>', desc = 'List diagnostic errors project-wide' },
      { '<leader>le', '<cmd>lua vim.diagnostic.open_float()<cr>', desc = 'Go into floating buffer for error at cursor position' }
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

