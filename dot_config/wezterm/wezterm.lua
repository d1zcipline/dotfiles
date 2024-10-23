local wezterm = require("wezterm")
local config = wezterm.config_builder()

config = {
  color_scheme = 'GitHub Dark',
  colors = {
    foreground = '#D4D4D4',
  },
  font = wezterm.font {
    family = "Mononoki Nerd Font",
    weight = "Bold",
    harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },
  },

  font_size = 20,
  enable_tab_bar = false,

  window_decorations = "RESIZE",
  window_close_confirmation = "NeverPrompt",
  window_background_opacity = 0.9,
  macos_window_background_blur = 16,
}

return config
