-- Initialize Mason
require("mason").setup()

-- Install desired servers via Mason
require("mason-lspconfig").setup {
    ensure_installed = { "clangd" },
    automatic_enable = true,  -- auto-start installed servers
}

-- Optional: show diagnostics in a floating window
vim.api.nvim_create_autocmd("CursorHold", {
    callback = function()
        vim.diagnostic.open_float(nil, { focus = false })
    end,
})
