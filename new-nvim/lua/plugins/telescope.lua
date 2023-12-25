return {
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    config = function(_, opts)
      local telescope = require("telescope")

      telescope.setup(opts)

      telescope.load_extension("frecency")
      telescope.load_extension("fzf")
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-frecency.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      "nvim-tree/nvim-web-devicons",
    },
    lazy = true,
    opts = {
      file_ignore_patterns = { "%.git/." },
    },
  },
}
