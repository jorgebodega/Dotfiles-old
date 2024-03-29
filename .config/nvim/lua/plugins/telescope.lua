return {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  config = function(_, opts)
    local telescope = require "telescope"
    telescope.setup(opts)

    -- astronvim.conditional_func(telescope.load_extension, pcall(require, 'notify'), 'notify')
    -- astronvim.conditional_func(telescope.load_extension, pcall(require, 'aerial'), 'aerial')
    -- astronvim.conditional_func(telescope.load_extension, astronvim.is_available 'telescope-fzf-native.nvim', 'fzf')
  end,
  dependencies = {
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
  },
  opts = function()
    local actions = require "telescope.actions"

    return {
      defaults = {
        -- prompt_prefix = string.format('%s ', astronvim.get_icon 'Search'),
        -- selection_caret = string.format('%s ', astronvim.get_icon 'Selected'),
        path_display = { "truncate" },
        sorting_strategy = "ascending",
        layout_config = {
          horizontal = {
            prompt_position = "top",
            preview_width = 0.55,
          },
          vertical = {
            mirror = false,
          },
          width = 0.87,
          height = 0.80,
          preview_cutoff = 120,
        },
        mappings = {
          i = {
            ["<C-n>"] = actions.cycle_history_next,
            ["<C-p>"] = actions.cycle_history_prev,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
          },
          n = { ["q"] = actions.close },
        },
      },
    }
  end,
  version = "^0.1",
}
