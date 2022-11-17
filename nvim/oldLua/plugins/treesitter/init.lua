require("nvim-treesitter.configs").setup {
  ensure_installed = {
    "javascript",
    "jsdoc",
    "json",
    "lua",
    "markdown",
    "python",
    "typescript",
  },
  highlight = {
    enable = true,
    use_languagetree = true,
  },
  indent = {
    enable = true,
  },
  autotag = {
    enable = true,
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
  refactor = {
    highlight_definitions = { enable = true },
    highlight_current_scope = { enable = false },
  },
}
