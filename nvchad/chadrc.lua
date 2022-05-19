local M = {}

local override = require "custom.plugins.override"
local userPlugins = require "custom.plugins"

M.options = {
  user = function()
    vim.opt.tabstop = 2
    vim.opt.termguicolors = true
    vim.opt.list = true
    vim.opt.listchars:append("space:⋅")
    vim.opt.listchars:append("eol:↴")
  end,
}

M.plugins = {

   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
      },

      statusline = {
         separator_style = "round",
      },
   },

   override = {
      ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
      ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
      ["nvim-telescope/telescope.nvim"] = override.telescope,
   },

   user = userPlugins,
}

M.ui = {
   theme = "catppuccin",
}

M.mappings = require "custom.mappings"

return M
