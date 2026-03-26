local warp_dark = {}

warp_dark.colors = {
  bg = "#000000",
  fg = "#ffffff",
  bg_light = "#0a0a0a",
  bg_lighter = "#111111",
  fg_dim = "#808080",
  fg_darker = "#4a4a4a",
  accent = "#00c2ff",
  accent_secondary = "#b4fa72",
  accent_tertiary = "#ff8ffd",
  border = "#1a1a1a",
  border_focus = "#00c2ff55",

  syntax = {
    comment = "#616161",
    keyword = "#00c2ff",
    keyword_operator = "#a5d5fe",
    string = "#b4fa72",
    number = "#fefdc2",
    constant = "#fefdc2",
    func = "#d0d1fe",
    variable = "#ffffff",
    parameter = "#ffc4bd",
    type = "#fefdc2",
    property = "#c1e3fe",
    tag = "#ff8272",
    attribute = "#ff8ffd",
    punctuation = "#8e8e8e",
    operator = "#a5d5fe",
  },

  terminal = {
    black = "#616161",
    red = "#ff8272",
    green = "#b4fa72",
    yellow = "#fefdc2",
    blue = "#a5d5fe",
    magenta = "#ff8ffd",
    cyan = "#d0d1fe",
    white = "#f1f1f1",
    bright_black = "#8e8e8e",
    bright_red = "#ffc4bd",
    bright_green = "#d6fcb9",
    bright_yellow = "#fefdd5",
    bright_blue = "#c1e3fe",
    bright_magenta = "#ffb1fe",
    bright_cyan = "#e5e6fe",
    bright_white = "#feffff",
  },

  ui = {
    selection = "#00c2ff2a",
    cursor = "#00c2ff",
    line_number = "#3a3a3a",
    line_number_active = "#808080",
    indent_guide = "#1a1a1a",
    indent_guide_active = "#333333",
  }
}

