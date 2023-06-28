require 'plugins.configs'

-- Setup package manager
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

-- Initializing package manager and package listing
return require 'packer'.startup(function(use)
    use 'wbthomason/packer.nvim'

    -- Color schemes
    use 'catppuccin/nvim'
    use 'AhmedAbdulrahman/aylin.vim'
    use 'folke/tokyonight.nvim'
    use 'rebelot/kanagawa.nvim'
    use 'morhetz/gruvbox'
    -- Treesitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    -- Icons (used by barbar, nvim-tree, and lualine)
    use 'nvim-tree/nvim-web-devicons'
    -- Git
    use 'lewis6991/gitsigns.nvim'
    -- Tabline
    use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
    -- Statusline
    use 'nvim-lualine/lualine.nvim'
    -- File explorer
    use 'nvim-tree/nvim-tree.lua'
    -- Fuzzy finder
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- Completion
    use 'hrsh7th/nvim-cmp' -- The completion plugin
    use 'hrsh7th/cmp-buffer' -- buffer completions
    use 'hrsh7th/cmp-path' -- path completions
    use 'hrsh7th/cmp-cmdline' -- cmdline completions
    use 'saadparwaiz1/cmp_luasnip' -- snippet completions

    -- Snippets
    use 'L3MON4D3/LuaSnip' --snippet engine
    use 'rafamadriz/friendly-snippets' -- a bunch of snippets to use

    -- Lsp Support
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig'

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)

