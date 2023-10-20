local luasnip = require("luasnip")
local cmp = require('cmp')
local lspkind = require("lspkind")

cmp.setup({
      completion = {
        completeopt = "menu,menuone,preview,noselect",
      },
      snippet = { -- configure how nvim-cmp interacts with snippet engine
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      window = {
          documentation = cmp.config.window.bordered({
            -- winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,CursorLine:PmenuSel,Search:None",
            winhighlight = "Normal:TelescopePreviewBorder,FloatBorder:TelescopePreviewBorder,CursorLine:PmenuSel,Search:None"
          })
      },
      mapping = cmp.mapping.preset.insert({
        ["<A-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
        ["<A-j>"] = cmp.mapping.select_next_item(), -- next suggestion
        -- ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
        -- ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
        ["<C-e>"] = cmp.mapping.abort(), -- close completion window
        ["<CR>"] = cmp.mapping.confirm({ select = false }),
      }),

      -- sources for autocompletion
      sources = cmp.config.sources({
        { name = "nvim_lsp", max_item_count = 4 },
        { name = "luasnip", max_item_count = 4  }, -- snippets
        { name = "buffer", max_item_count = 4 }, -- text within current buffer
        { name = "path", max_item_count = 4 }, -- file  system paths
      }),
      -- configure lspkind for vs-code like pictograms in completion menu
      formatting = {
								format = lspkind.cmp_format({
												-- maxwidth = 50,
												mode = 'symbol', -- show only symbol annotations
												maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
												ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)

												-- The function below will be called before any actual modifications from lspkind
												-- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
												before = function (entry, vim_item)
																return vim_item
												end         -- ellipsis_char = "...",
        }),
      },
})
