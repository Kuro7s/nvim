require 'mason'.setup()
require 'mason-lspconfig'.setup {
    automatic_installation = true,
}

local lspconfig = require 'lspconfig'

local lsp = vim.lsp
lsp.handlers['textDocument/hover'] = lsp.with(lsp.handlers.hover, { border = 'rounded' })
lsp.handlers['textDocument/signatureHelp'] = lsp.with(lsp.handlers.signature_help, {
    border = 'rounded'
})

local sign = function(opts)
    vim.fn.sign_define(opts.name, {
        texthl = opts.name,
        text = opts.text,
        numhl = ''
    })
end

sign({ name = 'DiagnosticSignError', text = '' })
sign({ name = 'DiagnosticSignWarn', text = '' })
sign({ name = 'DiagnosticSignHint', text = '' })
sign({ name = 'DiagnosticSignInfo', text = '' })

vim.diagnostic.config({
    signs = true,
    float = {
        border = 'rounded',
        source = 'always',
    },
})

local function keymap(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, {})
end

local on_attach = function(_, bufnr)

    keymap('n', '<leader>rn', lsp.buf.rename)
    keymap('n', '<leader>ca', lsp.buf.code_action)

    keymap('n', 'gd', lsp.buf.definition)
    keymap('n', 'gi', lsp.buf.implementation)
    keymap('n', 'gr', require 'telescope.builtin'.lsp_references)
    keymap('n', 'K', lsp.buf.hover)
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Lua
lspconfig.lua_ls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

-- Python
lspconfig.pyright.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

-- Rust
require 'rust-tools'.setup {
    server = {
        on_attach = on_attach,
        capabilities = capabilities,
        settings = {
            ['rust-analyzer'] = {
                check = {
                    command = 'clippy',
                },
            },
        },
    },
}

-- C/C++
lspconfig.clangd.setup {
    server = {
        on_attach = on_attach,
        capabilities = capabilities,
    },
}

require 'lsp_signature'.setup {
    hint_enable = false,
    handler_opts = {
        border = 'rounded'
    }
}

