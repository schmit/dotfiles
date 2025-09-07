-- Truecolor and theme handled by plugin config
vim.opt.termguicolors = true
vim.opt.ruler = true

vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.shiftround = true
vim.opt.autoindent = true

-- Wild menu ignore case
vim.opt.wildignorecase = true

-- Line Numbers
vim.opt.number = true
vim.opt.showcmd = true
-- Statusline shows mode; no need to echo it
vim.opt.showmode = false

-- Automatically reload files changed on disk
vim.opt.autoread = true

-- Search
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Normal backspace
vim.opt.backspace = { "indent", "eol", "start" }

-- Mouse support
vim.opt.mouse = "a"

-- Copy-paste to OSX
-- Use system clipboard (macOS/Linux Wayland/X11 with providers)
vim.opt.clipboard = "unnamedplus"


-- Set .tex to LaTeX
vim.g.tex_flavor = "latex"

-- Showbreak character
vim.opt.showbreak = "↪"

-- Exit terminal mode with escape
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
