local telescope = require('telescope')
local lga_actions = require('telescope-live-grep-args.actions')
local live_grep_args_shortcuts = require("telescope-live-grep-args.shortcuts")
-- require("telescope").load_extension("live_grep_args")
-- keymap.set("n", "<leader>gc", )

telescope.setup({
    defaults = {
        layout_config = {
            vertical = { width = 0.5 }
            -- other layout configuration here
        },
        vimgrep_arguments = {
            'rg',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case',
            -- '--hidden'
        },
        -- other defaults configuration here
    },
    -- extensions = {
    --     live_grep_args = {
    --     }
    -- }
    -- other configuration values here
})

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>fff', builtin.find_files, {}) -- files
vim.keymap.set('n', '<leader>ffh', function() builtin.find_files(
    {
        prompt_title = 'find hidden files',
        hidden=true,

    }) end, {}) -- files
vim.keymap.set('n', '<leader>fg', builtin.git_files, {}) -- git files
vim.keymap.set('n', '<leader>frr', builtin.live_grep, {}) -- regex
-- vim.keymap.set('n', '<leader>frh', function() builtin.live_grep(
--     {
--         prompt_title = 'regex find in hidden files',
--         vimgrep_arguments = {
--             '--hidden'
--         },

--     }) end, {}) -- files
vim.keymap.set('n', '<leader>fra', function() telescope.extensions.live_grep_args.live_grep_args() end, {}) -- with args for rg (--hidden example)
vim.keymap.set('n', '<leader>fb', builtin.buffers, {}) -- buffer
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {}) -- help docs
vim.keymap.set('n', '<leader>fuc', live_grep_args_shortcuts.grep_word_under_cursor, {}) -- help docs
