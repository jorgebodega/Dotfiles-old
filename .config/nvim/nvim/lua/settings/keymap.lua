-- reload
nnoremap('Y', 'y$')
nnoremap('X', '"_d')
--  TAB in general mode will move to next buffer
nnoremap('<C-H>', '<cmd>bnext<CR>')
--  SHIFT-TAB will go to prev buffer
nnoremap('<C-L>', '<cmd>bprev<CR>')
--  Close current buffer
nnoremap('<leader>r', '<cmd>bd<CR>')
-- Capitalize or lower case current word
nnoremap('<leader>u', '<esc>viw~ea')
-- Quit
nnoremap('<leader>q', '<cmd>q<CR>')
nnoremap('<leader>Q', '<cmd>q!<CR>')

-- Save
nnoremap('<leader>s', '<cmd>w<CR>')

-- Surround with quotation marks
nnoremap('<leader>"', 'viw<esc>a"<esc>bi"<esc>lel')
nnoremap('<leader>\'', 'viw<esc>a\'<esc>bi\'<esc>lel')

-- TODO: Not working
-- move upper/down on visual
vnoremap('K', '<cmd>m "<-2<CR>gv=gv"')
vnoremap('J', '<cmd>m ">+1<CR>gv=gv"')

-- deletes in visual
vnoremap('X', '"_d')

-- TODO: This should not exit visual mode
-- Better tabbing
vnoremap('<C-<>', '<gv')
vnoremap('<C->>', '>gv')

vim.cmd [[set clipboard+=unnamedplus]]
-- Copy to clipboard
vnoremap('<leader>y', '"+y')
nnoremap('<leader>Y', '"+yg_')
nnoremap('<leader>y', '"+y')
nnoremap('<leader>yy', '"+yy')

-- Copy all file on clipboard
nnoremap('<leader>ya', 'gg"+yG<C-o>')
vnoremap('<leader>ya', 'gg"+yG<C-o>')

-- Paste from clipboard
nnoremap('<leader>p', '"+p')
nnoremap('<leader>P', '"+P')
vnoremap('<leader>p', '"+p')
vnoremap('<leader>P', '"+P')

