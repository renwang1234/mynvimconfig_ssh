-- Disable netrw (must be first)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.loaded_matchit = 1
vim.g.loaded_spellfile_plugin = 1

-- Leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- UI & appearance
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cmdheight = 0
vim.opt.wrap = false
vim.opt.cursorline = true
vim.opt.colorcolumn = "80"
vim.o.termguicolors = true
vim.opt.conceallevel = 2

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Scrolling & view
vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 10
vim.opt.startofline = false

-- Windows & splits
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.o.equalalways = false

-- Indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- Signs & folding
vim.o.signcolumn = "yes"
vim.o.foldenable = false

-- Command display
vim.opt.showcmd = false

-- Invisible characters
vim.opt.list = true
vim.opt.listchars = {
  tab = "▸ ",
  trail = "·",
  extends = "→",
  precedes = "←",
  nbsp = "␣",
}

-- File & performance
local undodir = vim.fn.expand("~/.vim/undodir")
if vim.fn.isdirectory(undodir) == 0 then
  vim.fn.mkdir(undodir, "p")
end

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.undofile = true
vim.opt.undodir = undodir
vim.opt.updatetime = 300
vim.opt.timeoutlen = 500
vim.opt.ttimeoutlen = 50
vim.opt.autoread = true
vim.opt.autowrite = false
vim.opt.synmaxcol = 300
vim.opt.lazyredraw = true

-- Python host (替換為你的虛擬環境路徑)
vim.g.python3_host_prog = "C:\\Users\\Yumi\\.myvenv\\Scripts\\python"

-- Colorscheme custom highlights
vim.api.nvim_create_autocmd("ColorScheme", {
  group = vim.api.nvim_create_augroup("custom_highlights_everforest", {}),
  pattern = "everforest",
  callback = function()
    local api = vim.api
    api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
    api.nvim_set_hl(0, "FloatBorder", { bg = "NONE" })
  end,
})
