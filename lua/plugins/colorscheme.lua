return {
  "sainnhe/everforest",
  priority = 1000,
  config = function()
    local g, cmd = vim.g, vim.cmd
    g.everforest_better_performance = true
    g.everforest_dim_inactive_windows = true
    g.everforest_transparent_background = true
    g.everforest_diagnostic_line_highlight = 1
    cmd("colorscheme everforest")
    cmd("highlight LineNr guifg=#757567")
    cmd("highlight CursorNr guifg=#b8ccbe")
    cmd("highlight CursorLine guibg=#5b6266")
    cmd("highlight ColorColumn guibg=#5b6266")
  end,
}
