local keymap = vim.keymap

-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- Increment/Decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Setlect all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit<Return>',       {silent = true})
keymap.set('n', 'ss', ':split<Return><C-w>w',   {silent = true})
keymap.set('n', 'sv', ':vsplit<Return><C-w>w',  {silent = true})
