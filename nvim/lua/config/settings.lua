vim.opt.background = "light"
vim.cmd.colorscheme("tokyonight-night")
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
vim.opt.showmode = true

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
vim.opt.clipboard = "unnamed"


-- Set .tex to LaTeX
vim.g.tex_flavor = "latex"

-- Remove Ex mode
vim.keymap.set("n", "Q", "<nop>")

-- Showbreak character
vim.opt.showbreak = "↪"

-- Use Ag instead of Ack
vim.g.ackprg = "ag --nogroup --nocolor --column"

-- Exit terminal mode with escape
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

