local status, ts = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

ts.setup {
  ensure_installed = {
    "c",
    "lua",
    "python",
    "verilog",
    "devicetree",
  },

  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true
  },

  indent = {
    enable = true
  }
}
