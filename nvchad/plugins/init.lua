return {
  ["simrat39/symbols-outline.nvim"] = {
    cmd = "SymbolsOutline",
    setup = function()
      require("custom.plugins.symbols-outline").setup()
    end,
  },

  ["p00f/nvim-ts-rainbow"] = {
    -- Parenthesis highlighting
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

  ["luukvbaal/stabilize.nvim"] = {
    config = function()
      require("stabilize").setup()
    end
  },

  ["rhysd/accelerated-jk"] = {
    setup = function ()
      vim.cmd [[nmap j <Plug>(accelerated_jk_gj)]]
      vim.cmd [[nmap k <Plug>(accelerated_jk_gk)]]
    end,
  },

  ["karb94/neoscroll.nvim"] = {
    config = function()
       require("neoscroll").setup()
    end,

    -- lazy loading
    setup = function()
      nvchad.packer_lazy_load "neoscroll.nvim"
    end,
  },

  ["Pocco81/AutoSave.nvim"] = {
    config = function()
      local autosave = require "autosave"

      autosave.setup {
        enabled = true,
        execution_message = "autosaved at : " .. vim.fn.strftime "%H:%M:%S",
        events = { "InsertLeave", "TextChanged" },
        conditions = {
           exists = true,
           filetype_is_not = {},
           modifiable = true,
        },
        clean_command_line_interval = 2500,
        on_off_commands = true,
        write_all_buffers = false,
      }
    end,
  },

  ["hrsh7th/vim-eft"] = {
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
  ["github/copilot.vim"] = {},
  ["stevearc/dressing.nvim"] = {},
  ["kevinhwang91/nvim-bqf"] = {},
  ["mattn/emmet-vim"] = {},
  ["junegunn/fzf"] = {},
  ["junegunn/fzf.vim"] = {},
  ['ojroques/nvim-lspfuzzy'] = {
    requires = {
      {'junegunn/fzf'},
      {'junegunn/fzf.vim'},  -- to enable preview (optional)
    },
    setup = function()
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

  ["windwp/nvim-ts-autotag"] = {
    ft = { "html", "javascriptreact" },
    after = "nvim-treesitter",
    config = function()
       require("nvim-ts-autotag").setup()
    end,
  },

  ["nvim-telescope/telescope-media-files.nvim"] = {
    after = "telescope.nvim",
    config = function()
       require("telescope").load_extension "media_files"
    end,
  },

  ["Pocco81/TrueZen.nvim"] = {
    cmd = {
       "TZAtaraxis",
       "TZMinimalist",
       "TZFocus",
    },
    config = function()
       require "custom.plugins.truezen"
    end,
  },
  ["christoomey/vim-tmux-navigator"] = {
  },
}
