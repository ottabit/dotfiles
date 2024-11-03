local map = vim.keymap.set

-- Redo
map("n", "U", "<cmd>redo<cr>", { desc = "Redo" })
-- Remove Search Highlight
map("n", "<esc><esc>", "<cmd>nohl<cr>", { desc = "Remove Search Highlight"})
