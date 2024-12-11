return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim"
	},
	cmd = "Neotree",
	keys = {
		{ "<leader>st", ":Neotree reveal<cr>", desc = "Neotree reveal", silent = true }
	},
	opts = {
		filesystem = {
			window = {
				mappings = {
					["<leader>st"] = "close_window",
				},
			},
		},
	},
	config = function ()
		require("neo-tree").setup {
			event_handlers = {
				{
					event = "file_open_requested",
					handler = function ()
						require("neo-tree.command").execute({ action = "close" })
					end
				},
			}
		}
	end
}
