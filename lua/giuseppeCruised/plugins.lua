local status, packer = pcall(require, 'packer')
if (not status) then
    print("Packer is not installed")
    return
end

vim.cmd [[packadd packer.nvim]]


packer.startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'navarasu/onedark.nvim' --onedark color scheme
    use 'xiyaowong/nvim-transparent' --transparent
    use 'L3MON4D3/LuaSnip' -- Snippet
    use {
        'nvim-lualine/lualine.nvim', --StatusLine
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use 'onsails/lspkind-nvim' --vscode-like pictograms
    use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
    use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built in LSP
    use 'hrsh7th/nvim-cmp' -- Completion
    use 'neovim/nvim-lspconfig' -- LSP
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-file-browser.nvim'
    use 'nvim-lua/plenary.nvim' -- Common utilities
    use 'akinsho/nvim-bufferline.lua'
    use 'norcalli/nvim-colorizer.lua'
    use 'glepnir/lspsaga.nvim'
end)
