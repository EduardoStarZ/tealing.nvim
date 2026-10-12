local lush = require('lush')
local hsl = lush.hsl 

local teal  =		hsl("#006D5B")
local light =		hsl("#00C4A4")
local pine =		hsl("#44856C")
local orange =		hsl("#B86539") 
local red  =		hsl("#B8393A")  
local pastel_red =	hsl("#B85355")
local everglade =	hsl("#1C3831")
local cable_green = hsl("#23332D")
local dark_gray =	hsl("#212121")
local white =		hsl("#8A8A80")

---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
	local sym = injected_functions.sym

    return {
    Normal { bg = dark_gray, fg = teal },
    CursorLine { bg = dark_gray, fg = nil }, 
    Visual { fg = cable_green, bg = orange },
    Comment { fg = everglade.de(10).li(18).ro(-10) },
    CursorCollumn { fg = red}, 
    LineNr { fg= pine , gui = "bold" },
	LineNrBelow { LineNr , gui="italic" },
    LineNrAbove { LineNr, gui="italic" },
    CursorLineNr { LineNr },
    search_base  { bg = teal, fg = red },
    Search       { search_base },
    IncSearch    { search_base },

    Directory {fg = orange},
	Define {fg = teal},
    Conditional {fg = pastel_red, gui="italic"},
	Type {fg = red, gui="bold"},
	Function {fg = orange, gui="italic"},
	Keyword {fg = pastel_red, gui="bold"},
    String {fg = pastel_red, gui="underline"},
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
	WinSeparator {fg = cable_green },
	sym"@variable.builtin" {fg = teal},
	sym"@variable" {fg = teal},
	sym"@lsp.type.namespace" {fg = orange},
    sym"@lsp.type.macro" {fg =  red},
    sym"@lsp.type.comment" {Comment},
    sym"@lsp.type.conditional" {Conditional},
    sym"@lsp.type.number" {fg = pine},
    sym"@string.escape" {String},
    sym"@character.special" {fg = orange.li(18)},
	sym"@lsp.type.parameter" {fg = red, gui="bold,italic"},
	sym"@lsp.type.decorator" {fg = teal, gui="bold,italic"},
	sym"@lsp.type.typeParameter" {fg = orange},
	sym"@lsp.type.type" {fg = orange},
	sym"@lsp.type.enum" {fg = teal, gui="bold,underline"},
	sym"@lsp.type.enumMember" {fg = pine},
	Structure {fg = teal},
    sym"@lsp.type.struct" {fg = pine, gui="bold,underline"},
	sym"@lsp.type.class" {fg = pine, gui="bold,underline"},
	sym"@lsp.type.interface" {fg = orange, gui="bold,underline"},
    sym"@lsp.type.operator" {fg = orange, gui="bold"},
	sym"punctuation.bracket" {fg = white, gui="bold"},
	sym"punctuation.delimiter" {fg = white},
	sym"punctuation.special" {fg= white },
	netrwDir {fg = pastel_red},
	netrwSymlink {fg = red},
	netrwExe {fg = teal},
	netrwPlain {fg = pine},
	netrwCursor = {fg = pine}

}
end)

return theme
