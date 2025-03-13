local keymap = vim.keymap

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

keymap.set('n', '<leader>pv', vim.cmd.Ex)               -- thanks primeagen
keymap.set("n", "<space><space>x", "<cmd>source %<CR>") -- execute all
keymap.set("n", "<space>x", ":.lua<CR>")                -- execute current line
keymap.set("v", "<space>x", ":.lua<CR>")                -- execute selected lines
