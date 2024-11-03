return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    {
      "<leader>ff",
      "<cmd>Telescope find_files<cr>",
      mode = "n",
      desc = "Telescope [F]ind [F]iles"
    },
    {
      "<leader>fg",
      "<cmd>Telescope live_grep<cr>",
      mode = "n",
      desc = "Telescope [F]ind [G]rep"
    },
    {
      "<leader>fb",
      "<cmd>Telescope buffers<cr>",
      mode = "n",
      desc = "Telescope [F]ind [B]uffers"
    },
    {
      "<leader>fh",
      "<cmd>Telescope help_tags<cr>",
      mode = "n",
      desc = "Telescope [F]ind [H]elp"
    },
  },
  config = function()
    require("telescope").setup({})
  end,
}
