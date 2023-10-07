vim.g.mapleader =  " " -- remapping the leader key to space
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- args: (mode, keypress, command) 

-- move cursor to center on scrolling
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- navigate tabs
vim.keymap.set("n", "<leader>l", vim.cmd.tabn)
vim.keymap.set("n", "<leader>h", vim.cmd.tabp)
vim.keymap.set("n", "<leader>tc", vim.cmd.tabc)
