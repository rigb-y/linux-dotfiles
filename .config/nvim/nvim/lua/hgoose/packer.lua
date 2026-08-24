vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use('nvim-telescope/telescope.nvim')
    use('stevearc/dressing.nvim')
    -- use {
    --     'nvim-telescope/telescope.nvim', tag = '0.1.5',
    --         pickers = {
    --     -- or                            , branch = '0.1.x',
    --     requires = { { 'nvim-lua/plenary.nvim' }},
    --     require("telescope").setup{
    --             colorscheme = {
    --                 enable_preview = true
    --             }
    --         }
    --     }
    -- }
    local treesitter_langs = {
        "python",
        "latex",
        "c",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "html",
        "php",
        "css",
        "cpp",
    }

    use({
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        run = ":TSUpdate",

        config = function()
            local ts = require("nvim-treesitter")

            ts.setup({
                install_dir = vim.fn.stdpath("data") .. "/site",
            })

            ts.install(treesitter_langs)

            vim.api.nvim_create_autocmd("FileType", {
                pattern = {
                    "python",
                    "tex",
                    "c",
                    "lua",
                    "vim",
                    "help",
                    "query",
                    "html",
                    "php",
                    "css",
                    "cpp"
                },
                callback = function()
                    pcall(vim.treesitter.start)
                end,
            })
        end,
    })
    -- use('nvim-treesitter/nvim-treesitter', { 
    --     run = ':TSUpdate' 
    -- })
    -- use('nvim-treesitter/playground')
    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')

    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x', requires = {
            {'williamboman/mason-lspconfig.nvim'},

            {'neovim/nvim-lspconfig'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
            {'onsails/lspkind.nvim'},
        }
      }
      -- Mason
      use {
          "williamboman/mason.nvim"
      }

      use('nyoom-engineering/oxocarbon.nvim')
    use('EdenEast/nightfox.nvim')
    use('loctvl842/monokai-pro.nvim')
    use('iruzo/matrix-nvim')
    use('numToStr/Comment.nvim')
    use('skywind3000/vim-quickui')
    use("stevearc/oil.nvim")
    use("windwp/nvim-autopairs")
    use('dag/vim-fish')
    use('907th/vim-auto-save')
    use('mrjones2014/smart-splits.nvim')
    use("folke/which-key.nvim")
    use('lervag/vimtex')
    use('SirVer/ultisnips')
    use('preservim/tagbar')
    use('ThePrimeagen/vim-be-good')
    use('tpope/vim-repeat')
    -- use('Wansmer/treesj')
    -- use('airblade/vim-rooter')
    use{ "kylechui/nvim-surround", tag = "*", }
    use{ 'goolord/alpha-nvim', requires = 'nvim-tree/nvim-web-devicons' }
    use{ "akinsho/toggleterm.nvim", tag = '*' }
    use{ 'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons' }
    use({
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
            { 's1n7ax/nvim-window-picker', version = '2.*'}}})


    -- Colorschemes
    use {
        'VonHeikemen/fine-cmdline.nvim',
        requires = {
            {'MunifTanjim/nui.nvim'}
        }
    }
    use('NLKNguyen/papercolor-theme')
    use('hgoose/onedark-fk.vim')
    use('ellisonleao/gruvbox.nvim')
    use('hgoose/everblush_fk')
    use('hgoose/gruv.nvim')
    use('artanikin/vim-synthwave84')
    use('https://github.com/Mofiqul/vscode.nvim.git')
    use('Mofiqul/dracula.nvim')
    use('hgoose/dracula_gruvback')
    use('catppuccin/nvim')
    use{ 'Everblush/nvim', as = 'everblush' }
    use {
        'uloco/bluloco.nvim',
        requires = { 'rktjmp/lush.nvim' }
    }
end)
