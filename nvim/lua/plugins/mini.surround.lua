return {
  "echasnovski/mini.surround",
  version = "*",
  opts = {
    mappings = {
      add = "gsa",
      delete = "gsd",
      find = "gsf",
      find_left = "gsF",
      highlight = "gsh",
      replace = "gsr",
      update_n_lines = "gsn",
    }
  },
  config = function(_, opts)
    require("mini.surround").setup(opts)
  end,
}
