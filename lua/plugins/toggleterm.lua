return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function ()
        require("toggleterm").setup {
            size = 15,
            open_mapping = [[<C-\>]], -- mapping to toggle terminal
            shade_terminals = true,
            direction = "float",      -- options: 'horizontal', 'vertical', 'tab', 'float'
            float_opts = {
                border = "curved",      -- rounded borders
            },
        }

        -- Optional: helper keymaps for specific layouts
        vim.keymap.set("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal<CR>", { desc = "Horizontal Terminal" })
        vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical<CR>", { desc = "Vertical Terminal" })
        vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm direction=tab<CR>", { desc = "Tab Terminal" })
        vim.keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<CR>", { desc = "Float Terminal" })
    end

}
