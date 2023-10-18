local cmp = require("cmp")

-- Global setup.

--   window = {
--     completion = cmp.config.window.bordered(),
--     documentation = cmp.config.window.bordered(),
--   },
-- })

return {
  "hrsh7th/nvim-cmp",
  opts = {
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
  },
}
