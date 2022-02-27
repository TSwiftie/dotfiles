local plugins = {}

plugins = {
  {"williamboman/nvim-lsp-installer"},
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    setup = function()
      require("custom.plugins.symbols-outline").setup()
    end,
  },
  -- {
  --   "lukas-reineke/indent-blankline.nvim",
  --   config = function()
  --     require("custom.plugins.indent-blankline").config()
  --   end,
  -- },
  {
    -- Parenthesis highlighting
    "p00f/nvim-ts-rainbow",
    after = "nvim-treesitter",
    setup = function()
        vim.cmd [[hi rainbowcol1 guifg=lightred]]
        vim.cmd [[hi rainbowcol2 guifg=lightorange]]
        vim.cmd [[hi rainbowcol3 guifg=lightyellow]]
        vim.cmd [[hi rainbowcol4 guifg=lightgreen]]
        vim.cmd [[hi rainbowcol5 guifg=lightgrey]]
        vim.cmd [[hi rainbowcol6 guifg=lightblue]]
        vim.cmd [[hi rainbowcol7 guifg=lightgray]]
    end,
  },
  {
    "karb94/neoscroll.nvim",
    opt = true,
    config = function()
      require("neoscroll").setup()
    end,
    -- lazy loading
    setup = function()
      require("core.utils").packer_lazy_load "neoscroll.nvim"
    end,
  },
  {
      "rhysd/accelerated-jk",
      setup = function ()
          vim.cmd [[nmap j <Plug>(accelerated_jk_gj)]]
          vim.cmd [[nmap k <Plug>(accelerated_jk_gk)]]
      end,
  },
  {
      "hrsh7th/vim-eft",
      setup = function ()
        vim.cmd [[nmap ; <Plug>(eft-repeat)]]
        vim.cmd [[xmap ; <Plug>(eft-repeat)]]
        vim.cmd [[nmap f <Plug>(eft-f)]]
        vim.cmd [[xmap f <Plug>(eft-f)]]
        vim.cmd [[omap f <Plug>(eft-f)]]
        vim.cmd [[nmap F <Plug>(eft-F)]]
        vim.cmd [[xmap F <Plug>(eft-F)]]
        vim.cmd [[omap F <Plug>(eft-F)]]
        vim.cmd [[nmap t <Plug>(eft-t)]]
        vim.cmd [[xmap t <Plug>(eft-t)]]
        vim.cmd [[omap t <Plug>(eft-t)]]
        vim.cmd [[nmap T <Plug>(eft-T)]]
        vim.cmd [[xmap T <Plug>(eft-T)]]
        vim.cmd [[omap T <Plug>(eft-T)]]
      end,
  },
  {
      "github/copilot.vim",
  },
}

return plugins
