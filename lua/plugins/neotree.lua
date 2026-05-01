return {
  "nvim-neo-tree/neo-tree.nvim",
  cmd = "Neotree",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    close_if_last_window = true,
    enable_diagnostics = true,
    enable_git_status = true,

    filesystem = {
      display_current_path = false, --隱藏當前路徑
      follow_current_file = { enabled = true },
      use_libuv_file_watcher = true,
      filtered_items = {
        visible = false,
        hide_dotfiles = true,
        hide_gitignored = true,
      },
    },
    window = {
      position = "left", --"left", "right", "float", "current"
      width = 25,
      --      popup = {
      --        position = { row = 2, col = 1 },
      --        size = { width = 28, height = 24 },
      --        border = "rounded",
      --        winblend = 10,
      --        title = "", -- 空字串即可隱藏 title
      --      },
    },

    default_component_configs = {
      source_name = {
        name = "",
      },
    },

    source_selector = {
      winbar = false,
      statusline = false,
    },
  },
}
