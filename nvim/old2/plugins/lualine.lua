return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      options = {
        theme = "catppuccin",
        globalstatus = true,
      },
    })
  end,
  event = { "BufNewFile", "BufReadPost", "VeryLazy" },
}
