-- bootstrap lazy.nvim, LazyVim and your plugins
if vim.g.vscode then
  -- VSCode extension
  require("config.lazy")
  -- -- <leader> key
  -- vim.g.mapleader = " "
  -- -- clear search highlightning
  -- vim.keymap.set("n", "<Esc>", ":nohlsearch<cr>")
  -- -- search ignoring case
  -- vim.opt.ignorecase = true
  -- vim.opt.smartcase = true
  -- -- sync system clipboard
  -- vim.opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus"
  -- -- vim.opt.scrolloff = 4
else
  -- ordinary Neovim
  require("config.lazy")
end
