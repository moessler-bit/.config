local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {}) -- find files
vim.keymap.set('n', '<leader>gf', builtin.git_files, {}) -- git files
vim.keymap.set('n', '<leader>fr', function() -- find regex
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
