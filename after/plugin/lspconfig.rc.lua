local status, nvim_lsp = pcall (require, 'lspconfig')
if (not status) then return end

local on_attach = function (client, bufnr)
end

nvim_lsp.sumneko_lua.setup {
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the 'vim' global
        globals = { ' vim' }
      },

      workspace = {
        -- Make the server aware of neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false
      },

      --Do no send telemetry data
      telemetry = {
        enabled = false,
      }
    }
  }
}

nvim_lsp.clangd.setup {
}

nvim_lsp.cmake.setup {
}

nvim_lsp.pyright.setup {
}

nvim_lsp.verible.setup {
}
