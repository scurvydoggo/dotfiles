local wez = require('wezterm')

local config = {}
if wez.config_builder then
  config = wez.config_builder()
end

-------------------
-- Settings
-------------------
config.color_scheme = 'Catppuccin Mocha'
config.font = wez.font_with_fallback({
  'MesloLGS NF',
  'Fira Code'
})
config.initial_rows = 85
config.initial_cols = 240
config.color_scheme = 'dawnfox'
config.window_decorations = 'RESIZE'
config.window_close_confirmation = 'AlwaysPrompt'
config.scrollback_lines = 10000

-------------------
-- Keys
-------------------
config.leader = {key='a', mods='CTRL', timeout_milliseconds=1000}
config.keys = {
  -- Split Panes
  { key = '|', mods = 'LEADER|SHIFT', action = wez.action.SplitHorizontal { domain = 'CurrentPaneDomain' }, },
  { key = '-', mods = 'LEADER', action = wez.action.SplitVertical { domain = 'CurrentPaneDomain' }, },
  -- Navigate Panes
  { key = 'h', mods = 'LEADER', action = wez.action.ActivatePaneDirection 'Left', },
  { key = 'j', mods = 'LEADER', action = wez.action.ActivatePaneDirection 'Down', },
  { key = 'k', mods = 'LEADER', action = wez.action.ActivatePaneDirection 'Up', },
  { key = 'l', mods = 'LEADER', action = wez.action.ActivatePaneDirection 'Right', },
  -- Swap Panes
  { key = 's', mods = 'LEADER', action = wez.action.PaneSelect { mode = 'SwapWithActiveKeepFocus' } },
  -- Rotate Panes
  { key = 'r', mods = 'LEADER', action = wez.action.RotatePanes 'Clockwise' },
  -- Resize Panes
  { key = 'h', mods = 'LEADER', action = wez.action.AdjustPaneSize { 'Left', 5 } },
  { key = 'l', mods = 'LEADER', action = wez.action.AdjustPaneSize { 'Right', 5 } },
}

return config
