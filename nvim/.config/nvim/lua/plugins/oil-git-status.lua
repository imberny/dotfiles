return {
  {
    "refractalize/oil-git-status.nvim",

    dependencies = {
      "stevearc/oil.nvim",
    },

    config = true,
    opts = function(_, _)
      require("oil").setup {
        win_options = {
          signcolumn = "yes:2",
        },
      }
    end,
  },
}
