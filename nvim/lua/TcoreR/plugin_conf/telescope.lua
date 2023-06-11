local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {}) -- files
vim.keymap.set('n', '<leader>fg', builtin.git_files, {}) -- git files
vim.keymap.set('n', '<leader>fr', builtin.live_grep, {}) -- regex
vim.keymap.set('n', '<leader>fb', builtin.buffers, {}) -- buffer
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {}) -- help docs
