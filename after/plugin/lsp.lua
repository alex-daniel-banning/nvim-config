vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local bufnr = args.buf
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        local opts = { buffer = bufnr, silent = true }

        -- Basic, common LSP mappings
        vim.keymap.set("n", "gd", function()
            vim.lsp.buf.definition()
            vim.defer_fn(function()
                vim.cmd("normal! zt")
            end, 100)
        end, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
        -- Show signature help while in insert mode (when typing function args)
        vim.keymap.set("i", "<C-k>", vim.lsp.buf.signature_help, opts)

        -- Or in normal mode if you want
        vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)

        -- Optional: only if supported
        if client.supports_method("textDocument/formatting") then
            vim.keymap.set("n", "<leader>f", function()
                vim.lsp.buf.format { async = true }
            end, opts)
        end
    end,
})
