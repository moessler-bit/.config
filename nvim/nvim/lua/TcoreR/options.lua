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

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 6

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader= " "

-- disable scroll
local function disable_mouse_scroll()
  local scroll_events = {
    "<ScrollWheelUp>",
    "<S-ScrollWheelUp>",
    "<C-ScrollWheelUp>",
    "<ScrollWheelDown>",
    "<S-ScrollWheelDown>",
    "<C-ScrollWheelDown>",
  }

  for _, event in ipairs(scroll_events) do
    vim.api.nvim_set_keymap("n", event, "<nop>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("i", event, "<nop>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("v", event, "<nop>", {noremap = true, silent = true})
  end
end

disable_mouse_scroll()

local function disable_mouse_clicks()
  local modes = {'n', 'v', 'i'}
  local buttons = {'<LeftMouse>', '<MiddleMouse>', '<RightMouse>'}

  for _, mode in ipairs(modes) do
    for _, button in ipairs(buttons) do
      vim.api.nvim_set_keymap(mode, button, '<nop>', {noremap = true})
    end
  end
end

disable_mouse_clicks()
