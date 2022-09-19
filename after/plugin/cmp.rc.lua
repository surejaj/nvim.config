local status, cmp = pcall(require, "cmp")
if (not status) then return end

local lspkind = require 'lspkind'

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ['<C-d>']     = cmp.mapping.scroll_docs(-4),
    ['<C-f>']     = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),

 snippet = {
    expand = function(args)
      require 'snippy'.expand_snippet(args.body)
    end,
  },

  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'snippy' }
  }),

  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol',
      maxwidth = 50,
    })
  }
})

vim.cmd [[
  set completeopt=menu,menuone,noselect
  highlight! default link CmpItemKind CmpItemMenuDefault
]]
