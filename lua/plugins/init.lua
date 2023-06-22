require("plugins.configs")

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
return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- Themes
    use 'AhmedAbdulrahman/aylin.vim'
    use 'catppuccin/nvim'
    -- Treesitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    -- Icons (used by barbar, nvim-tree, and lualine)
    use 'nvim-tree/nvim-web-devicons'
    -- Git
    use 'lewis6991/gitsigns.nvim'
    -- Tabline
    use 'romgrk/barbar.nvim'
    -- Statusline
    use 'nvim-lualine/lualine.nvim'
    -- File explorer
    use 'nvim-tree/nvim-tree.lua'
    -- Fuzzy finder
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)

