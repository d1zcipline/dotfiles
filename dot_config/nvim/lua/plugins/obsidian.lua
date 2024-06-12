return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  -- ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  event = {
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    "BufReadPre ~/obsidian/Knowledge Vault/**.md",
    "BufNewFile ~/obsidian/Knowledge Vault/**.md",
  },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
  },
  opts = {
    dir = "~/obsidian/Knowledge Vault",
    notes_subdir = "30 Knowledge Base",
    new_notes_location = "notes_subdir",
    daily_notes = {
      folder = "20 Calendar/Daily",
      template = "00 Meta/Templates/Calendar template",
    },
    completion = {
      nvim_cmp = true,
      min_chars = 2,
    },
    templates = {
      folder = "templates",
      date_format = "%Y-%m-%d",
      time_format = "%H:%M",
    },
    ---@param url string
    follow_url_func = function(url)
      -- Open the URL in the default web browser.
      vim.fn.jobstart({ "open", url }) -- Mac OS
    end,
    picker = {
      name = "telescope.nvim",
    },
    attachments = {
      img_folder = "00 Meta/Media",
      ---@param client obsidian.Client
      ---@param path obsidian.Path the absolute path to the image file
      ---@return string
      img_text_func = function(client, path)
        path = client:vault_relative_path(path) or path
        return string.format("![%s](%s)", path.name, path)
      end,
    },
  },
}
