
-- configuring keybindings for telescope
--
-- -f stands for file/ fuzzy
-- a: all, g: git, s: search
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>sf', builtin.find_files, {}) -- shows all files
vim.keymap.set('n', '<leader>sa', builtin.git_files, {}) -- shows only git files
vim.keymap.set('n', '<leader>sg', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") }) -- searches all files which contain the grep pattern
end)
