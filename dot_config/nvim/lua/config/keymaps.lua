local keymap = vim.keymap
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("i", "ол", "<ESC>", { desc = "Exit insert mode with jk (Russian)" })

keymap.set("n", "<ESC>", ":nohlsearch<CR>", { desc = "Disable hlsearch highlights" })

-- Visual --
-- Stay in indent mode
keymap.set("v", "<", "<gv^", opts)
keymap.set("v", ">", ">gv^", opts)
keymap.set("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap.set("x", "J", ":m '>+1<CR>gv=gv", opts)
keymap.set("x", "K", ":m '<-2<CR>gv=gv", opts)

keymap.set("n", "<C-h>", "<C-w>h", opts)
keymap.set("n", "<C-j>", "<C-w>j", opts)
keymap.set("n", "<C-k>", "<C-w>k", opts)
keymap.set("n", "<C-l>", "<C-w>l", opts)

-- Terminal --
-- Better terminal navigation
keymap.set("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap.set("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap.set("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap.set("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- diagnostic
keymap.set("n", "<C-j>", function()
	vim.diagnostic.goto_next()
end, opts)
