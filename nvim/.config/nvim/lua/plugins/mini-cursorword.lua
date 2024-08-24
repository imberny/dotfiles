---@type LazySpec
return {
  {
    "echasnovski/mini.cursorword",
    version = "*",
    opts = function(_, _) require("mini.cursorword").setup() end,
  },
  -- Disable competing core plugin
  { "vim-illuminate", optional = true, enabled = false },
}
