require("config.lazy")
require("alex")

-- todo, move to colors file (after/plugin/colors.lua?)
-- better readable error messages
vim.api.nvim_set_hl(0, "ErrorMsg", { fg = "#f38ba8", bg = "NONE", bold = true })

