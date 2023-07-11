local cmp = require 'cmp'
local luasnip = require 'luasnip'

require 'luasnip.loaders.from_vscode'.lazy_load()

local check_backspace = function()
    local col = vim.fn.col '.' - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match '%s'
end

cmp.setup {
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end
    },
    mapping = {
        ['<A-k>'] = cmp.mapping.select_prev_item(),
        ['<A-j>'] = cmp.mapping.select_next_item(),
        ['<Up>'] = cmp.mapping.select_prev_item(),
        ['<Down>'] = cmp.mapping.select_next_item(),
        ['<S-k>'] = cmp.mapping(cmp.mapping.scroll_docs(-1), {'i', 'c'}),
        ['<S-j>'] = cmp.mapping(cmp.mapping.scroll_docs(1), {'i', 'c'}),
        -- Accept currently selected item. If none selected, `select` first item.
        -- Set `select` to `false` to only confirm explicitly selected items.
        ['<CR>'] = cmp.mapping.confirm {
            select = true
        },
        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expandable() then
                luasnip.expand()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            elseif check_backspace() then
                fallback()
            else
                fallback()
            end
        end, {'i', 's'}),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, {'i', 's'})
    },
    formatting = {
        format = function(entry, vim_item)
            -- Kind icons (sort of https://github.com/NvChad/ui/blob/v2.0/lua/nvchad_ui/icons.lua) 
            local icons = {
                Namespace = '󰌗',
                Text = '󰉿',
                Error = '',
                Method = '󰆧',
                Function = '󰡱',
                KeywordFunction = '󰡱',
                Constructor = ' ',
                Field = '󰜢',
                Variable = '󰀫',
                Class = '󰠱',
                Interface = '',
                Module = '',
                Property = '󰜢',
                Unit = '󰑭',
                Value = '󰎠',
                Enum = '',
                Keyword = '󰌋',
                Snippet = '',
                Color = '󰏘',
                File = '󰈚',
                Reference = '󰈇',
                Folder = '󰉋',
                EnumMember = '',
                Constant = '󰏿',
                Struct = '󰙅',
                Event = '',
                Operator = '󰆕',
                Macro = '"󰉨 ',
                TypeParameter = '󰊄',
                Table = '',
                Object = '󰅩',
                Tag = '',
                Array = '[]',
                Boolean = '',
                Number = '',
                Null = '󰟢',
                String = '󰉿',
                Calendar = '',
                Watch = '󰥔',
                Package = '',
                Comment = '󰆈',
                Type = '󰉺',
            }

            vim_item.kind = string.format('%s %s', icons[vim_item.kind], vim_item.kind)
            vim_item.menu = ({
                nvim_lsp = '󰞵',
                luasnip = '󱐌',
                buffer = '',
                path = '',
                crates = '󱧕',
            })[entry.source.name]
            return vim_item
        end
    },
    sources = {
        {
            name = 'crates'
        },
        {
            name = 'nvim_lsp'
        },
        {
            name = 'luasnip',
        },
        {
            name = 'buffer'
        },
        {
            name = 'path'
        },
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    experimental = {
        ghost_text = true,
    },
}

