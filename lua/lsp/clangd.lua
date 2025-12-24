vim.lsp.config("clangd", {
    cmd = { "clangd", "--clang-tidy" },  -- Mason-managed or system binary
    filetypes = { "c", "cpp", "objc", "objcpp" },
    root_dir = vim.loop.cwd, -- default root detection
})

