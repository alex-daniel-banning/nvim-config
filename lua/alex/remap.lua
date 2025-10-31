vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- vim.keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Project-wide navigation (Quicklist)
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- File/Window specific navigation (Location list)
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/g<Left><Left>]])

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- for fun. Need to install plugin before using
vim.keymap.set("n", "<leader>ca", function()
    require("cellular-automaton").start_animation("make_it_rain")
end)

-- in your keymaps.lua or telescope.lua
-- vim.keymap.set('n', '<C-Tab>', ':bnext<CR>', { silent = true, desc = 'Next buffer' })
-- vim.keymap.set('n', '<C-S-Tab>', ':bprevious<CR>', { silent = true, desc = 'Previous buffer' })


-- Indent selected lines
vim.keymap.set("v", "<Tab>", ">gv", { desc = "Indent selection" })

-- Unindent selected lines
vim.keymap.set("v", "<S-Tab>", "<gv", { desc = "Unindent selection" })

