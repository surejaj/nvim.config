local status, indent_blankline = pcall (require, 'indent_blankline')
if (not status) then return end

--[[ vim.opt.termguicolors = true
vim.opt.list = true
vim.opt.listchars:append "eol:↴"
]]
require("indent_blankline").setup {
  show_end_of_line = true,
  space_char_blankline = " ",
  show_current_context = true,
  show_current_context_start = true,
}
