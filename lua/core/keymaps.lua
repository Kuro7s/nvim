local function keymap(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true })
end

vim.g.mapleader = ' '

-- Normal --
-- Better window navigation
keymap('n', '<S-h>', '<C-w>h')
keymap('n', '<S-j>', '<C-w>j')
keymap('n', '<S-k>', '<C-w>k')
keymap('n', '<S-l>', '<C-w>l')

-- Resize with arrows
keymap('n', '<C-Up>', ':resize +2<CR>')
keymap('n', '<C-Down>', ':resize -2<CR>')
keymap('n', '<C-Left>', ':vertical resize -2<CR>')
keymap('n', '<C-Right>', ':vertical resize +2<CR>')

-- Navigate buffers
keymap('n', '<A-l>', ':bnext<CR>')
keymap('n', '<A-h>', ':bprevious<CR>')

-- Visual --
-- Stay in indent mode
keymap('v', '<', '<gv')
keymap('v', '>', '>gv')

-- Move text up and down
keymap('v', '<C-j>', ':m .+1<CR>==')
keymap('v', '<C-k>', ':m .-2<CR>==')
keymap('v', 'p', '"_dP')

-- Visual Block --
-- Stay in indent mode
keymap('x', '<', '<gv')
keymap('x', '>', '>gv')

-- Move text up and down
keymap('x', 'J', ':move ">+1<CR>gv-gv')
keymap('x', 'K', ':move "<-2<CR>gv-gv')
keymap('x', '<A-j>', ':move ">+1<CR>gv-gv')
keymap('x', '<A-k>', ':move "<-2<CR>gv-gv')
