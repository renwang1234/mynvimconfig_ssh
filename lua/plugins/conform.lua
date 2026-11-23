return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      c = { "clang-format" },
      cpp = { "clang-format" },
      python = { "isort", "black" },
      javascript = { "prettierd" },
      typescript = { "prettierd" },

      css = { "prettierd" },
      html = { "prettierd" },
      json = { "prettierd" },
      yaml = { "prettierd" },
      markdown = { "prettierd" },
    },
    format_on_save = {
      timeout_ms = 3000,
      lsp_format = "fallback",
    },
    formatters = {
      ["clang-format"] = {
        prepend_args = { "--style=file", "--fallback-style=Google" },
      },
      isort = {
        prepend_args = {
          "--profile",
          "black",
        },
      },
      --      isort = {
      --        command = vim.fn.stdpath("data") .. "/mason/bin/isort",
      --        args = { "--profile", "black", "$FILENAME" },
      --        stdin = false,
      --      },
      --      black = {
      --        command = vim.fn.stdpath("data") .. "/mason/bin/black",
      --        args = { "-" },
      --        stdin = true,
      --      },
    },
  },
}
