-- local lsp = require('lsp-zero').preset({})

-- lsp.on_attach(function(client, bufnr)
--   lsp.default_keymaps({buffer = bufnr})
-- end)

-- lsp.setup()

-- -- You need to setup `cmp` after lsp-zero
-- local cmp = require('cmp')
-- local cmp_action = require('lsp-zero').cmp_action()

-- cmp.setup({
--     mapping = {
--         ['<C-p>'] = cmp.mapping.select_prev_item(),
--         ['<C-n>'] = cmp.mapping.select_next_item(),
--         ['<C-u>'] = cmp.mapping.scroll_docs(-4),
--         ['<C-d>'] = cmp.mapping.scroll_docs(4),
--         ['<C-Space>'] = cmp.mapping.complete(),
--         ['<C-e>'] = cmp.mapping.close(),
--         ['<CR>'] = cmp.mapping.confirm({
--             behavior = cmp.ConfirmBehavior.Replace,
--             select = true,
--         }),
-- }})
local lsp = require('lsp-zero').preset({})
local cmp = require('cmp')

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})

  vim.keymap.set('n', 'gr', '<cmd>Telescope lsp_references<cr>', {buffer = true})
  vim.keymap.set('i', '<C-p>', cmp.mapping.select_prev_item())
  vim.keymap.set('i', '<C-n>', cmp.mapping.select_next_item())
  vim.keymap.set('i', '<C-u>', cmp.mapping.scroll_docs(-4))
  vim.keymap.set('i', '<C-d>', cmp.mapping.scroll_docs(4))
  vim.keymap.set('i', '<C-Space>', cmp.mapping.complete())
  vim.keymap.set('i', '<C-e>', cmp.mapping.close())
  vim.keymap.set('i', '<CR>', cmp.mapping.confirm({
      -- behaviour = cmp.ConfirmBehavior.Replace,
      select = true,
  }))
end)

lsp.setup()
