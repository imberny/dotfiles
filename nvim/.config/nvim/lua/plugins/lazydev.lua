return {
    {
        "folke/lazydev.nvim",
        ft = "lua",
        opts = {
            library = {
                { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                { path = "snacks.nvim", words = { "Snacks" } },
            },
        },
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = { "folke/lazydev.nvim" },
        config = function() vim.lsp.enable "lua_ls" end,
    },
}
