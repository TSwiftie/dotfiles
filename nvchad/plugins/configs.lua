-- /lua/custom/plugins/configs.lua file

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
  ensure_installed = {"c", "cpp", "lua", "go", "vim"},
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  },
}

M.nvimtree = {
   ignore_ft_on_setup = { "dashboard" },
   disable_netrw        = false,
   hijack_netrw         = true,
   open_on_setup        = false,
   auto_close           = true,
   auto_reload_on_write = true,
   open_on_tab          = false,
   hijack_cursor        = false,
   update_cwd           = false,
   hijack_unnamed_buffer_when_opening = false,
   hijack_directories   = {
     enable = true,
     auto_open = true,
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
   update_focused_file = {
     enable      = false,
     update_cwd  = false,
     ignore_list = {}
   },
   system_open = {
     cmd  = nil,
     args = {}
   },
   filters = {
     dotfiles = false,
     custom = {}
   },
   git = {
     enable = true,
     ignore = false,
     timeout = 500,
   },
   view = {
     width = 30,
     height = 30,
     hide_root_folder = false,
     side = 'left',
     auto_resize = false,
     preserve_window_proportions = false,
     mappings = {
       custom_only = false,
       list = {}
     },
     number = false,
     relativenumber = false,
     signcolumn = "yes"
   },
   trash = {
     cmd = "trash",
     require_confirm = true
   },
   actions = {
     change_dir = {
       enable = true,
       global = false,
     },
     open_file = {
       quit_on_open = false,
       window_picker = {
         enable = true,
         chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
         exclude = {
           filetype = {
             "notify",
             "packer",
             "qf"
           }
         }
       }
     }
   }
 }

return M
