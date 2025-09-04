vim.g.mapleader = " "

vim.keymap.set("n", ";", ":")
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("n", "!", ":!")

vim.keymap.set("n", "<leader>w", ":write<CR>")
vim.keymap.set("n", "<leader>q", ":quit<CR>")
vim.keymap.set("n", "<leader>o", ":update<CR> :source<CR>")
vim.keymap.set("n", "<leader>x", ":bw<CR>")

vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")

vim.keymap.set("n", "<leader>.", vim.cmd.Ex)
vim.keymap.set("n", "<leader>p.", ":Sex!<CR>")

vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format)
