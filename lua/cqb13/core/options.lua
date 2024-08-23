vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt
local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 3
opt.shiftwidth = 3
opt.expandtab = true -- expand tab to space
opt.autoindent = true -- copy indent from curent line when starting a new one

opt.wrap = false -- no line wrap

-- search settings
opt.ignorecase = true
opt.smartcase = true -- if mixed case is included, uses case-sensitive search

-- theme stuff
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line, or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window ot the right
opt.splitbelow = true -- split horizontal window to the bottom

local general = augroup("General", { clear = true })

autocmd("BufEnter", {
  callback = function()
    vim.opt.formatoptions:remove { "c", "r", "o" }
  end,
  group = general,
  desc = "Disable New Line Comment",
})
