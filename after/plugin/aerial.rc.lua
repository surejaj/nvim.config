require('aerial').setup({

  float = {
    -- Controls border appearance. Passed to nvim_open_win
    border = "rounded",

    -- Determines location of floating window
    --   cursor - Opens float on top of the cursor
    --   editor - Opens float centered in the editor
    --   win    - Opens float centered in the window
    relative = "win",

    -- These control the height of the floating window.
    -- They can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
    -- min_height and max_height can be a list of mixed types.
    -- min_height = {8, 0.1} means "the greater of 8 rows or 10% of total"
    max_height = 0.9,
    height = nil,
    min_height = { 8, 0.1 },
  },


  close_on_select = true,

  -- optionally use on_attach to set keymaps when aerial has attached to a buffer
  on_attach = function(bufnr)
    -- Jump forwards/backwards with '{' and '}'
    vim.keymap.set('n', '{', '<cmd>AerialPrev<CR>', {buffer = bufnr})
    vim.keymap.set('n', '}', '<cmd>AerialNext<CR>', {buffer = bufnr})
  end
})
-- You probably also want to set a keymap to toggle aerial
vim.keymap.set('n', '<leader>a', '<cmd>AerialToggle float<CR>')
