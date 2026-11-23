local group = vim.api.nvim_create_augroup("config_autocmds", { clear = true })
-- neo-tree window settings
vim.api.nvim_create_autocmd("FileType", {
  group = group,
  pattern = "neo-tree",
  callback = function()
    vim.opt_local.number = false
    vim.opt_local.relativenumber = false
    vim.opt_local.signcolumn = "no"
    vim.opt_local.foldcolumn = "0"
    vim.opt_local.statusline = " "
    vim.opt_local.cursorline = false
  end,
})

-- Colorscheme custom highlights
vim.api.nvim_create_autocmd("ColorScheme", {
  group = group,
  pattern = "everforest",
  callback = function()
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "LineNr", { fg = "#757567" })
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#b8ccbe" })
    vim.api.nvim_set_hl(0, "CursorLine", { bg = "#5b6266" })
    vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#5b6266" })
  end,
})
