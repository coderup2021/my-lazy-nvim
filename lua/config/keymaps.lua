-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = vim.api.nvim_set_keymap

map("i", "jj", "<esc>", { desc = "esc key" })

map("i", "<tab>", ">>", { desc = "input tab" })
map("n", "<tab>", ">>", { desc = "input tab" })

map("n", "=", "10j", { desc = "move down 10 line", noremap = true })
map("n", "-", "10k", { desc = "move up 10 line", noremap = true })
map("n", "<leader>l", "$", { desc = "move to tail" })
map("n", "<leader>h", "^", { desc = "move to head" })
map("n", "<leader>r", ":source ~/.config/nvim/init.lua<cr>", { desc = "reload lua config" })

--unbind Move Lines key
map("n", "<A-j>", "", { desc = "cancel move down" })
map("n", "<A-k>", "", { desc = "cancel move up" })
map("i", "<A-j>", "", { desc = "cancel move down" })
map("i", "<A-k>", "", { desc = "cancel move up" })
map("v", "<A-k>", "", { desc = "cancel move up" })
map("v", "<A-j>", "", { desc = "cancel move down" })
map(
  "n",
  "<leader>/",
  ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
  { desc = "search with args" }
)

vim.keymap.set("n", "<leader>o", require("telescope.builtin").oldfiles, { desc = "search old files" })
vim.keymap.set("n", "<leader><space>", require("telescope.builtin").grep_string, { desc = "search current word" })
vim.keymap.set("n", "<leader>sh", require("telescope.builtin").help_tags, { desc = "search help" })
vim.keymap.set("n", "<leader>st", require("telescope.builtin").tags, { desc = "search tags" })
vim.keymap.set("n", "<leader>sd", require("telescope.builtin").diagnostics, { desc = "search diagnostics" })
vim.keymap.set("n", "<leader>s<space>", require("telescope.builtin").search_history, { desc = "search history" })

vim.keymap.set("n", "<leader>a", function()
  require("logsitter").log()
end, { desc = "quick debug, printf current var" })