warp_dark.setup = function()
  local colors = warp_dark.colors

  vim.cmd("hi! clear")
  vim.cmd("set background=dark")
  vim.g.colors_name = "warp-dark"

  vim.api.nvim_set_hl(0, "Normal", { bg = colors.bg, fg = colors.fg })
  vim.api.nvim_set_hl(0, "NormalNC", { bg = colors.bg, fg = colors.fg_dim })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = colors.bg_lighter, fg = colors.fg })
  vim.api.nvim_set_hl(0, "FloatBorder", { bg = colors.bg_lighter, fg = colors.border_focus })

  vim.api.nvim_set_hl(0, "Cursor", { bg = colors.accent, fg = colors.bg })
  vim.api.nvim_set_hl(0, "CursorLine", { bg = colors.bg_lighter, fg = colors.fg })
  vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.fg, bg = colors.bg_lighter })

  vim.api.nvim_set_hl(0, "LineNr", { fg = colors.ui.line_number, bg = colors.bg })
  vim.api.nvim_set_hl(0, "LineNrNC", { fg = colors.ui.line_number, bg = colors.bg })

  vim.api.nvim_set_hl(0, "Visual", { bg = colors.ui.selection })
  vim.api.nvim_set_hl(0, "VisualNOS", { bg = colors.ui.selection })

  vim.api.nvim_set_hl(0, "Pmenu", { bg = colors.bg_lighter, fg = colors.fg })
  vim.api.nvim_set_hl(0, "PmenuSel", { bg = colors.ui.selection })
  vim.api.nvim_set_hl(0, "PmenuSbar", { bg = colors.bg_light })
  vim.api.nvim_set_hl(0, "PmenuThumb", { bg = colors.border })

  vim.api.nvim_set_hl(0, "Comment", { fg = colors.syntax.comment, italic = true })
  vim.api.nvim_set_hl(0, "Keyword", { fg = colors.syntax.keyword })
  vim.api.nvim_set_hl(0, "String", { fg = colors.syntax.string })
  vim.api.nvim_set_hl(0, "Number", { fg = colors.syntax.number })
  vim.api.nvim_set_hl(0, "Constant", { fg = colors.syntax.constant })
  vim.api.nvim_set_hl(0, "Function", { fg = colors.syntax.func })
  vim.api.nvim_set_hl(0, "Variable", { fg = colors.syntax.variable })
  vim.api.nvim_set_hl(0, "Type", { fg = colors.syntax.type })
  vim.api.nvim_set_hl(0, "Property", { fg = colors.syntax.property })
  vim.api.nvim_set_hl(0, "Tag", { fg = colors.syntax.tag })
  vim.api.nvim_set_hl(0, "Operator", { fg = colors.syntax.operator })
  vim.api.nvim_set_hl(0, "Punctuation", { fg = colors.syntax.punctuation })

  vim.api.nvim_set_hl(0, "TabLineFill", { bg = colors.bg, fg = colors.border })
  vim.api.nvim_set_hl(0, "TabLineSel", { bg = colors.bg_lighter, fg = colors.fg })
  vim.api.nvim_set_hl(0, "TabLine", { bg = colors.bg, fg = colors.fg_dim })

  vim.api.nvim_set_hl(0, "StatusLine", { bg = colors.bg, fg = colors.fg_dim })
  vim.api.nvim_set_hl(0, "StatusLineNC", { bg = colors.bg, fg = colors.fg_darker })

  vim.api.nvim_set_hl(0, "VertSplit", { bg = colors.bg, fg = colors.border })
  vim.api.nvim_set_hl(0, "WinSeparator", { bg = colors.bg, fg = colors.border })

  vim.api.nvim_set_hl(0, "Search", { bg = colors.ui.selection })
  vim.api.nvim_set_hl(0, "IncSearch", { bg = colors.accent, fg = colors.bg })

  vim.api.nvim_set_hl(0, "Error", { fg = colors.terminal.red })
  vim.api.nvim_set_hl(0, "ErrorMsg", { fg = colors.terminal.red, bg = colors.bg })
  vim.api.nvim_set_hl(0, "WarningMsg", { fg = colors.terminal.yellow })
  vim.api.nvim_set_hl(0, "MoreMsg", { fg = colors.accent })
  vim.api.nvim_set_hl(0, "Question", { fg = colors.accent })
  vim.api.nvim_set_hl(0, "ModeMsg", { fg = colors.fg })

  vim.api.nvim_set_hl(0, "DiagnosticError", { fg = colors.terminal.red })
  vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = colors.terminal.yellow })
  vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = colors.accent })
  vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = colors.accent })

  vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = colors.accent_secondary })
  vim.api.nvim_set_hl(0, "GitSignsChange", { fg = colors.accent })
  vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = colors.terminal.red })
end

warp_dark.terminal_colors = function()
  local colors = warp_dark.colors
  vim.g.terminal_color_0 = colors.terminal.black
  vim.g.terminal_color_1 = colors.terminal.red
  vim.g.terminal_color_2 = colors.terminal.green
  vim.g.terminal_color_3 = colors.terminal.yellow
  vim.g.terminal_color_4 = colors.terminal.blue
  vim.g.terminal_color_5 = colors.terminal.magenta
  vim.g.terminal_color_6 = colors.terminal.cyan
  vim.g.terminal_color_7 = colors.terminal.white
  vim.g.terminal_color_8 = colors.terminal.bright_black
  vim.g.terminal_color_9 = colors.terminal.bright_red
  vim.g.terminal_color_10 = colors.terminal.bright_green
  vim.g.terminal_color_11 = colors.terminal.bright_yellow
  vim.g.terminal_color_12 = colors.terminal.bright_blue
  vim.g.terminal_color_13 = colors.terminal.bright_magenta
  vim.g.terminal_color_14 = colors.terminal.bright_cyan
  vim.g.terminal_color_15 = colors.terminal.bright_white
end

warp_dark.load = function()
  warp_dark.setup()
  warp_dark.terminal_colors()
end

return warp_dark
