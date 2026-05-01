return {
  "stevearc/conform.nvim",
  lazy = true,
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      c = { "clang-format" },
      cpp = { "clang-format" },
      python = { "isort", "black" },
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_format = "fallback",
    },
    formatters = {
      ["clang-format"] = {
        prepend_args = { "--style=file", "--fallback-style=Google" },
      },
      isort = {
        command = vim.fn.stdpath("data") .. "/mason/bin/isort",
        args = { "--profile", "black", "$FILENAME" },
        stdin = false,
      },
      black = {
        command = vim.fn.stdpath("data") .. "/mason/bin/black",
        args = { "-" },
        stdin = true,
      },
    },
  },
}
