return {
  "kawre/leetcode.nvim",
  cmd = "Leet",
  build = ":TSUpdate html", -- if you have `nvim-treesitter` installed
  dependencies = {
    "tree-sitter/tree-sitter-html",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    -- configuration goes here
    plugins = {
      non_standalone = true,
    },
  },
}
