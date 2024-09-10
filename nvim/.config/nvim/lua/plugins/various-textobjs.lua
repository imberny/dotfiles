return {
  "chrisgrieser/nvim-various-textobjs",
  event = "UIEnter",
  opts = {
    useDefaultKeymaps = true,
    -- disable restOfParagraph keymap, I prefer flash remote
    disabledKeymaps = { "r" },
  },
}
