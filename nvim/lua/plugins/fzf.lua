return {
  {
    'junegunn/fzf',
    build = './install --bin',
  },
  {
    'ibhagwan/fzf-lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('fzf-lua').setup {}
    end,
    keys = {
      { '<leader>ff', '<CMD>FzfLua files<CR>', mode = 'n', desc = '[F]ind [F]iles' },
      { '<leader>qf', '<CMD>FzfLua quickfix<CR>', mode = 'n', desc = '[Q]uick[f]ix' },
      { '<leader>fb', '<CMD>FzfLua buffers<CR>', mode = 'n', desc = '[F]ind [B]uffer' },
      { '<leader>fg', '<CMD>FzfLua grep<CR>', mode = 'n', desc = '[F]ile [G]rep' },
      { '<leader>vg', '<CMD>FzfLua grep_visual<CR>', mode = 'n', desc = '[V]isual [G]rep' },
    },
    lazy = false,
  },
}
