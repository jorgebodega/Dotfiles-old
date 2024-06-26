return {
  mode = { "n", "v" },
  e = {
    name = "[File] Explorer",
    f = { ":Neotree toggle float<CR>", "Float File Explorer" },
    l = { ":Neotree toggle left<CR>", "Left File Explorer" },
    r = { ":Neotree toggle right<CR>", "Right File Explorer" },
  },
  l = {
    name = "LSP",
    a = { ":lua vim.lsp.buf.code_action()<cr>", "Code Action" },
    d = { ":lua vim.lsp.buf.definition()<cr>", "Definition" },
    D = { ":lua vim.lsp.buf.declaration()<cr>", "Declaration" },
    i = { ":lua vim.lsp.buf.implementation()<cr>", "Implementation" },
    o = { ":lua vim.lsp.buf.type_definition()<cr>", "Type Definition" },
    R = { ":Telescope lsp_references<cr>", "References" },
    s = { ":lua vim.lsp.buf.signature_help()<cr>", "Display Signature Information" },
    r = { ":lua vim.lsp.buf.rename()<cr>", "Rename all references" },
    f = { ":lua vim.lsp.buf.format()<cr>", "Format" },
    K = { ":lua vim.lsp.buf.hover()<cr>", "Hover" },
    l = { ":TroubleToggle document_diagnostics<cr>", "Document Diagnostics (Trouble)" },
    L = { ":TroubleToggle workspace_diagnostics<cr>", "Workspace Diagnostics (Trouble)" },
    w = { ":Telescope diagnostics<cr>", "Diagnostics" },
    t = { [[ <Esc>:lua require('telescope').extensions.refactoring.refactors()<CR>]], "Refactor" },
    h = { ":lua require('config.utils').toggle_inlay_hints()<CR>", "Toggle Inlay Hints" },
  },
  s = {
    name = "Search",
    f = { ":Telescope find_files<cr>", "Find File (CWD)" },
    h = { ":Telescope help_tags<cr>", "Find Help" },
    H = { ":Telescope highlights<cr>", "Find highlight groups" },
    M = { ":Telescope man_pages<cr>", "Man Pages" },
    o = { ":Telescope oldfiles<cr>", "Open Recent File" },
    R = { ":Telescope registers<cr>", "Registers" },
    t = { ":Telescope live_grep<cr>", "Live Grep" },
    T = { ":Telescope grep_string<cr>", "Grep String" },
    C = { ":Telescope commands<cr>", "Commands" },
    l = { ":Telescope resume<cr>", "Resume last search" },
    c = { ":Telescope git_commits<cr>", "Git commits" },
    B = { ":Telescope git_branches<cr>", "Git branches" },
    m = { ":Telescope git_status<cr>", "Git status" },
    S = { ":Telescope git_stash<cr>", "Git stash" },
    z = { ":Telescope zoxide list<cr>", "Zoxide" },
    e = { ":Telescope frecency<cr>", "Frecency" },
    b = { ":Telescope buffers<cr>", "Buffers" },
    p = { ":AerialToggle!<cr>", "Areal Toggle" },
  },
}
