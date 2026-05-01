return {
  "nvim-lualine/lualine.nvim",
  -- event = { "BufReadPre", "BufNewFile" },
  event = { "VeryLazy" },
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    opts = {
      override = {
        c = { icon = "󰙱", color = "#939f91", name = "C" },
        cpp = { icon = "", color = "#939f91", name = "Cpp" },
        py = { icon = "", color = "#939f91", name = "Python" },
        js = { icon = "", color = "#939f91", name = "JavaScript" },
        lua = { icon = "", color = "#939f91", name = "Lua" },
      },
    },
  },

  opts = {
    options = {
      theme = "auto",
      always_divide_middle = false,
      component_separators = { left = "", right = "|" },
      section_separators = { left = "", right = "" },

      disabled_filetypes = {
        statusline = { "neo-tree" },
        winbar = { "neo-tree" },
      },
    },

    ignore_focus = {},
    globalstatus = false,

    refresh = {
      statusline = 2000,
      tabline = 2000,
      winbar = 2000,
    },

    sections = {
      lualine_a = { "mode" },
      lualine_b = {
        { "location", color = { fg = "#b8ccbe" } },
        "diagnostics",
        "diff",
      },
      lualine_c = {
        "branch",
        {
          "filename",
          path = 3,
          file_status = true,
          newfile_status = true,
          color = { fg = "#55544a" },
        },
      },
      lualine_x = {},
      lualine_y = {
        {
          function()
            return os.date("%H:%M")
          end,
        },
        "encoding",
        "fileformat",
      },
      lualine_z = { "filetype" },
    },

    inactive_sections = {
      lualine_a = { "" },
      lualine_z = { "filetype" },
    },

    --    winbar = {
    --      lualine_a = {},
    --    },
    --    inactive_winbar = {
    --      lualine_z = {
    --        {
    --          function()
    --            return os.date("%H:%M")
    --          end,
    --        },
    --      },
    --    },

    tabline = {},
    extensions = {},
  },
}
