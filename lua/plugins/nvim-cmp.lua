    return {
      -- nvim-cmp setup
      {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
          "hrsh7th/cmp-buffer",
          "hrsh7th/cmp-path",
          "hrsh7th/cmp-nvim-lsp",
          -- Add other sources like cmp-vsnip or luasnip if desired
        },
        config = function()
          local cmp = require("cmp")
          cmp.setup({
            mapping = cmp.mapping.preset.insert({
              ["<C-Space>"] = cmp.mapping.complete(),
              ["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
              ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
              ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept selected item
            }),
            sources = cmp.config.sources({
              { name = "nvim_lsp" },
              { name = "buffer" },
              { name = "path" },
              -- Add other sources here
            }),
            window = {
              completion = cmp.config.window.bordered(),
              documentation = cmp.config.window.bordered(),
            },
          })
        end,
      },
      -- lazydev.nvim for LuaLS integration (optional)
      {
        "folke/lazydev.nvim",
        ft = "lua", -- Load only for Lua files
        opts = {
          -- Configuration options for lazydev
        },
      },
    }
