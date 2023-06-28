require 'mason'.setup()
require 'mason-lspconfig'.setup {
    ensure_installed = {
        'rust_analyzer',
        'lua_ls',
    },
}

function keymap(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, {})
end

local on_attach = function(_, _)
    keymap('n', '<leader>rn', vim.lsp.buf.rename)
    keymap('n', '<leader>ca', vim.lsp.buf.code_action)

    keymap('n', 'gd', vim.lsp.buf.definition)
    keymap('n', 'gi', vim.lsp.buf.implementation)
    keymap('n', 'gr', require 'telescope.builtin'.lsp_references)
    keymap('n', 'K', vim.lsp.buf.hover)
end

local settings = {
    on_attach = on_attach
}

require 'lspconfig'.lua_ls.setup(settings)
require 'lspconfig'.rust_analyzer.setup(settings)

