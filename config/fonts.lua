---@type Wezterm
local wezterm = require 'wezterm'

local font_family = 'Maple Mono'
-- local font_family = 'JetBrainsMono Nerd Font'
local font_size = 16
if require 'config.appearance'.enable_wayland then
  font_size = font_size - 4
end

---@type Config
return {
  font = wezterm.font {
    family = font_family,
    weight = 'Light',
  },
  font_size = font_size,

  freetype_load_target = 'Normal',
  freetype_render_target = 'Normal',
  warn_about_missing_glyphs = false,
}
