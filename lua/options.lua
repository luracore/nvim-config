-- Leader
vim.g.mapleader = " "

-- UI
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true
vim.opt.scrolloff = 999

-- Window behavior
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Editing
vim.opt.wrap = false
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.virtualedit = "block"

-- Search
vim.opt.ignorecase = true
vim.opt.inccommand = "split"

-- System
vim.opt.clipboard = "unnamedplus"

-- Keymaps

-- Formatting
vim.keymap.set("n", "<leader>=", "gg=G", {
  desc = "Format entire file (auto-indent)",
  silent = true,
})

-- Tabs
vim.keymap.set("n", "<leader><Tab>", ":tabnew<CR>", {
  desc = "Create new tab",
  silent = true,
})

vim.keymap.set("n", "<Tab>", "gt", {
  desc = "Go to next tab",
  silent = true,
})

vim.keymap.set("n", "<S-Tab>", "gT", {
  desc = "Go to previous tab",
  silent = true,
})

-- Terminal
vim.keymap.set("n", "<leader>t", ":terminal<CR>", {
  desc = "Open terminal",
  silent = true,
})

vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], {
  desc = "Exit terminal mode",
  silent = true,
})

-- Diagnostics (LSP)
vim.diagnostic.config({
  virtual_text = {
    spacing = 2,
    prefix = "●",
  },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})
