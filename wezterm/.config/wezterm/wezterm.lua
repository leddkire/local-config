-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 13.20
config.color_scheme = 'One Light (base16)'
local font_name = 'RobotoMono Nerd Font'
config.window_frame = {
    font_size = 9.5,
    font = wezterm.font(font_name)
}
--config.font = wezterm.font('Source Code Pro for Powerline')
config.font = wezterm.font(font_name)
config.line_height = 1.15
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

config.scrollback_lines = 10000
config.enable_scroll_bar = true

local smart_splits = wezterm.plugin.require('https://github.com/mrjones2014/smart-splits.nvim')
-- you can put the rest of your Wezterm config here
smart_splits.apply_to_config(config, {
  -- the default config is here, if you'd like to use the default keys,
  -- you can omit this configuration table parameter and just use
  -- smart_splits.apply_to_config(config)

  -- directional keys to use in order of: left, down, up, right
  direction_keys = { 'h', 'j', 'k', 'l' },
  -- if you want to use separate direction keys for move vs. resize, you
  -- can also do this:
  -- direction_keys = {
  --   move = { 'h', 'j', 'k', 'l' },
  --   resize = { 'LeftArrow', 'DownArrow', 'UpArrow', 'RightArrow' },
  -- },
  -- modifier keys to combine with direction_keys
  modifiers = {
    move = 'CTRL', -- modifier to use for pane movement, e.g. CTRL+h to move left
    resize = 'META', -- modifier to use for pane resize, e.g. META+h to resize to the left
  },
  -- log level to use: info, warn, error
  log_level = 'info',
})

-- Finally, return the configuration to wezterm:
return config
