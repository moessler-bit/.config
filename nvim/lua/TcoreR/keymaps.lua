-- vim file tree - xplore
vim.keymap.set("n", "<leader>x", vim.cmd.Ex)

-- move selected line up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- indent and deindent selected line
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

-- copy paste to system clipboard
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>y", '"+y') -- following action required
vim.keymap.set("v", "<leader>p", '"+p')
vim.keymap.set("n", "<leader>p", '"+p')

-- Better window navigation -- option key -> M
vim.keymap.set('n', '<M-h>', '<C-w>h')
vim.keymap.set('n', '<M-j>', '<C-w>j')
vim.keymap.set('n', '<M-k>', '<C-w>k')
vim.keymap.set('n', '<M-l>', '<C-w>l')
vim.keymap.set('n', '<M-,>', '<C-w>>')
vim.keymap.set('n', '<M-.>', '<C-w><')
vim.keymap.set('n', '<M-]>', '<C-w>-')
vim.keymap.set('n', '<M-\\>', '<C-w>+')

vim.keymap.set('n', 'n', 'nzz')
vim.keymap.set('n', 'N', 'Nzz')
