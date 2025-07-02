return {
    "mason-org/mason-lspconfig.nvim",
    dependencies = { "mason.nvim" },
    config = function()
        require("mason-lspconfig").setup({
            ensure_installed = { "gopls", "lua_ls", "pyright", "clangd" },
            automatic_enable = true
        })
    end,
}
