local telescope = require('telescope')
local lga_actions = require('telescope-live-grep-args.actions')
local live_grep_args_shortcuts = require("telescope-live-grep-args.shortcuts")


telescope.setup({
    defaults = {
        -- other defaults configuration here
        file_ignore_patterns = {
            "node_modules",
            ".work/.*",
            ".cache/.*",
            ".idea/.*",
            "dist/.*",
            ".git/.*"
        },
        vimgrep_arguments = {
            'rg',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case',
        },
        layout_config = {
            preview_width = 0.6,
            width = 0.9,
            height = 0.7,
            prompt_position = "top",
            -- other layout configuration here
        },
    },
    extensions = {
        live_grep_args = {
            auto_quoting = false,
            mappings = {
                i = {
                    ["<C-k>"] = lga_actions.quote_prompt(),
                    ["<C-h>"] = lga_actions.quote_prompt({ postfix = " --hidden " }),
                    ["<C-g>"] = lga_actions.quote_prompt({ postfix = " --no-ignore " }),
                    ["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
                    ["<C-f>"] = lga_actions.quote_prompt({ postfix = " --files " }),
                }
            }
        }
    },
    -- other configuration values here
})

require('telescope').load_extension('live_grep_args')

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {}) -- files
vim.keymap.set('n', '<leader>fx', function() builtin.find_files(
    {
        prompt_title = 'find hidden files',
        hidden=true,

    }) end, {}) -- files
    vim.keymap.set('n', '<leader>fg', builtin.git_files, {}) -- git files
    vim.keymap.set('n', '<leader>fr', telescope.extensions.live_grep_args.live_grep_args, {}) -- with args for rg (--hidden example)
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {}) -- buffer
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {}) -- help docs
    vim.keymap.set('n', '<leader>fuc', live_grep_args_shortcuts.grep_word_under_cursor, {})
