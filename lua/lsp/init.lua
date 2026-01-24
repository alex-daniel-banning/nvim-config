-- Initialize Mason
require("mason").setup()

-- Install desired servers via Mason
require("mason-lspconfig").setup {
    ensure_installed = { "clangd" },
    automatic_enable = true,  -- auto-start installed servers
}

-- Optional: show diagnostics in a floating window
--vim.api.nvim_create_autocmd("CursorHold", {
--    callback = function()
--        vim.diagnostic.open_float(nil, { focus = false })
--    end,
--})
-- Replace the autocmd with:
vim.diagnostic.config({
    virtual_text = true,  -- Shows diagnostics at end of line
    signs = true,         -- Shows signs in gutter
})
vim.keymap.set('n', '<leader>d', function()
    local _, win_id = vim.diagnostic.open_float(nil, { focus = false })
    if win_id then
        vim.api.nvim_set_current_win(win_id)
    end
end)
