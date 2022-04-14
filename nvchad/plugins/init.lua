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
  {"github/copilot.vim",},
  {"stevearc/dressing.nvim"},
  {"kevinhwang91/nvim-bqf"},
  {"mattn/emmet-vim"},
  {"junegunn/fzf"},
  {"junegunn/fzf.vim"},
  {
      'ojroques/nvim-lspfuzzy',
      requires = {
          {'junegunn/fzf'},
          {'junegunn/fzf.vim'},  -- to enable preview (optional)
      },
      setup = function()
          --require("custom.plugins.nvim-lspfuzzy").setup()
          require('lspfuzzy').setup {
              methods = 'all',         -- either 'all' or a list of LSP methods (see below)
              jump_one = true,         -- jump immediately if there is only one location
              save_last = false,       -- save last location results for the :LspFuzzyLast command
              callback = nil,          -- callback called after jumping to a location
              fzf_preview = {          -- arguments to the FZF '--preview-window' option
                'right:+{2}-/2'          -- preview on the right and centered on entry
              },
              fzf_action = {               -- FZF actions
                ['ctrl-t'] = 'tab split',  -- go to location in a new tab
                ['ctrl-v'] = 'vsplit',     -- go to location in a vertical split
                ['ctrl-x'] = 'split',      -- go to location in a horizontal split
              },
              fzf_modifier = ':~:.',   -- format FZF entries, see |filename-modifiers|
              fzf_trim = true,         -- trim FZF entries
            }
      end,
  },
}

return plugins
