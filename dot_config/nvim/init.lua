-- bootstrap lazy.nvim, LazyVim and your plugins
if vim.g.vscode then
  -- VSCode extension
  -- <leader> key
  vim.g.mapleader = " "
  -- clear search highlightning
  vim.keymap.set("n", "<Esc>", ":nohlsearch<cr>")
  -- search ignoring case
  vim.opt.ignorecase = true
  vim.opt.smartcase = true
  -- sync system clipboard
  vim.opt.clipboard = "unnamedplus"
  -- vim.opt.scrolloff = 4
else
  -- ordinary Neovim
  require("config.lazy")
end
