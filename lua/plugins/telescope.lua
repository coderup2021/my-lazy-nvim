--local lga_actions = require("telescope-live-grep-args.actions")

return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    {
      "nvim-telescope/telescope-live-grep-args.nvim",
      -- This will not install any breaking changes.
      -- For major updates, this must be adjusted manually.
      version = "^1.0.0",
    },
  },
  config = function()
    require("telescope").load_extension("live_grep_args")
  end,
  -- extensions = {
  --   live_grep_args = {
  --     auto_quoting = true, -- enable/disable auto-quoting
  --     -- define mappings, e.g.
  --     mappings = { -- extend mappings
  --       i = {
  --         ["<C-k>"] = lga_actions.quote_prompt(),
  --         ["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
  --       },
  --     },
  --     -- ... also accepts theme settings, for example:
  --     -- theme = "dropdown", -- use dropdown theme
  --     -- theme = { }, -- use own theme spec
  --     -- layout_config = { mirror=true }, -- mirror preview pane
  --   },
  -- },
  -- opts = {
  --   defaults = {
  --     vimgrep_arguments = {
  --       "rg",
  --       "--color=never",
  --       "--no-heading",
  --       "--line-number",
  --       "--column",
  --       "--smart-case",
  --       "--hidden",
  --       "--glob",
  --       "!{**/.git/*,**/node_modules/*,**/pkg/mod/*,**/yarn.lock,**/.local/*}",
  --     },
  --   },
  -- },
}

-- {$HOME}/.config/nvim/lua/plugins/telescope.lua
