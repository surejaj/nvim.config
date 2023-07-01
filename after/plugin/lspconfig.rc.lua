local status, nvim_lsp = pcall (require, 'lspconfig')
if (not status) then return end

local on_attach = function (client, bufnr)
end

nvim_lsp.clangd.setup {
}

nvim_lsp.cmake.setup {
}

nvim_lsp.pyright.setup {
}

nvim_lsp.verible.setup {
}
