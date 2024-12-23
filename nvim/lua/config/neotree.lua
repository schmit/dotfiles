local api = require("nvim-tree.api")

vim.keymap.set('n', '<leader>tf', api.tree.focus, { desc = 'Focus on NeoTree' })
vim.keymap.set('n', '<leader>tt', api.tree.toggle, { desc = 'Toggle NeoTree' })
