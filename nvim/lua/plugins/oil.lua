return {
  "stevearc/oil.nvim",
  lazy = false,
  cmd = {"Oil"},
  event = { "VimEnter */*,.*", "BufNew */*,.*" },
  opts = {
    default_file_explorer = true,
    view_options = {
      show_hidden = true
    },
  },
  dependencies = {{"echasnovski/mini.icons", opts = {}}},
  keys = {
    {
      "<leader>e",
      "<CMD>Oil --float<CR>",
      mode = "n",
      desc = "Open Oil"
    }
  },
  config = function()
    require("oil").setup({
      default_file_explorer = true,
      columns = {
        "icon",
        "permissions",
        "size",
        "mtime"
      },
      buf_options = {
        buflisted = false,
        bufhidden = "hide",
      },
      win_options = {
        wrap = false,
        signcolumn = "no",
        cursorcolumn = false,
        foldcolumn = "0",
        spell = false,
        list = false,
        conceallevel = 3,
        concealcursor = "nvic",
      },
      keymaps = {
        ["q"] = "actions.close",
      },
      view_options = {
        show_hidden = true,
      },
      sort = {
        {"type", "asc"},
        {"name", "asc"}
      }
    })
  end,
}
