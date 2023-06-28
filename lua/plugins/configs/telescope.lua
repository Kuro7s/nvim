require 'telescope'.setup {
    pickers = {
        find_files = {
            hidden = true,
            find_command = {
                'rg',
                '--files',
                '--color=never',
                '--no-heading',
                '--line-number',
                '--column',
                '--smart-case',
                '--hidden',
                '--glob',
                '!{.git/*,target/*,node_modules/*}',
                '--path-separator',
                '/',
            },
        },
        colorscheme = {
            mappings = {
                i = {
                    ['<CR>'] = function(buf) select_colorscheme(buf) end,
                },
                n = {
                    ['<CR>'] = function(buf) select_colorscheme(buf) end,
                },
            },
            enable_preview = true,
        },
    }
}

function select_colorscheme(buf)
    local colorscheme = require('telescope.actions.state').get_selected_entry(buf).value
    local file = io.open(require('core.colorscheme_path'), 'w')
    file:write(colorscheme)
    file:close()
    require('telescope.actions').close(buf)
    vim.cmd.colorscheme(colorscheme)
end

local builtin = require 'telescope.builtin'
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fc', builtin.colorscheme, {})
vim.keymap.set('n', '<leader>fr', builtin.oldfiles, {})

