return {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    -- config = function() vim.cmd [[colorscheme gruvbox]] end,
    opts = {
        terminal_colors = true, -- add neovim terminal colors
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
            strings = true,
            emphasis = true,
            comments = true,
            operators = false,
            folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = "", -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = true, -- doesn't work?
        transparent_mode = false,
    },
    config = function()
        -- For this to only work when activating gruvbox theme, need to put in an autocommand
        -- local function dim_hex_color(hex, percentage)
        --     -- Remove '#' if present
        --     hex = hex:gsub("#", "")
        --
        --     -- Parse channels to decimal numbers
        --     local r = tonumber(hex:sub(1, 2), 16)
        --     local g = tonumber(hex:sub(3, 4), 16)
        --     local b = tonumber(hex:sub(5, 6), 16)
        --
        --     -- Multiply by factor and clamp values between 0 and 255
        --     r = math.max(0, math.min(255, math.floor(r * percentage)))
        --     g = math.max(0, math.min(255, math.floor(g * percentage)))
        --     b = math.max(0, math.min(255, math.floor(b * percentage)))
        --
        --     -- Format back to a 6-digit hex string
        --     return string.format("#%02x%02x%02x", r, g, b)
        -- end
        -- local normal = vim.api.nvim_get_hl(0, { name = "Normal" })
        -- vim.api.nvim_set_hl(0, "NormalNC", {
        --     bg = dim_hex_color(string.format("#%06x", normal.bg), 0.5),
        -- }) -- Inactive split background
    end,
}
