return {
  "jakemason/ouroboros",
  ft = "cpp",
  dependencies = {
    {
      "nvim-lua/plenary.nvim",
    },
    {
      "AstroNvim/astrocore",
      opts = {
        mappings = {
          n = {
            ["gh"] = { "<cmd>Ouroboros<cr>", desc = "Switch to header/implementation" },
          },
        },
      },
    },
  },
}
