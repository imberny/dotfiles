return {
  {
    "refractalize/oil-git-status.nvim",

    dependencies = {
      "stevearc/oil.nvim",
    },

    config = true,
  },
  {
    "stevearc/oil.nvim",
    opts = {
      win_options = {
        signcolumn = "yes:2",
      },
    },
  },
}
