-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

local builtin = require("telescope.builtin")
map("n", "<leader>fw", builtin.live_grep)

map("n", "<tab>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
map("n", "<S-tab>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "<leader>x", LazyVim.ui.bufremove, { desc = "Delete Buffer" })

-- diffview
map("n", "<leader>do", ':lua require("diffview").open()<cr>')
map("n", "<leader>dc", ':lua require("diffview").close()<cr>')
map("n", "<leader>e", "<cmd>Neotree<CR>", { desc = "nvimtree focus window" })
