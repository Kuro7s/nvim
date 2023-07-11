require 'nvim-tree'.setup {
    filesystem_watchers = {
        enable = true,
    },

    update_focused_file = {
        enable = true,
    },

    renderer = {
        root_folder_label = function ()
            return ''
        end,
        indent_markers = {
            enable = true,
            icons = {
                corner = "╰",
            },
        },

        icons = {
            git_placement = 'after',
            glyphs = {
                default = "󰈚",
                symlink = "",
                folder = {
                    default = "",
                    empty = "",
                    empty_open = "",
                    open = "",
                    symlink = "",
                    symlink_open = "",
                    arrow_open = "",
                    arrow_closed = "",
                },
            },
        },
    },
    git = {
        ignore = false,
    },
}

-- Open without focusing tree
vim.keymap.set('n', '<leader>to', ':NvimTreeOpen<cr>:silent bp<cr>', {})
vim.keymap.set('n', '<leader>ti', ':NvimTreeOpen<cr>', {})
vim.keymap.set('n', '<leader>tc', ':NvimTreeClose<cr>', {})
vim.keymap.set('n', '<leader>tk', ':NvimTreeCollapse<cr>', {})
vim.keymap.set('n', '<leader>tt', ':NvimTreeToggle<cr>', {})
vim.keymap.set('n', '<leader>tf', ':NvimTreeFocus<cr>', {})
vim.keymap.set('n', '<leader>tr', ':NvimTreeRefresh<cr>', {})
