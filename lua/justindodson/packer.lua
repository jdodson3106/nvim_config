-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- use "folke/tokyonight.nvim"
    -- use "slugbyte/lackluster.nvim"
    use {
        'AlexvZyl/nordic.nvim',
        config = function()
            require('nordic').setup {
              -- leave this setup function empty for default config
              -- or refer to the configuration section
              -- for configuration options
            }
            vim.cmd.colorscheme("nordic")
        end
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true },
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }
    use 'm4xshen/autoclose.nvim'
    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use ('nvim-treesitter/playground')
    use ('theprimeagen/harpoon')
    use ('mbbill/undotree')
    use ('tpope/vim-fugitive')
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
        config = function ()
            require("nvim-tree").setup({
                filters = {
                    dotfiles = false
                }
            })
        end
    }
    -- Lua
    use {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
                icons = false
            }
        end
    }

    use("vrischmann/tree-sitter-templ")

    use {
        'wiliamks/nice-reference.nvim',
        requires = {
            { 'rmagatti/goto-preview', config = function() require('goto-preview').setup {} end } --optional
        }
    }
    use 'freddiehaddad/feline.nvim'
    use "lewis6991/gitsigns.nvim"
    use "ray-x/go.nvim"



    -- debugger
    use {
        "rcarriga/nvim-dap-ui",
        requires = {
            {"mfussenegger/nvim-dap"},
            {"nvim-neotest/nvim-nio"},
        }
    }
    use "theHamsta/nvim-dap-virtual-text"
    use "leoluz/nvim-dap-go"

    -- TODO-LIST
    use{
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        opts = {
        }
    }

end)
