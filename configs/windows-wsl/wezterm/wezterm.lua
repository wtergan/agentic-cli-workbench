local wezterm = require("wezterm")

local home = wezterm.home_dir or os.getenv("USERPROFILE") or ""
local wezterm_config_dir = home .. "\\.config\\wezterm"

local function read_file(path)
  local file = io.open(path, "r")
  if not file then
    return nil
  end

  local contents = file:read("*a")
  file:close()
  return contents
end

local function read_trimmed_file(path)
  local contents = read_file(path)
  if not contents then
    return nil
  end

  return (contents:gsub("%s+$", ""))
end

local function theme_script_candidates()
  local candidates = {
    wezterm_config_dir .. "\\dynamic-theme-current.sh",
  }
  local mode = read_trimmed_file(wezterm_config_dir .. "\\dynamic-theme-mode.txt")
  if mode == "light" or mode == "dark" then
    candidates[#candidates + 1] = wezterm_config_dir .. "\\dynamic-theme-" .. mode .. ".sh"
  end

  return candidates
end

local function parse_dynamic_theme(path)
  local contents = read_file(path)
  if not contents then
    return nil
  end

  local palette_line = contents:match("]4;([^\n]+)")
  local foreground, background, cursor = contents:match("]10;(#[0-9A-Fa-f]+);(#[0-9A-Fa-f]+);(#[0-9A-Fa-f]+)")
  local selection_bg = contents:match("]17;(#[0-9A-Fa-f]+)")
  local selection_fg = contents:match("]19;(#[0-9A-Fa-f]+)")

  if not palette_line or not foreground or not background or not cursor then
    return nil
  end

  local palette = {}
  for index, color in palette_line:gmatch("(%d+);(#[0-9A-Fa-f]+)") do
    palette[tonumber(index)] = color
  end

  local ansi = {}
  local brights = {}
  for index = 0, 7 do
    if not palette[index] then
      return nil
    end
    ansi[#ansi + 1] = palette[index]
  end

  for index = 8, 15 do
    if not palette[index] then
      return nil
    end
    brights[#brights + 1] = palette[index]
  end

  return {
    foreground = foreground,
    background = background,
    cursor_bg = cursor,
    cursor_fg = background,
    cursor_border = cursor,
    selection_bg = selection_bg,
    selection_fg = selection_fg,
    ansi = ansi,
    brights = brights,
  }
end

local dynamic_colors
for _, candidate in ipairs(theme_script_candidates()) do
  dynamic_colors = parse_dynamic_theme(candidate)
  if dynamic_colors then
    break
  end
end

return {
  -- Launch WSL Ubuntu and start a zsh login shell in Linux home.
  default_prog = { "wsl.exe", "-d", "Ubuntu", "--cd", "~", "--", "zsh", "-l" },
  -- Optional: add a local font directory if you keep Nerd Fonts outside the
  -- system font registry.
  -- font_dirs = { "C:\\Users\\YOU\\Downloads\\IosevkaTerm" },
  font = wezterm.font_with_fallback({
    -- Primary coding font + full Nerd Font glyph coverage.
    "IosevkaTerm Nerd Font Mono",
    "IosevkaTerm Nerd Font",
    -- Keep robust fallback chain.
    "Cascadia Mono",
    "JetBrains Mono",
    "Consolas",
    "Symbols Nerd Font Mono",
  }),
  font_rules = {
    {
      intensity = "Normal",
      italic = false,
      font = wezterm.font_with_fallback({
        { family = "IosevkaTerm Nerd Font Mono", weight = "Bold" },
        { family = "IosevkaTerm Nerd Font", weight = "Bold" },
        { family = "Cascadia Mono", weight = "Bold" },
        { family = "JetBrains Mono", weight = "Bold" },
        { family = "Consolas", weight = "Bold" },
        "Symbols Nerd Font Mono",
      }),
    },
  },
  font_size = 13.0,
  colors = dynamic_colors or {
    foreground = "#E6E9EF",
  },
  bold_brightens_ansi_colors = true,
  window_background_opacity = 1.0,
  -- Include title bar so window can be dragged normally
  window_decorations = "TITLE | RESIZE",
  window_padding = {
    left = 8,
    right = 8,
    top = 8,
    bottom = 8,
  },
  hide_tab_bar_if_only_one_tab = true,
  enable_scroll_bar = false,
  keys = {
    { key = "v", mods = "CTRL", action = wezterm.action.PasteFrom("Clipboard") },
  },
}
