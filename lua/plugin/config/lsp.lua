require 'mason'.setup()
require 'mason-lspconfig'.setup {
    automatic_installation = true,
}

vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, { border = 'rounded' })
vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = 'rounded' })

local sign = function(opts)
  vim.fn.sign_define(opts.name, {
    texthl = opts.name,
    text = opts.text,
    numhl = ''
  })
end

sign({name = 'DiagnosticSignError', text = ''})
sign({name = 'DiagnosticSignWarn', text = ''})
sign({name = 'DiagnosticSignHint', text = ''})
sign({name = 'DiagnosticSignInfo', text = ''})

vim.diagnostic.config({
    signs = true,
    float = {
        border = 'rounded',
        source = 'always',
    },
})


local capabilities = require('cmp_nvim_lsp').default_capabilities()

local function keymap(mode, lhs, rhs)
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


require 'lspconfig'.lua_ls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
		},
	},
}

require 'lspconfig'.pyright.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

require 'rust-tools'.setup {
    server = {
        on_attach = on_attach,
        capabilities = capabilities,
    },
}

