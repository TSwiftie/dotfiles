-- overriding default plugin configs!

local M = {}

M.blankline = {
  indentLine_enabled = 1,
  show_trailing_blankline_indent = false,
  show_first_indent_level = true,
  use_treesitter = true,
  show_current_context = true,
  show_current_context_start = false,
  char = "▏",
  buftype_exclude = {
    "nofile",
    "terminal",
    "lsp-installer",
    "lspinfo",
  },
  filetype_exclude = {
    "help",
    "terminal",
    "alpha",
    "packer",
    "lspinfo",
    "TelescopePrompt",
    "TelescopeResults",
    "nvchad_cheatsheet",
    "lsp-installer",
    "",
  },
  context_patterns = {
    "class",
    "return",
    "function",
    "method",
    "^if",
    "^while",
    "jsx_element",
    "^for",
    "^object",
    "^table",
    "block",
    "arguments",
    "if_statement",
    "else_clause",
    "jsx_element",
    "jsx_self_closing_element",
    "try_statement",
    "catch_clause",
    "import_statement",
    "operation_type",
  },
}

M.treesitter = {
  ensure_installed = {
    "vim",
    "html",
    "css",
    "javascript",
    "json",
    "toml",
    "markdown",
    "c",
    "bash",
    "lua",
    "norg",
    "cpp",
    "commonlisp",
    "go",
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  },
}

M.nvimtree = {
  disable_netrw        = true,
  hijack_netrw         = true,
  open_on_setup        = true,
  open_on_setup_file   = true;
  ignore_buffer_on_setup = false;
  ignore_ft_on_setup = { "dashboard" },
  auto_reload_on_write = true,
  open_on_tab          = false,
  sort_by              = "name",
  hijack_unnamed_buffer_when_opening = false,
  hijack_directories   = {
    enable = true,
    auto_open = true,
  },
  hijack_cursor        = false,
  update_cwd           = false,
  update_focused_file = {
      enable      = false,
      update_cwd  = false,
      ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  renderer = {
    indent_markers = {
      enable = false,
      icons = {
        corner = "└ ",
        edge = "│ ",
        none = "  ",
      },
    },
    icons = {
      webdev_colors = true,
      git_placement = "before",
    },
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  git = {
    enable = true,
    ignore = false,
    timeout = 500,
  },
  view = {
      hide_root_folder = false,
      width = 30,
      height = 30,
      side = 'left',
      preserve_window_proportions = false,
      number = false,
      relativenumber = false,
      signcolumn = "auto",
      mappings = {
        custom_only = false,
        list = {}
    },
  },
  filters = {
    dotfiles = false,
    custom = {},
    exclude = {},
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  },
  actions = {
    use_system_clipboard = true,
    change_dir = {
      enable = true,
      global = true,
    },
    open_file = {
      quit_on_open = false,
      resize_window = false,
      window_picker = {
        enable = true,
        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        exclude = {
          filetype = {
            "notify",
            "packer",
            "qf",
            "diff"
          },
          buftype = {
            "nofile",
            "terminal",
            "help"
          },
        }
      }
    }
  }
}

M.telescope = {
  extensions = {
    -- fd is needed
    media_files = {
      filetypes = { "png", "webp", "jpg", "jpeg" },
    },
  },
}

return M
