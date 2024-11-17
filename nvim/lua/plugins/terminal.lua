return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = function()
      require('toggleterm').setup {}
    end,
    keys = {
      { '<C-t>', '<CMD>ToggleTerm<CR>', mode = 'n', desc = '[T]oggle Term' },
    },
  },
}
