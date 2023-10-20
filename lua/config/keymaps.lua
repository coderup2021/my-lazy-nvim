-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = vim.api.nvim_set_keymap

map("i", "jj", "<esc>", { desc = "esc key" })

map("i", "<tab>", ">>", { desc = "input tab" })
map("n", "<tab>", ">>", { desc = "input tab" })

--map("n", "-", "N", { desc = "backward search", noremap = true })
--map("n", "=", "n", { desc = "backward search", noremap = true })

map("n", "=", "10j", { desc = "move down 10 line", noremap = true })
map("n", "-", "10k", { desc = "move up 10 line", noremap = true })

map("n", "<C-p>", "<leader>ff", { desc = "search file" })
map("n", "<C-.>", "<leader>ca", { desc = "code action" })
map("n", "<leader>p", "<leader>fb", { desc = "search buffer file" })

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
