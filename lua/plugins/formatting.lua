return {
  "nvimtools/none-ls.nvim",
  dependencies = { "williamboman/mason.nvim" },
  config = function()
    local null_ls = require("null-ls")
    -- Create an augroup once
    local lsp_formatting_group = vim.api.nvim_create_augroup("LspFormatting", { clear = true })

    null_ls.setup({
      sources = {
        -- Enable clang-format
        null_ls.builtins.formatting.clang_format,
        -- You can add others like:
        -- null_ls.builtins.diagnostics.clang_check,
      },
      on_attach = function(client, bufnr)
          if client.supports_method("textDocument/formatting") then
            -- Auto format on save
            vim.api.nvim_clear_autocmds({ group = lsp_formatting_group, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
              group = lsp_formatting_group,
              buffer = bufnr,
              callback = function()
                vim.lsp.buf.format({ bufnr = bufnr })
              end,
            })
          end
      end,
    })

  end,
}

