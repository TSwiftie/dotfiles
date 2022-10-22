-- lua/custom/mappings 
local M = {}

-- add this table only when you want to disable default keys
-- M.disabled = {
--   n = {
--       ["<leader>h"] = "",
--       ["<C-s>"] = ""
--   }
-- }

M.lspsaga = {
  n = {
    ["gh"] = {"<cmd>Lspsaga lsp_finder<CR>", opts = { silent = true } },
    ["<leader>ca"] = {"<cmd>Lspsaga code_action<CR>", opts = { silent = true } },
    ["gr"] = {"<cmd>Lspsaga rename<CR>", opts = { silent = true } },
    ["gd"] = {"<cmd>Lspsaga peek_definition<CR>", opts = { silent = true } },
    ["<leader>cd"] = {"<cmd>Lspsaga show_cursor_diagnostics<CR>", opts = { silent = true } },
    ["[e"] = {"<cmd>Lspsaga diagnostic_jump_prev<CR>", opts = { silent = true } },
    ["]e"] = {"<cmd>Lspsaga diagnostic_jump_next<CR>", opts = { silent = true } },
    ["[E"] = {
      function()
        require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
      end,
      opts = { silent = true }
    },

    ["]E"] = {
      function()
        require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
      end,
      opts = { silent = true }
    },

    ["K"] = {"<cmd>Lspsaga hover_doc<CR>", opts = { silent = true } },
    ["<leader>o"] = {"<cmd>LSoutlineToggle<CR>", opts = { silent = true } },
  },

  v = {
    ["<leader>ca"] = {"<cmd>Lspsaga code_action<CR>", opts = { silent = true } },
  }
}
return M
