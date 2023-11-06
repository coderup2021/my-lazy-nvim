-- vim.api.nvim_create_augroup("LogSitter", { clear = true })
-- vim.api.nvim_create_autocmd("FileType", {
--   group = "Logsitter",
--   pattern = "javascript,go,lua",
--   callback = function()
--     vim.keymap.set("n", "<localleader>lg", function()
--       require("logsitter").log()
--     end)
--   end,
-- })
return {
  "gaelph/logsitter",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
}
