local wezterm = require("wezterm")

config = wezterm.config_builder()

config = {
  automatically_reload_config = true,
  window_decorations = "RESIZE",
  default_cursor_style = "BlinkingBar",
  color_scheme = "Catppuccin Mocha",
  font = wezterm.font("FiraCode Nerd Font Mono", { weight = "Bold" } ),
  font_size = 12.5,
}

return config
