require('gitsigns').setup({
  signs = {
    add = { text = '+' },
    change = { text = '~' },
    delete = { text = '_' },
    topdelete = { text = '‾' },
    changedelete = { text = '~' },
  },
  current_line_blame = true,
  update_debounce = 200,
  preview_config = {
    border = 'rounded',
  },
  -- todo check keymap
  keymaps = {
    -- Default keymap options
    noremap = true,

    ['n ]c'] = { expr = true, "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'" },
    ['n [c'] = { expr = true, "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'" },

    ['n <leader>hs'] = '<cmd>Gitsigns stage_hunk<CR>',
    ['v <leader>hs'] = ':Gitsigns stage_hunk<CR>',
    ['n <leader>hu'] = '<cmd>Gitsigns undo_stage_hunk<CR>',
    ['n <leader>hr'] = '<cmd>Gitsigns reset_hunk<CR>',
    ['v <leader>hr'] = ':Gitsigns reset_hunk<CR>',
    ['n <leader>hR'] = '<cmd>Gitsigns reset_buffer<CR>',
    ['n <leader>hp'] = '<cmd>Gitsigns preview_hunk<CR>',
    ['n <leader>hb'] = '<cmd>lua require"gitsigns".blame_line{full=true}<CR>',
    ['n <leader>hS'] = '<cmd>Gitsigns stage_buffer<CR>',
    ['n <leader>hU'] = '<cmd>Gitsigns reset_buffer_index<CR>',

    -- Text objects
    ['o ih'] = ':<C-U>Gitsigns select_hunk<CR>',
    ['x ih'] = ':<C-U>Gitsigns select_hunk<CR>',
  },
})

local set_highlight = require('utils.highlights').set_highlight
local colors = require('theme.colors')

set_highlight('GitSignsAdd', {
  guifg = colors.diffAdd,
})
set_highlight('GitSignsChange', {
  guifg = colors.diffModified,
})
set_highlight('GitSignsDelete', {
  guifg = colors.diffDeleted,
})