-- Operator pending mappings
-- Same as Xi(  shorted to Xp
onoremap('p', 'i(')
onoremap('a', '$')
onoremap('l', 'i{')
onoremap('b', '/return<cr>')
onoremap('in(', '<cmd><c-u>normal! f(vi(<cr>')
onoremap('il(', '<cmd><c-u>normal! F)vi(<cr>')
onoremap('in{', '<cmd><c-u>normal! f{vi{<cr>')
onoremap('il{', '<cmd><c-u>normal! F}vi{<cr>')

vim.api.nvim_set_keymap('n', '<F7>', ':NvimTreeToggle<CR>',
                        {noremap = false, silent = true})
vim.api.nvim_set_keymap('n', '<leader>nm', ':Dispatch npm start<CR>',
                        {noremap = false, silent = false})

-- Buffers
nmap('<leader>bda', ':BufferCloseAllButCurrent<CR>')
nmap('<leader>bn', ':bnext<CR>')
nmap('<leader>bp', ':bprevious<CR>')

-- Git
nmap('<leader>gf', ':20G<CR>')
nmap('<leader>g', ':LazyGit<CR>')
nmap('<leader>gd', ':DiffviewOpen<CR>')

-- Easy-align
vim.api.nvim_set_keymap('x', 'ga', '<Plug>(EasyAlign)',
                        {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', 'ga', '<Plug>(EasyAlign)',
                        {noremap = false, silent = false})

-- LSP
vim.api.nvim_set_keymap('n', '<leader>,',
                        ':lua vim.lsp.diagnostic.goto_prev()<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>;',
                        ':lua vim.lsp.diagnostic.goto_next()<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>a',
                        ':lua vim.lsp.diagnostic.code_action()<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>d', ':lua vim.lsp.buf.definition()<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>f', ':lua vim.lsp.buf.formatting()<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>h', ':lua vim.lsp.buf.hover()<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>m', ':lua vim.lsp.buf.rename()<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>r', ':lua vim.lsp.buf.references()<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>s',
                        ':lua vim.lsp.buf.document_symbol()<CR>',
                        {noremap = true, silent = true})

nnoremap('<leader>wh', '<cmd>wincmd h<CR>')
nnoremap('<leader>wj', '<cmd>wincmd j<CR>')
nnoremap('<leader>wk', '<cmd>wincmd k<CR>')
nnoremap('<leader>wl', '<cmd>wincmd l<CR>')

nnoremap('<leader>w+', '<cmd>vertical resize +5<CR>')
nnoremap('<leader>w-', '<cmd>vertical resize -5<CR>')

vim.api.nvim_set_keymap('n', '<F2>', ':SidebarNvimToggle<CR>',
                        {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<F3>', ':set number! relativenumber!<CR>',
                        {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<F4>', ':set list! list?<CR>',
                        {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', '<F7>', ':NvimTreeToggle<CR>',
                        {noremap = false, silent = true})
vim.api.nvim_set_keymap('n', '<leader>nm', ':Dispatch npm start<CR>',
                        {noremap = false, silent = false})

-- Buffers
vim.api.nvim_set_keymap('n', '<leader>bda', ':BufferCloseAllButCurrent<CR>',
                        {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', '<leader>bn', ':BufferNext<CR>',
                        {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', '<leader>bp', ':BufferPrevious<CR>',
                        {noremap = false, silent = false})

-- Git
vim.api.nvim_set_keymap('n', '<leader>gf', ':20G<CR>',
                        {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', '<leader>gg', ':LazyGit<CR>',
                        {noremap = false, silent = false})

-- Ctrlsf
vim.api.nvim_set_keymap('n', '<C-F>f', '<Plug>CtrlSFPrompt',
                        {noremap = false, silent = false})
vim.api.nvim_set_keymap('v', '<C-F>f', '<Plug>CtrlSFVwordExec',
                        {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', '<C-F>n', '<Plug>CtrlSFCwordExec',
                        {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', '<C-F>t', ':CtrlSFToggle<CR>',
                        {noremap = true, silent = false})

-- Easy-align
vim.api.nvim_set_keymap('x', 'ga', '<Plug>(EasyAlign)',
                        {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', 'ga', '<Plug>(EasyAlign)',
                        {noremap = false, silent = false})

-- LSP
vim.api.nvim_set_keymap('n', '<space>,',
                        ':lua vim.lsp.diagnostic.goto_prev()<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<space>;',
                        ':lua vim.lsp.diagnostic.goto_next()<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<space>a',
                        ':lua vim.lsp.diagnostic.code_action()<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<space>d', ':lua vim.lsp.buf.definition()<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<space>f', ':lua vim.lsp.buf.formatting()<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<space>h', ':lua vim.lsp.buf.hover()<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<space>m', ':lua vim.lsp.buf.rename()<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<space>r', ':lua vim.lsp.buf.references()<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<space>s',
                        ':lua vim.lsp.buf.document_symbol()<CR>',
                        {noremap = true, silent = true})

-- Telescope
vim.api.nvim_set_keymap('n', '<leader>r',
                        ":lua require('telescope.builtin').live_grep()<CR>",
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>bb',
                        ":lua require('telescope.builtin').buffers()<CR>",
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>m',
                        ":lua require('telescope.builtin').marks()<CR>",
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>t',
                        ":lua require('telescope.builtin').treesitter()<CR>",
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>l',
                        ":lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>",
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>f',
                        ":lua require('plugins.telescope').project_files()<CR>",
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>p',
                        ":lua require('telescope').extensions.project.project{}<CR>",
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>c',
                        ":lua require('plugins.telescope').my_git_commits()<CR>",
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>g',
                        ":lua require('plugins.telescope').my_git_status()<CR>",
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>b',
                        ":lua require('plugins.telescope').my_git_bcommits()<CR>",
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>n',
                        ":lua require('plugins.telescope').my_note()<CR>",
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>nn', ":e ~/Note/",
                        {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>gc', ':Octo issue create<CR>',
                        {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>i', ':Octo issue list<CR>',
                        {noremap = true, silent = false})

-- Todo-comments
vim.api.nvim_set_keymap('n', '<leader>to', ':TodoTelescope<CR>',
                        {noremap = true, silent = false})