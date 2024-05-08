-- return {
--   -- add gruvbox
--   { "wittyjudge/gruvbox-material.nvim" },
--
--   -- Configure LazyVim to load gruvbox
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "gruvbox-material",
--     },
--   },
-- }

return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
    opts = {
      transparent_mode = true,
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}

-- return {
--   {
--     "neanias/everforest-nvim",
--     lazy = true,
--     priority = 1000,
--     opts = {
--       background = "hard",
--       transparent_background_level = 1,
--       disable_italic_comments = true,
--     },
--   },
--
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "everforest",
--     },
--   },
-- }
