return {
  "AstroNvim/astrocommunity",
  -- editor
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.motion.nvim-tree-pairs" },
  { import = "astrocommunity.motion.marks-nvim" },
  { import = "astrocommunity.editing-support.multiple-cursors-nvim" },
  -- { import = "astrocommunity.diagnostics.error-lens-nvim" },

  { import = "astrocommunity.utility.telescope-live-grep-args-nvim" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.split-and-window.mini-map" },
  { import = "astrocommunity.recipes.auto-session-restore" },
  { import = "astrocommunity.workflow.hardtime-nvim" },

  -- language packs
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.python-ruff" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.cmake" },
  { import = "astrocommunity.pack.cs" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.xml" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.sql" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.typescript-all-in-one" },
  { import = "astrocommunity.pack.godot" },

  { import = "astrocommunity.test.neotest" },

  -- ui customization
  { import = "astrocommunity.colorscheme.everforest" },
  { import = "astrocommunity.bars-and-lines.lualine-nvim" },
  { import = "astrocommunity.scrolling.neoscroll-nvim" },
  { import = "astrocommunity.indent.mini-indentscope" },
  { import = "astrocommunity.icon.mini-icons" },
}
