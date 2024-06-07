return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  tag = "0.1.6",
  config = function()
    -- local builtin = require("telescope.builtin")
    -- local keymap = vim.keymap
    -- keymap.set("n", "<leader>ff", builtin.find_files, {})
    -- keymap.set("n", "<leader>fg", builtin.live_grep, {})

    local actions = require("telescope.actions")
    require("telescope").setup({
      defaults = {
        mappings = {
          i = {
            ["esc"] = actions.close,
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist,
          },
        },
        file_ignore_patterns = {
          "codegen.ts",
          ".git",
          "lazy-lock.json",
          "*-lock.yaml",
          "node_modules",
          "%.lock",
        },
        dynamic_preview_title = true,
        path_display = { "smart" },
      },
      pickers = {
        find_files = {
          hidden = true,
        },
      },
      layout_config = {
        horizontal = {
          preview_cutoff = 100,
          preview_width = 0.5,
        },
      },
    })
  end,
}
