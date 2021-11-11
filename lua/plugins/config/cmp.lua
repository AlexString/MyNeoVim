local cmp = require'cmp'
local lspkind = require('lspkind')
cmp.setup {
   -- As currently, i am not using any snippet manager, thus disabled it.
      -- snippet = {
         --   expand = function(args)
            --     require("luasnip").lsp_expand(args.body)
            --   end,
         -- },
      formatting = {
         format = lspkind.cmp_format {
            with_text = true,
            menu = {
               buffer   = "[buf]",
               nvim_lsp = "[LSP]",
               path     = "[path]",
            },
         },
      },
      sources = {
         { name = "nvim_lsp"},
         { name = "path" },
         { name = "buffer" , keyword_length = 5},
      },
      
      experimental = {
         ghost_text = true
      }
}
