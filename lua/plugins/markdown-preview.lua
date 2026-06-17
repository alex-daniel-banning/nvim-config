return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreview", "MarkdownPreviewStop", "MarkdownPreviewToggle" },
  ft = { "markdown" },
  build = function() vim.fn["mkdp#util#install"]() end,
  config = function()
    -- Toggle the browser preview for the current markdown buffer
    vim.keymap.set("n", "<leader>mp", "<cmd>MarkdownPreviewToggle<cr>")
  end,
}
