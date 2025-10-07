-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- Better tabs
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false

-- Nerd fonts for powerlevel 10k
config.font = wezterm.font('CaskaydiaCove NFP', {weight="DemiLight"})

-- Smaller fonts
config.font_size = 10

-- Cursor style
config.default_cursor_style = 'BlinkingBar'
config.animation_fps = 1
config.cursor_blink_ease_in = 'Constant'
config.cursor_blink_ease_out = 'Constant'
config.cursor_blink_rate = 500

-- Disable ligatures
config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }

-- and finally, return the configuration to wezterm
return config
