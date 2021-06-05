-- require 'theme'
-- require 'utils'
-- require 'plugins'
-- require 'filetypes'
-- require 'defaults'
-- require 'window'
-- require 'netrw'
-- -- require 'lsp'
-- Packer
require('plugins')
-- utils
require('utils.remaps')
-- Config
require('settings')
require('settings.color')
require('settings.font')
require('settings.completion')
require('settings.filetype')
require('settings.netrw')
-- LSP Config
require('lsp')
-- Plugins config
require('plugins.feline')
require('plugins.hlslens')
require('plugins.treesitter')
require('plugins.gitsigns')
require('plugins.gitblame')
require('plugins.nvim-autopairs')
require('plugins.nvim-ts-rainbow')
require('plugins.nvimtree')
require('plugins.indent-guides')
require('plugins.telescope')
require('plugins.numb')
require('plugins.vim-startify')
require('plugins.ctrlsf')
require('plugins.editorconfig')
-- require('plugins.vim-gutentags')
require('plugins.vim-rooter')
require('plugins.vim-signature')
require('plugins.vim-fugitive')
require('plugins.lspkind')
require('plugins.lspinstall')
require('plugins.neoscroll')
-- require('plugins.minimap')
require('plugins.diffview')
require('plugins.todo-comments')
require('plugins.betterescape')
require('plugins.kommentary')
require('plugins.sideways')
require('plugins.splitjoin')
require('plugins.nvim-reload')
-- Keymap
require('settings.keymap')
