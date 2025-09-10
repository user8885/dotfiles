vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set({ "n", "v" }, "gn", ";")
vim.keymap.set({ "n", "v" }, ";", ":")
vim.keymap.set({ "n", "v" }, "!", ":!")

vim.keymap.set("n", "<leader>w", ":write<CR>")
vim.keymap.set("n", "<leader>q", ":quit<CR>")
vim.keymap.set("n", "<leader>o", ":update<CR>:source<CR>")
vim.keymap.set("n", "<leader>x", ":bw<CR>")

vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")

vim.keymap.set("n", "<leader>.", vim.cmd.Ex)
vim.keymap.set("n", "<leader>fe", ":Sex!<CR>")

vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>lS", ":LspStop<CR>")
vim.keymap.set("n", "<leader>ls", ":LspStart<CR>")
vim.keymap.set("n", "<leader>lr", ":LspRestart<CR>")
vim.keymap.set("n", "<leader>li", ":LspInfo<CR>")
vim.keymap.set("n", "<leader>ll", ":LspLogCR>")

vim.keymap.set("i", "((", "()<ESC>i")
vim.keymap.set("i", "{{", "{}<ESC>i")
vim.keymap.set("i", "[[", "[]<ESC>i")
vim.keymap.set("i", "||", "||<ESC>i")
vim.keymap.set("i", "<<", "<><ESC>i")
vim.keymap.set("i", "\"\"", "\"\"<ESC>i")
vim.keymap.set("i", "''", "''<ESC>i")

vim.keymap.set("n", "<leader>czz", ":!zig<Up>")
