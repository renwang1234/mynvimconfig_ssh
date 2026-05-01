-- neo-tree window settings
vim.api.nvim_create_autocmd("FileType", {
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
local aug = vim.api.nvim_create_augroup("custom_highlights_everforest", { clear = true })

vim.api.nvim_create_autocmd("ColorScheme", {
  group = aug,
  pattern = "everforest",
  callback = function()
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE" })
  end,
})