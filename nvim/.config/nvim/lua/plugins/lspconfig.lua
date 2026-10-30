return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            -- autocompletion
            vim.opt.completeopt = { "menuone", "noselect", "popup" }

            vim.api.nvim_create_autocmd("LspAttach", {
                callback = function(args)
                    local client = vim.lsp.get_client_by_id(args.data.client_id)

                    if client and client:supports_method "textDocument/completion" then
                        vim.lsp.completion.enable(true, client.id, args.buf, {
                            autotrigger = true,
                        })
                    end
                end,
            })

            vim.keymap.set("i", "<C-Space>", function() vim.lsp.completion.get() end, { desc = "Autocomplete" })

            vim.keymap.set("n", "<leader>lo", ":lopen<cr>", { desc = "Open location list", silent = true })
            vim.keymap.set("n", "<leader>lc", ":lclose<cr>", { desc = "Close location list", silent = true })

            vim.keymap.set("n", "<A-s>", function() vim.lsp.buf.signature_help() end, { desc = "Signature help" })
            vim.keymap.set("i", "<A-s>", function() vim.lsp.buf.signature_help() end, { desc = "Signature help" })
            vim.keymap.set("n", "<leader>ls", function() vim.lsp.buf.signature_help() end, { desc = "Signature help" })

            vim.keymap.set(
                "n",
                "<leader>lS",
                function() vim.lsp.buf.document_symbol() end,
                { desc = "Document symbols" }
            )

            vim.keymap.set("i", "<C-j>", function() -- intercept C-j to move down completion list
                if vim.fn.pumvisible() == 1 then return "<C-n>" end
                return "<C-j>"
            end, { expr = true })

            vim.keymap.set("i", "<C-k>", function() -- intercept C-k to move up completion list
                if vim.fn.pumvisible() == 1 then return "<C-p>" end
                return "<C-k>"
            end, { expr = true })

            vim.keymap.set("i", "<Enter>", function() -- intercept Enter to accept completion choice
                if vim.fn.pumvisible() == 1 then return "<C-y>" end
                return "<Enter>"
            end, { expr = true })

            vim.keymap.set("i", "<C-Enter>", function() -- intercept C-Enter to accept completion choice
                if vim.fn.pumvisible() == 1 then return "<C-y>" end
                return "<C-Enter>"
            end, { expr = true })

            -- python
            vim.lsp.config("pyright", {
                settings = {
                    python = {
                        analysis = {
                            typeCheckingMode = "basic",
                            autoSearchPaths = true,
                            useLibraryCodeForTypes = true,
                            diagnosticMode = "workspace",
                        },
                    },
                },
            })

            vim.lsp.enable { "pyright", "ruff" }

            -- gdscript
            vim.lsp.enable { "gdscript" }
        end,
    },
}
