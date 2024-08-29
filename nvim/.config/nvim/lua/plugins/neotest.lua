return {
  "nvim-neotest/neotest",
  init = function()
    require("neotest").setup {
      adapters = {
        require "rustaceanvim.neotest",
      },
    }
  end,
}
