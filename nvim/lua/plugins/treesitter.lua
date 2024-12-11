return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	main = "nvim-treesitter.configs",
	opts = {
		ensure_installed = {
			"lua",
			"diff",
			"bash",
			"vimdoc",
		},
		auto_install = false,
		highligh = {
			enable = true,
		},
		indent = { enable = true },
	}
}
