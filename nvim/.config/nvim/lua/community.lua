-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- editor
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.recipes.auto-session-restore" },
  -- language
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.rust" },
  -- { import = "astrocommunity.pack.godot" },
  -- import/override with your plugins folder

  { import = "astrocommunity.icon.mini-icons" },

  -- { import = "astrocommunity.file-explorer.oil-nvim" },
}
