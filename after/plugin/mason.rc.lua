local status, nvim_lsp = pcall (require, 'lspconfig')
if (not status) then return end

require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup({
    ensure_installed = { 
      "lua_ls",
      "clangd",
      "cmake",
      "pyright",
      "verible"
    }
})
