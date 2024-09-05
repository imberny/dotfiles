-- Adapted from: https://github.com/AstroNvim/astrocommunity/blob/main/lua/astrocommunity/file-explorer/oil-nvim/init.lua
---@type LazySpec
return {
  "stevearc/oil.nvim",
  cmd = "Oil",
  opts = {
    view_options = {
      show_hidden = true,
      columns = {
        {
          "icon",
          default_file = require("astroui").get_icon "DefaultFile",
          directory = require("astroui").get_icon "FolderClosed",
        },
      },
    },
  },

  dependencies = {
    {
      "AstroNvim/astrocore",
      opts = {
        mappings = {
          n = {
            ["<Leader>e"] = { function() require("oil").open() end, desc = "Open file explorer view" },
            ["-"] = { "<cmd>Oil<cr>", desc = "Open parent directory" },
            ["_"] = {
              function()
                local oil = require "oil"
                local cwd = oil.get_current_dir()
                oil.open(cwd)
              end,
              desc = "Open current working directory",
            },
          },
        },
        autocmds = {
          oil_s4ttings = {
            {
              event = "FileType",
              desc = "Disable view saving for oil buffers",
              pattern = "oil",
              callback = function(args) vim.b[args.buf].view_activated = false end,
            },
            {
              event = "User",
              pattern = "OilActionsPost",
              desc = "Close buffers when files are deleted in Oil",
              callback = function(args)
                if args.data.err then return end
                for _, action in ipairs(args.data.actions) do
                  if action.type == "delete" then
                    local _, path = require("oil.util").parse_url(action.url)
                    local bufnr = vim.fn.bufnr(path)
                    if bufnr ~= -1 then require("astrocore.buffer").wipe(bufnr, true) end
                  end
                end
              end,
            },
          },
        },
      },
    },
    {
      "rebelot/heirline.nvim",
      optional = true,
      dependencies = { "AstroNvim/astroui", opts = { status = { winbar = { enabled = { filetype = { "^oil$" } } } } } },
      opts = function(_, opts)
        if opts.winbar then
          local status = require "astroui.status"
          table.insert(opts.winbar, 1, {
            condition = function(self) return status.condition.buffer_matches({ filetype = "^oil$" }, self.bufnr) end,
            status.component.separated_path {
              padding = { left = 2 },
              max_depth = false,
              suffix = false,
              path_func = function(self) return require("oil").get_current_dir(self.bufnr) end,
            },
          })
        end
      end,
    },

    -- Disable neo-tree
    { "neo-tree.nvim", optional = true, enabled = false },
  },
}
