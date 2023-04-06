-- vim file tree - xplore
vim.keymap.set("n", "<leader>x", vim.cmd.Ex)

-- for git status
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

-- move selected line up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- indent and deindent selected line
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

-- copy paste to system clipboard
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>p", '"+p')
vim.keymap.set("n", "<leader>p", '"+p')

-- undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- nvim-comment
vim.api.nvim_set_keymap('v', '<leader>c', ':CommentToggle<CR>gv', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>c", vim.cmd.CommentToggle)
