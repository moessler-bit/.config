require('nvim_comment').setup()
--https://github.com/terrortylor/nvim-comment

-- nvim-comment
vim.api.nvim_set_keymap('v', '<leader>c', ':CommentToggle<CR>gv', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>c", vim.cmd.CommentToggle)
