return {
  {
    "quarto-dev/quarto-nvim",
    ft = { "quarto" },
    dev = false,
    opts = {
      lspFeatures = {
        languages = {
          "python",
          "bash",
          "lua",
          "html",
        },
        completion = {
          enabled = true,
        },
      },
      codeRunner = {
        enabled = true,
      },
    },
    dependencies = {
      "jmbuhr/otter.nvim",
    },
    keymap = {
      hober = "K",
      definition = "gd",
    },
    config = function()
      local quarto = require("quarto")
      quarto.setup()
      vim.keymap.set("n", "<leader>qp", quarto.quartoPreview, { silent = true, noremap = true })
    end,
  },
}
