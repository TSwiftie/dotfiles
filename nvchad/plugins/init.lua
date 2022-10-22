return {

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
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

  ["kyazdani42/nvim-tree.lua"] = {
    override_options = {
      view = {
        hide_root_folder = false,
      }
    }
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
  ["christoomey/vim-tmux-navigator"] = {
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
  ["junegunn/fzf"] = {},
  ["junegunn/fzf.vim"] = {},
  ["karb94/neoscroll.nvim"] = {
    config = function()
       require("neoscroll").setup()
    end,
  },
  ['ojroques/nvim-lspfuzzy'] = {
    requires = {
      {'junegunn/fzf'},
      {'junegunn/fzf.vim'},  -- to enable preview (optional)
    },
    config = function ()
      require "custom.plugins.lspfuzzy"
    end
  },

  ['glepnir/lspsaga.nvim'] = {
    branch = "main",
    config = function ()
      require "custom.plugins.lspsaga"
    end
  }
}
