return {
    "neovim/nvim-lspconfig",
    config = function ()
        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { 'vim' },  -- Tell the server about the global 'vim'
                    },
                    workspace = {
                        library = vim.api.nvim_get_runtime_file("", true), -- Make the server aware of Neovim runtime files
                        checkThirdParty = false, -- Prevent annoying prompt about 3rd-party
                    },
                    telemetry = {
                        enable = false,  -- Disable telemetry
                    },
                },
            },
        }
    end
}
