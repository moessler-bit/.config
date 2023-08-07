local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {

    -- https://github.com/nvim-treesitter/nvim-treesitter
    -- enable auto install tipp: :TSConfigInfo
    'nvim-treesitter/nvim-treesitter',
    -- https://github.com/tpope/vim-commentary
    'tpope/vim-commentary',
    'mbbill/undotree',

    -- navigation
    'theprimeagen/harpoon',
    -- 'nvim-tree/nvim-tree.lua',

    -- theme
    'rose-pine/neovim',
    'nvim-lualine/lualine.nvim',

    -- git
    -- https://github.com/tpope/vim-fugitive
    'tpope/vim-fugitive',

    {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {
        'williamboman/mason.nvim',
        build = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'},
    }
  },

    -- code styling
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        dependencies = {
            {'nvim-lua/plenary.nvim'}
        }
    }
}

local opts = {}

require("lazy").setup(plugins, opts)
-- export
local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)
