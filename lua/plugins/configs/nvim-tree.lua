require 'nvim-tree'.setup()

vim.keymap.set('n', '<leader>eo', ':NvimTreeOpen<cr>', {})
vim.keymap.set('n', '<leader>ec', ':NvimTreeClose<cr>', {})
vim.keymap.set('n', '<leader>et', ':NvimTreeToggle<cr>', {})
vim.keymap.set('n', '<leader>ef', ':NvimTreeFocus<cr>', {})
vim.keymap.set('n', '<leader>er', ':NvimTreeRefresh<cr>', {})

