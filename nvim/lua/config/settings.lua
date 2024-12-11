local g = vim.g
local o = vim.opt

-- Leader Key
g.mapleader = " "
g.maplocalleader = "\\"

g.have_nerd_font = true

-- Settings
o.number = true
o.relativenumber = true
o.showmode = false
o.clipboard = "unnamedplus"
o.breakindent = ture
o.undofile = true
o.ignorecase = true
o.smartcase = true
o.signcolumn = "yes"
o.updatetime = 250
o.timeoutlen = 300
o.splitbelow = true
o.splitright = true
o.list = true
o.listchars = { tab = "  ", trail = "·", nbsp = "_" }
o.inccommand = "split"
o.cursorline = true
o.scrolloff = 10
o.shiftwidth = 2
o.tabstop = 2

vim.api.nvim_create_autocmd("BufWritePre", {
	buffer = buffer,
	callback = function()
		vim.lsp.buf.format({ async = false })
	end,
})
