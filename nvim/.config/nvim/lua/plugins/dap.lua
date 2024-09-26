return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          ["dk"] = { function() require("dap").up() end, desc = "Move up in stacktrace" },
          ["dj"] = { function() require("dap").down() end, desc = "Move down in stacktrace" },
        },
      },
    },
  },
}
