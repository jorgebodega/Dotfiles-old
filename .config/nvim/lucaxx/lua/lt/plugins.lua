-- Only required if you have packer in your `opt` pack
local packer_exists = pcall(vim.cmd, [[packadd packer.nvim]])

if not packer_exists then
    -- TODO: Maybe handle windows better?
    if vim.fn.input("Download Packer? (y for yes)") ~= "y" then return end

    local directory = string.format('%s/site/pack/packer/opt/',
                                    vim.fn.stdpath('data'))

    vim.fn.mkdir(directory, 'p')

    local out = vim.fn.system(string.format('git clone %s %s',
                                            'https://github.com/wbthomason/packer.nvim',
                                            directory .. '/packer.nvim'))

    print(out)
    print("Downloading packer.nvim...")

    return
end

return require('packer').startup {
    function(use)

        use 'antoinemadec/FixCursorHold.nvim' -- Fix CursorHold Performance

        use 'tjdevries/astronauta.nvim'

        use 'mhinz/vim-startify' -- start screen
        use 'tweekmonster/startuptime.vim' -- benchmark startup


        use 'tpope/vim-fugitive' -- git
        use 'airblade/vim-rooter'
        use 'lewis6991/gitsigns.nvim'

        use 'vim-utils/vim-man' -- man pages
        use 'mbbill/undotree' -- undo tree

        use 'justinmk/vim-sneak'

        -- use 'tpope/vim-commentary'
        use 'b3nj5m1n/kommentary'

        use 'tpope/vim-surround' -- Change surrounding arks
        use 'tpope/vim-repeat' -- extends . repeat, for example for make it work with vim-sneak
        use 'bkad/CamelCaseMotion' -- allows to move by camelCase with w e

        use {
            'nvim-telescope/telescope.nvim',
            requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
            config = function() require 'lt.plugins.telescope' end
        }
        use 'nvim-telescope/telescope-fzy-native.nvim'

        use {'junegunn/fzf', run = './install --all'} -- Fuzzy Searcher	    use {'junegunn/fzf', run = './install --all' }     -- Fuzzy Searcher
        use {
            'junegunn/fzf.vim',
            config = function() require 'lt.plugins.fzf' end
        }

        use {
            'dyng/ctrlsf.vim',
            config = function() require 'lt.plugins.ctrlsf' end
        }

        use 'rrethy/vim-illuminate' -- highlight matching words when cursor on it
        use 'terryma/vim-expand-region'

        use 'gennaro-tedesco/nvim-peekup' -- shows register preview
        use 'numtostr/BufOnly.nvim' -- deletes all buffers except
        use 'psliwka/vim-smoothie' -- smoother scroll
        use 'liuchengxu/vim-which-key' -- shows 'emacs' preview of shortcuts
        use 'romainl/vim-cool' -- disabled search highlight until next search
        use 'AndrewRadev/sideways.vim' -- allows to move functions parameters
        use 'AndrewRadev/splitjoin.vim' -- allows to split one liner to multi lines
        -- use 'AndrewRadev/tagalong.vim' -- changes the closing html / xml tag

        use {
            'kyazdani42/nvim-tree.lua',
            config = function() require 'lt.plugins.nvim-tree' end
        }

        use 'tpope/vim-abolish' -- :S to replace with smartcase

        -- Autocomplete & Linters
        use 'neovim/nvim-lspconfig'
        use 'nvim-lua/lsp-status.nvim'
        use 'tjdevries/lsp_extensions.nvim'
        use 'glepnir/lspsaga.nvim'
        use 'onsails/lspkind-nvim'

        use {'hrsh7th/nvim-compe', branch = 'master'}
        -- use 'nvim-lua/completion-nvim'
        -- use 'steelsojka/completion-buffers'
        -- use 'nvim-treesitter/completion-treesitter'

        -- to download lsp servers
        -- TODO: check the tjdevries library
        use 'mattn/vim-lsp-settings'

        -- Language packs
        use {
            'nvim-treesitter/nvim-treesitter',
            run = function() vim.cmd [[TSUpdate]] end
        }
        use 'jceb/vim-orgmode'

        use {
            'glacambre/firenvim',
            run = function() vim.fn['firenvim#install'](0) end
        }
    end
}
