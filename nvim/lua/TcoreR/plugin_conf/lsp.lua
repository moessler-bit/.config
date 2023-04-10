local lsp = require("lsp-zero")

lsp.preset('recommended')

lsp.ensure_installed({
	'phpactor',
	'rust_analyzer',
	'clangd',
	'pylsp'
})

lsp.on_attach(function(client, bufnr)
	local opts = {buffer = bufnr, remap = false}
	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts) -- goto definition
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts) -- get help
	vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts) -- complete window
end)

lsp.setup()
