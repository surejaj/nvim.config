local status, neoformat = pcall(require, 'neoformat')
if (not status) then return end

vim.g.neoformat_enabled_cpp = 'clangformat'
vim.g.neoformat_enabled_c = 'clangformat'

vim.g.neoformat_cpp_clangformat = {
  exe = 'clang-format'
}
