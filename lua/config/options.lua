vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.colorcolumn = { "80", "120" }

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.wrap = false

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Synchronizes the system clipboard
-- with Neovim's clipboard.
vim.opt.clipboard = "unnamedplus"

vim.opt.scrolloff = 5

vim.opt.virtualedit = "block"

vim.opt.inccommand = "split"

vim.opt.ignorecase = true

vim.opt.termguicolors = true

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.diagnostic.config({
  virtual_text = true,  -- Disable inline errors
  signs = false,          -- Keep signs in the gutter (optional)
  underline = true,      -- Keep underlines for errors (optional)
  update_in_insert = false,  -- Don't update diagnostics while typing
})

-- tmux integration
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

