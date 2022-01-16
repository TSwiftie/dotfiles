local present, nvimtree = pcall(require, "nvim-tree")

local conf = require("core.utils").load_config().plugins.options.nvimtree

local git_status = conf.enable_git
local ui = conf.ui

if not present then
   return
end

local g = vim.g

g.nvim_tree_add_trailing = 0 -- append a trailing slash to folder names
g.nvim_tree_git_hl = git_status
g.nvim_tree_highlight_opened_files = 0
g.nvim_tree_indent_markers = 0
g.nvim_tree_quit_on_open = 1 -- closes tree when file's opened
g.nvim_tree_root_folder_modifier = table.concat { ":t:gs?$?/..", string.rep(" ", 1000), "?:gs?^??" }

g.nvim_tree_window_picker_exclude = {
   filetype = { "notify", "packer", "qf" },
   buftype = { "terminal" },
}

g.nvim_tree_show_icons = {
   folders = 1,
   files = 1,
   git = git_status,
}

g.nvim_tree_icons = {
   default = "",
   symlink = "",
   git = {
      deleted = "",
      ignored = "◌",
      renamed = "➜",
      staged = "✓",
      unmerged = "",
      unstaged = "✗",
      untracked = "★",
   },
   folder = {
        default = "",
        open = "",
        empty = "",
        empty_open = "",
        symlink = "",
        symlink_open = "",
   },
}

nvimtree.setup {
   disable_netrw = true,
   hijack_netrw = true,
   open_on_setup = false,
   ignore_ft_on_setup = { "dashboard" },
   auto_close = true,
   open_on_tab = false,
   hijack_cursor = false,
   update_cwd = false,
   update_to_buf_dir = {
       enable = true,
       auto_open = true,
   },
   system_open = {
       cmd = nil,
       args = {}
   },
   view = ui,
   git = {
      ignore = false,
      timeout = 500,
   },
   trash = {
       cmd = "trash",
       require_confirm = true
   }
}
