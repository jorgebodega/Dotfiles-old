local map = require("utils").map

-- Quickfix mappings
map("n", "<leader>ck", ":cexpr []<cr>")
map("n", "<leader>cc", ":cclose <cr>")
map("n", "<leader>co", ":copen <cr>")
map("n", "<leader>cf", ":cfdo %s/")
map("n", "<leader>cp", ":cprev<cr>zz")
map("n", "<leader>cn", ":cnext<cr>zz")

-- buffer navigation
map("n", "<leader>bp", ":bprev<cr>")
map("n", "<leader>bn", ":bnext<cr>")
map("n", "<leader>bd", ":bdelete<cr>")

-- tab navigation
map("n", "<leader>tp", ":tabprevious<cr>")
map("n", "<leader>tn", ":tabnext<cr>")
map("n", "<leader>td", ":tabclose<cr>")

-- resize with arrows
map("n", "<C-Up>", ":resize -2<CR>")
map("n", "<C-Down>", ":resize +2<CR>")
map("n", "<C-Left>", ":vertical resize -2<CR>")
map("n", "<C-Right>", ":vertical resize +2<CR>")
