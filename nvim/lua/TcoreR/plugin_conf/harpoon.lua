local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file) -- adds file to harpoon --add
vim.keymap.set("n", "<leader>e", ui.toggle_quick_menu) -- lists files in harpoon --explore

vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end) -- use first file
vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end) -- use second file
vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end) -- use third file
vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end) -- use fourth file
