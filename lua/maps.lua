local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- Increment/Decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Setlect all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit<Return>',       opts)
keymap.set('n', 'ss', ':split<Return><C-w>w',   opts)
keymap.set('n', 'sv', ':vsplit<Return><C-w>w',  opts)

-- lsp keymaps
keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>',          opts)
keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>',         opts)
keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>',                opts)
keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>',          opts)
keymap.set('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>',   opts)

