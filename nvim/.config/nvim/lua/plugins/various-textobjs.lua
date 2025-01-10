return {
  "chrisgrieser/nvim-various-textobjs",
  event = "UIEnter",
  opts = {
    keymaps = {
      useDefaults = true,
      -- disable restOfParagraph keymap, I prefer flash remote
      disabledDefaults = { "r" },
    },
  },
}
