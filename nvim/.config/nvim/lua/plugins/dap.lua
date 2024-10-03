return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          ["dK"] = { function() require("dap").up() end, desc = "Move up in stacktrace" },
          ["dJ"] = { function() require("dap").down() end, desc = "Move down in stacktrace" },
        },
      },
    },
  },
}
