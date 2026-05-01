return {
  "saghen/blink.cmp",
  event = "InsertEnter",
  -- dependencies = { "rafamadriz/friendly-snippets" },
  version = '1.*',
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = { preset = "super-tab" },

    appearance = {
      nerd_font_variant = "mono"
    },

    path = {
      score_offset = 95,
      opts = {
        get_cwd = function(_)
          return vim.fn.getcwd()
        end,
      },
    },

    buffer = {
      score_offset = 20,
    },

    lsp = {
      transform_items = function(_, items)
        return vim.tbl_filter(function(item)
          return item.kind ~= require("blink.cmp.types").CompletionItemKind.Text
        end, items)
      end,
      score_offset = 60,
      fallbacks = { "buffer" },
    },

    completion = {
      accept = { auto_brackets = { enabled = true } },
      list = { selection = { preselect = true, auto_insert = false } },
      menu = {
        border = "none",
        winblend = 0,
        max_height = 20,
        scrollbar = true,
      },
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 200,
        window = {
          min_width = 10,
          max_width = 90,
          max_height = 18,
          border = "rounded",
          scrollbar = false,
          direction_priority = {
            menu_north = { "e", "w", "n", "s" },
            menu_south = { "e", "w", "s", "n" },
          },
        },
      },
    },
    signature = {
      enabled = true,
      window = {
        min_width = 1,
        max_width = 70,
        max_height = 8,
        border = "single",
        scrollbar = false,
        direction_priority = { "n", "s" },
        treesitter_highlighting = true,
        show_documentation = false,
      },
    },

    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },

    ghost_text = {
      enabled = true,
      show_with_selection = true,
      show_without_selection = false,
      show_with_menu = true,
      show_without_menu = true,
    },
    cmdline = {
      sources = function()
        local cmd_type = vim.fn.getcmdtype()
        if cmd_type == "/" then
          return { "buffer" }
        end
        if cmd_type == ":" then
          return { "cmdline" }
        end
        return {}
      end,

      keymap = { preset = "super-tab" },

      completion = {
        menu = {
          auto_show = true,
        }
      }
    },

    fuzzy = { implementation = "prefer_rust_with_warning" },

    opts_extend = { "sources.default" }
  }
}
