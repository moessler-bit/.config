vim.opt.encoding="utf-8"
vim.opt.nu = true
vim.opt.rnu = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 6

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader= " "

vim.opt.mouse=""


vim.cmd([[
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
]])

vim.o.termguicolors = true
-- vim.cmd('highlight Normal ctermbg=NONE guibg=NONE')
-- vim.cmd('highlight Visual ctermbg=black guibg=#a673b7')
