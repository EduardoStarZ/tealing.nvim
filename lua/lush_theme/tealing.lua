local lush = require('lush')
local hsl = lush.hsl -- We'll use hsl a lot so its nice to bind it separately

local teal  =		hsl("#39B786") -- Vim has a mapping, <n>C-a and <n>C-x to
local pine =		hsl("#44856C")
local orange =		hsl("#B86539")  -- increment or decrement integers, or
local red  =		hsl("#B8393A")  -- you can just type them normally.
local everglade =	hsl("#1C3831")
local cable_green = hsl("#23332D")
local dark_gray =	hsl("#212121")
local white =		hsl("#8A8A80")

---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
	local sym = injected_functions.sym

    return {
    Normal { bg = dark_gray, fg = teal },-- Goodbye gray, hello blue!
    CursorLine { bg = dark_gray, fg = orange }, -- lighten() can also be called via li()
    Visual { fg = cable_green, bg = orange }, -- Try pressing v and selecting some text
    Comment { fg = everglade.de(10).li(18).ro(-10) },
    CursorCollumn { fg = red}, -- CursorColumn is linked to CursorLine
    LineNr { fg= pine , gui = "bold" },
	LineNrBelow { LineNr , gui="italic" },
    LineNrAbove { LineNr, gui="italic" },
    CursorLineNr { LineNr },
    search_base  { bg = teal, fg = red },
    Search       { search_base },
    IncSearch    { search_base },

    Directory {fg = orange},
	Define {fg = teal},
    Conditional {fg = orange},
	Type {fg = red, gui="bold"},
	Function {fg = orange, gui="italic"},
	Keyword {fg = red, gui="bold"},
    String {fg = teal, gui="bold"},
    Delimiter {fg = white, gui="bold"},
	Identifier {fg = orange, gui="underline,italic"},
	Title {fg = white, gui="underline"},
	Macro {fg = red},
	StatusLine {bg = teal, fg= orange},
	ModeMsg {fg = orange},
	Error {fg = dark_gray, bg = red},
    TelescopeNormal {fg = pine},
	TelescopePromptBorder {fg = orange},
	TelescopePromptNormal {fg = teal, gui="bold"},
	TelescopePromptTitle {fg = red},
    TelescopeResultsBorder {fg = orange, gui="bold"},
    TelescopeResultsTitle {fg = red},
	TelescopeSelection {fg = red},
	TelescopePreviewBorder {fg = orange},
    TelescopePreviewTitle {fg = red},
	TelescopeMatching {fg = orange},
	WinSeparator {fg = orange },
	sym"@variable.builtin" {fg = teal},
	sym"@variable" {fg = orange},
    sym"@lsp.type.macro" {fg = red},
    sym"@lsp.type.comment" {Comment},
    sym"@lsp.type.conditional" {Conditional},
    sym"@lsp.type.number" {fg = pine},
    sym"@string.escape" {fg = red.li(18), gui="underline"},
    sym"@character.special" {fg = orange.li(18)},
	sym"@lsp.type.parameter" {fg = red, gui="bold,italic"},
	sym"@lsp.type.decorator" {fg = teal, gui="bold,italic"},
	sym"@lsp.type.typeParameter" {fg = orange},
	sym"@lsp.type.type" {fg = orange},
	sym"@lsp.type.enum" {fg = teal, gui="bold,underline"},
	sym"@lsp.type.enumMember" {fg = teal},
	Structure {fg = teal},
    sym"@lsp.type.struct" {fg = teal, gui="bold,underline"},
	sym"@lsp.type.class" {fg = teal, gui="bold,underline"},
	sym"@lsp.type.interface" {fg = orange, gui="bold,underline"},
    sym"@lsp.type.operator" {fg = orange, gui="bold"},
}
end)

-- Return our parsed theme for use and that's the basics of using Lush!
-- Th parsed theme can be used as a neovim theme, or extended further via Lush,
-- or used elsewhere such as in other lua runtimes.
return theme
