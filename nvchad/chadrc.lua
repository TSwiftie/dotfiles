-- Chadrc overrides this file

local M = {}

M.options = {
  nvChad = {
    update_url = "https://github.com/NvChad/NvChad",
    update_branch = "main",
  },
}

M.ui = {
  -- hl = highlights
  hl_add = {},
  hl_override = {},
  changed_themes = {},
  theme_toggle = { "onedark", "one_light" },
  theme = "chadracula", -- default theme
  transparency = false,
}

M.plugins = require "custom.plugins"

-- check core.mappings for table structure
-- M.mappings = require "core.mappings"
M.mappings = require "custom.mappings"

return M
