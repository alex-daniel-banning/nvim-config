vim.lsp.config("glslls", {
    cmd = { vim.fn.stdpath("data") .. "/mason/bin/glslls" },
    filetypes = { "glsl", "vert", "frag", "geom" },
    root_dir = vim.loop.cwd,
    settings = {
        glsl = {
            defines = {},
            version = "330",
            target = "opengl",
        },
    },
})

