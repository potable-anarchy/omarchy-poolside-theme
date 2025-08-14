-- Poolside Theme for Neovim
local colors = {
  bg = '#f8fafc',
  fg = '#1e293b',
  primary = '#0ea5e9',
  secondary = '#fb923c',
  accent = '#fbbf24',
  dark = '#0369a1',
  light_blue = '#38bdf8',
  gray = '#475569',
  light_gray = '#cbd5e1',
  white = '#ffffff',
  red = '#fb923c',
  green = '#0ea5e9',
  yellow = '#fbbf24',
  blue = '#0ea5e9',
  magenta = '#fb923c',
  cyan = '#0ea5e9',
}

local M = {}

function M.setup()
  vim.cmd('highlight clear')
  
  local highlights = {
    Normal = { fg = colors.fg, bg = colors.bg },
    NormalFloat = { fg = colors.fg, bg = colors.bg },
    Comment = { fg = colors.gray, italic = true },
    Constant = { fg = colors.secondary },
    String = { fg = colors.accent },
    Character = { fg = colors.accent },
    Number = { fg = colors.secondary },
    Boolean = { fg = colors.primary },
    Float = { fg = colors.secondary },
    Identifier = { fg = colors.fg },
    Function = { fg = colors.primary, bold = true },
    Statement = { fg = colors.dark, bold = true },
    Conditional = { fg = colors.dark },
    Repeat = { fg = colors.dark },
    Label = { fg = colors.primary },
    Operator = { fg = colors.gray },
    Keyword = { fg = colors.dark, bold = true },
    Exception = { fg = colors.secondary },
    PreProc = { fg = colors.primary },
    Include = { fg = colors.primary },
    Define = { fg = colors.primary },
    Macro = { fg = colors.primary },
    PreCondit = { fg = colors.primary },
    Type = { fg = colors.primary },
    StorageClass = { fg = colors.dark },
    Structure = { fg = colors.primary },
    Typedef = { fg = colors.primary },
    Special = { fg = colors.secondary },
    SpecialChar = { fg = colors.secondary },
    Tag = { fg = colors.primary },
    Delimiter = { fg = colors.gray },
    SpecialComment = { fg = colors.gray, italic = true },
    Debug = { fg = colors.secondary },
    Underlined = { underline = true },
    Ignore = { fg = colors.light_gray },
    Error = { fg = colors.secondary, bg = colors.bg },
    Todo = { fg = colors.accent, bg = colors.bg, bold = true },
    
    -- UI elements
    LineNr = { fg = colors.light_gray },
    CursorLineNr = { fg = colors.primary, bold = true },
    CursorLine = { bg = colors.white },
    ColorColumn = { bg = colors.white },
    SignColumn = { bg = colors.bg },
    Visual = { bg = colors.light_blue, fg = colors.white },
    VisualNOS = { bg = colors.light_blue },
    Search = { bg = colors.accent, fg = colors.bg },
    IncSearch = { bg = colors.primary, fg = colors.white },
    
    -- Statusline
    StatusLine = { fg = colors.white, bg = colors.primary },
    StatusLineNC = { fg = colors.gray, bg = colors.light_gray },
    
    -- Tabline
    TabLine = { fg = colors.gray, bg = colors.light_gray },
    TabLineFill = { bg = colors.light_gray },
    TabLineSel = { fg = colors.white, bg = colors.primary },
    
    -- Popup menu
    Pmenu = { fg = colors.fg, bg = colors.white },
    PmenuSel = { fg = colors.white, bg = colors.primary },
    PmenuSbar = { bg = colors.light_gray },
    PmenuThumb = { bg = colors.gray },
    
    -- Diff
    DiffAdd = { fg = colors.primary, bg = colors.bg },
    DiffChange = { fg = colors.accent, bg = colors.bg },
    DiffDelete = { fg = colors.secondary, bg = colors.bg },
    DiffText = { fg = colors.accent, bg = colors.bg, bold = true },
    
    -- Git signs
    GitSignsAdd = { fg = colors.primary },
    GitSignsChange = { fg = colors.accent },
    GitSignsDelete = { fg = colors.secondary },
  }
  
  for group, hl in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, hl)
  end
end

return M