vim.cmd("hi clear")
vim.o.background = "dark"
vim.g.colors_name = "brass"

local hi = vim.api.nvim_set_hl

-- Editor
hi(0, "Normal",          { fg = "#e8e3d8", bg = "#0d0d0d" })
hi(0, "NormalFloat",     { fg = "#e8e3d8", bg = "#111111" })
hi(0, "CursorLine",      { bg = "#141414" })
hi(0, "CursorLineNr",    { fg = "#c8a96e", bold = true })
hi(0, "LineNr",          { fg = "#2a2a2a" })
hi(0, "SignColumn",      { bg = "#0d0d0d" })
hi(0, "ColorColumn",     { bg = "#111111" })
hi(0, "VertSplit",       { fg = "#2a2a2a" })
hi(0, "WinSeparator",    { fg = "#2a2a2a" })

-- Selection
hi(0, "Visual",          { bg = "#1a1a1a" })
hi(0, "IncSearch",       { fg = "#0d0d0d", bg = "#c8a96e" })
hi(0, "Search",          { fg = "#0d0d0d", bg = "#8a6f3e" })

-- Syntax
hi(0, "Comment",         { fg = "#8a8070", italic = true })
hi(0, "Keyword",         { fg = "#c8a96e", bold = true })
hi(0, "Function",        { fg = "#d4b87e" })
hi(0, "String",          { fg = "#7a8a6e" })
hi(0, "Number",          { fg = "#6e8aa0" })
hi(0, "Boolean",         { fg = "#6e8aa0" })
hi(0, "Constant",        { fg = "#6e8aa0" })
hi(0, "Type",            { fg = "#8a6e8a" })
hi(0, "Identifier",      { fg = "#e8e3d8" })
hi(0, "Statement",       { fg = "#c8a96e" })
hi(0, "PreProc",         { fg = "#8a6e8a" })
hi(0, "Special",         { fg = "#c8a96e" })
hi(0, "Error",           { fg = "#8a4f3e" })
hi(0, "Todo",            { fg = "#0d0d0d", bg = "#c8a96e", bold = true })
hi(0, "Underlined",      { underline = true })

-- Popup menu
hi(0, "Pmenu",           { fg = "#e8e3d8", bg = "#111111" })
hi(0, "PmenuSel",        { fg = "#0d0d0d", bg = "#c8a96e" })
hi(0, "PmenuSbar",       { bg = "#141414" })
hi(0, "PmenuThumb",      { bg = "#c8a96e" })

-- Status line
hi(0, "StatusLine",      { fg = "#e8e3d8", bg = "#111111" })
hi(0, "StatusLineNC",    { fg = "#8a8070", bg = "#0d0d0d" })

-- Tabs
hi(0, "TabLine",         { fg = "#8a8070", bg = "#111111" })
hi(0, "TabLineSel",      { fg = "#c8a96e", bg = "#0d0d0d" })
hi(0, "TabLineFill",     { bg = "#0d0d0d" })

-- Diagnostics
hi(0, "DiagnosticError", { fg = "#8a4f3e" })
hi(0, "DiagnosticWarn",  { fg = "#c8a96e" })
hi(0, "DiagnosticInfo",  { fg = "#6e8aa0" })
hi(0, "DiagnosticHint",  { fg = "#8a8070" })

-- Diff
hi(0, "DiffAdd",         { fg = "#7a8a6e", bg = "#0d0d0d" })
hi(0, "DiffDelete",      { fg = "#8a4f3e", bg = "#0d0d0d" })
hi(0, "DiffChange",      { fg = "#c8a96e", bg = "#0d0d0d" })
hi(0, "DiffText",        { fg = "#0d0d0d", bg = "#c8a96e" })
