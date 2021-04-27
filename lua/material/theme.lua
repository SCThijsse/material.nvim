local config = require('material.config')
local colors = require('material.colors').get()

local theme = {}

function theme.syntax()
    -- Syntax highlight groups
    local syntax = {
        Type =                                 { fg = colors.purple }, -- int, long, char, etc.
        StorageClass =                         { fg = colors.cyan }, -- static, register, volatile, etc.
        Structure =                            { fg = colors.puple }, -- struct, union, enum, etc.
        Constant =                             { fg = colors.yellow }, -- any constant
        String =                               { fg = colors.green, bg = colors.none, style= 'italic' }, -- Any string
        Character =                            { fg = colors.orange }, -- any character constant: 'c', '\n'
        Number =                               { fg = colors.orange }, -- a number constant: 5
        Boolean =                              { fg = colors.orange }, -- a boolean constant: TRUE, false
        Float =                                { fg = colors.orange }, -- a floating point constant: 2.3e10
        Statement =                            { fg = colors.pink }, -- any statement
        Label =                                { fg = colors.purple }, -- case, default, etc.
        Operator =                             { fg = colors.cyan }, -- sizeof', '+', '*', etc.
        Exception =                            { fg = colors.cyan }, -- try, catch, throw
        PreProc =                              { fg = colors.purple }, -- generic Preprocessor
        Include =                              { fg = colors.blue }, -- preprocessor #include
        Define =                               { fg = colors.pink }, -- preprocessor #define
        Macro =                                { fg = colors.cyan }, -- same as Define
        Typedef =                              { fg = colors.red }, -- A typedef
        PreCondit =                            { fg = colors.cyan }, -- preprocessor #if, #else, #endif, etc.
        Special =                              { fg = colors.red }, -- any special symbol
        SpecialChar =                          { fg = colors.pink }, -- special character in a constant
        Tag =                                  { fg = colors.red }, -- you can use CTRL-] on this
        Delimiter =                            { fg = colors.cyan }, -- character that needs attention like , or .
        SpecialComment =                       { fg = colors.gray }, -- special things inside a comment
        Debug =                                { fg = colors.red }, -- debugging statements
        Underlined =                           { fg = colors.link, bg = colors.none, style = 'underline' }, -- text that stands out, HTML links
        Ignore =                               { fg = colors.disabled }, -- left blank, hidden
        Error =                                { fg = colors.error, bg = colors.none, style = 'bold,underline' }, -- any erroneous construct
        Todo =                                 { fg = colors.yellow, bg = colors.none, style = 'bold,italic' }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
        Comment =                              { fg = colors.comments }, -- normal comments
        Conditional =                          { fg = colors.purple }, -- normal if, then, else, endif, switch, etc.
        Keyword =                              { fg = colors.purple }, -- normal for, do, while, etc.
        Repeat =                               { fg = colors.purple }, -- normal any other keyword
        Function =                             { fg = colors.blue }, -- normal function names
        Identifier =                           { fg = colors.gray }, -- any variable name

        htmlLink =                             { fg = colors.link, style = 'underline' },
        htmlH1 =                               { fg = colors.cyan, style = 'bold' },
        htmlH2 =                               { fg = colors.red, style = 'bold' },
        htmlH3 =                               { fg = colors.green, style = 'bold' },
        htmlH4 =                               { fg = colors.yellow, style = 'bold' },
        htmlH5 =                               { fg = colors.purple, style = 'bold' },
        markdownH1 =                           { fg = colors.cyan, style = 'bold' },
        markdownH2 =                           { fg = colors.red, style = 'bold' },
        markdownH3 =                           { fg = colors.green, style = 'bold' },
        markdownH1Delimiter =                  { fg = colors.cyan },
        markdownH2Delimiter =                  { fg = colors.red },
        markdownH3Delimiter =                  { fg = colors.green },
    }

    -- Italic comments
    if config.options.italic_comments == true then
        syntax.Comment =                       { fg = colors.comments, bg = colors.none, style = 'italic' } -- italic comments
    end

    -- Italic Keywords
    if config.options.italic_keywords == true then
        syntax.Conditional =                   { fg = colors.purple, bg = colors.none, style = 'italic' } -- italic if, then, else, endif, switch, etc.
        syntax.Keyword =                       { fg = colors.purple, bg = colors.none, style = 'italic' } -- italic for, do, while, etc.
        syntax.Repeat =                        { fg = colors.purple, bg = colors.none, style = 'italic' } -- italic any other keyword
    end

    -- Italic Function names
    if config.options.italic_functions == true then
        syntax.Function =                      { fg = colors.blue, bg = colors.none, style = 'italic' } -- italic funtion names
    end

    if config.options.italic_variables == true then
        syntax.Identifier =                    { fg = colors.gray, bg = colors.none, style = 'italic' } -- any variable name
    end

    return syntax
end

function theme.editor()
    -- Editor highlight groups
    local editor = {
        NormalFloat =                          { fg = colors.fg, bg = colors.float }, -- normal text and background color
        Normal =                               { fg = colors.fg, bg = colors.bg }, -- normal text and background color
        ColorColumn =                          { fg = colors.active }, --  used for the columns set with 'colorcolumn'
        Conceal =                              { fg = colors.disabled }, -- placeholder characters substituted for concealed text (see 'conceallevel')
        Cursor =                               { fg = colors.cursor, bg = colors.none, style = 'reverse' }, -- the character under the cursor
        CursorIM =                             { fg = colors.cursor, bg = colors.none, style = 'reverse' }, -- like Cursor, but used when in IME mode
        Directory =                            { fg = colors.blue, bg = colors.none }, -- directory names (and other special names in listings)
        DiffAdd =                              { fg = colors.green, bg = colors.none, style = 'reverse' }, -- diff mode: Added line
        DiffChange =                           { fg = colors.orange, bg = colors.none, style = 'reverse' }, --  diff mode: Changed line
        DiffDelete =                           { fg = colors.red, bg = colors.none, style = 'reverse' }, -- diff mode: Deleted line
        DiffText =                             { fg = colors.yellow, bg = colors.none, style = 'reverse' }, -- diff mode: Changed text within a changed line
        EndOfBuffer =                          { fg = colors.disabled },
        ErrorMsg =                             { fg = colors.error },
        Folded =                               { fg = colors.disabled, colors.none, style = 'italic' },
        FoldColumn =                           { fg = colors.blue },
        IncSearch =                            { fg = colors.highlight, bg = colors.white, style = 'reverse' },
        LineNr =                               { fg = colors.line_numbers },
        CursorLineNr =                         { fg = colors.accent },
        SignColumn =                           { fg = colors.fg, bg = colors.bg },
        SignColumnSb =                         { fg = colors.fg, bg = colors.sidebar },
        MatchParen =                           { fg = colors.cyan, bg = colors.none },
        ModeMsg =                              { fg = colors.accent },
        MoreMsg =                              { fg = colors.accent },
        NonText =                              { fg = colors.disabled },
        Pmenu =                                { fg = colors.text, bg = colors.popup },
        PmenuSel =                             { fg = colors.accent, bg = colors.active },
        PmenuSbar =                            { fg = colors.text, bg = colors.popup },
        PmenuThumb =                           { fg = colors.fg, bg = colors.accent },
        Question =                             { fg = colors.green },
        QuickFixLine =                         { fg = colors.highlight, colors.white, style = 'reverse' },
        qfLineNr =                             { fg = colors.highlight, colors.white, style = 'reverse' },
        Search =                               { fg = colors.highlight, bg = colors.white, style = 'reverse' },
        SpecialKey =                           { fg = colors.purple },
        SpellBad =                             { fg = colors.red, bg = colors.none, style = 'italic,undercurl' },
        SpellCap =                             { fg = colors.blue, bg = colors.none, style = 'italic,undercurl' },
        SpellLocal =                           { fg = colors.cyan, bg = colors.none, style = 'italic,undercurl' },
        SpellRare =                            { fg = colors.purple, bg = colors.none, style = 'italic,undercurl' },
        StatusLine =                           { fg = colors.fg, bg = colors.contrast },
        StatusLineNC =                         { fg = colors.text, bg = colors.disabled },
        StatusLineTerm =                       { fg = colors.fg, bg = colors.contrast },
        StatusLineTermNC =                     { fg = colors.text, bg = colors.disabled },
        TabLineFill =                          { fg = colors.fg },
        TablineSel =                           { fg = colors.bg, bg = colors.accent },
        Tabline =                              { fg = colors.fg },
        Title =                                { fg = colors.green, bg = colors.none, style = 'bold' },
        Visual =                               { fg = colors.none, bg = colors.selection },
        VisualNOS =                            { fg = colors.none, bg = colors.selection },
        WarningMsg =                           { fg = colors.warning },
        WildMenu =                             { fg = colors.orange, bg = colors.none, style = 'bold' },
        CursorColumn =                         { fg = colors.none, bg = colors.active },
        CursorLine =                           { fg = colors.none, bg = colors.active },
        ToolbarLine =                          { fg = colors.fg, bg = colors.bg_alt },
        ToolbarButton =                        { fg = colors.fg, bg = colors.none, style = 'bold' },
        NormalMode =                           { fg = colors.accent, bg = colors.none, style = 'reverse' },
        InsertMode =                           { fg = colors.green, bg = colors.none, style = 'reverse' },
        ReplacelMode =                         { fg = colors.red, bg = colors.none, style = 'reverse' },
        VisualMode =                           { fg = colors.purple, bg = colors.none, style = 'reverse' },
        CommandMode =                          { fg = colors.gray, bg = colors.none, style = 'reverse' },
        VertSplit =                            { fg = colors.bg },
        Warnings =                             { fg = colors.warning },
        healthError =                          { fg = colors.error },
        healthSuccess =                        { fg = colors.green },
        healthWarning =                        { fg = colors.warning },
    }

    --Set transparent background
    if config.options.disable_background == true then
        editor.Normal =                        { fg = colors.fg, bg = colors.none } -- normal text and background color
        editor.SignColumn =                    { fg = colors.fg, bg = colors.none }
        editor.SignColumnSb =                  { fg = colors.fg, bg = colors.none }
    end

    -- Remove window split borders
    if config.options.borders == true then
        editor.VertSplit =                     { fg = colors.border }
    end

    return editor
end

function theme.terminal()
    vim.g.terminal_color_0 = colors.black
    vim.g.terminal_color_1 = colors.red
    vim.g.terminal_color_2 = colors.green
    vim.g.terminal_color_3 = colors.yellow
    vim.g.terminal_color_4 = colors.blue
    vim.g.terminal_color_5 = colors.purple
    vim.g.terminal_color_6 = colors.cyan
    vim.g.terminal_color_7 = colors.white
    vim.g.terminal_color_8 = colors.gray
    vim.g.terminal_color_9 = colors.red
    vim.g.terminal_color_10 = colors.green
    vim.g.terminal_color_11 = colors.yellow
    vim.g.terminal_color_12 = colors.blue
    vim.g.terminal_color_13 = colors.purple
    vim.g.terminal_color_14 = colors.cyan
    vim.g.terminal_color_15 = colors.white
end

function theme.treesitter()
    -- TreeSitter highlight groups
    local treesitter = {
        TSAnnotation =                         { fg = colors.red }, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
        TSAttribute =                          { fg = colors.yellow }, -- (unstable) TODO: docs
        TSBoolean=                             { fg = colors.orange }, -- For booleans.
        TSCharacter=                           { fg = colors.orange }, -- For characters.
        TSConstructor =                        { fg = colors.purple }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
        TSConstant =                           { fg = colors.yellow }, -- For constants
        TSConstBuiltin =                       { fg = colors.blue }, -- For constant that are built in the language: `nil` in Lua.
        TSConstMacro =                         { fg = colors.blue }, -- For constants that are defined by macros: `NULL` in C.
        TSError =                              { fg = colors.error }, -- For syntax/parser errors.
        TSException =                          { fg = colors.yellow }, -- For exception related keywords.
        TSField =                              { fg = colors.gray }, -- For fields.
        TSFloat =                              { fg = colors.red }, -- For floats.
        TSFuncMacro =                          { fg = colors.blue }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
        TSInclude =                            { fg = colors.cyan }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
        TSLabel =                              { fg = colors.red }, -- For labels: `label:` in C and `:label:` in Lua.
        TSNamespace =                          { fg = colors.yellow }, -- For identifiers referring to modules and namespaces.
        --TSNone =                             { }, -- TODO: docs
        TSNumber =                             { fg = colors.orange }, -- For all numbers
        TSOperator =                           { fg = colors.cyan }, -- For any operator: `+`, but also `->` and `*` in C.
        TSParameter =                          { fg = colors.paleblue }, -- For parameters of a function.
        TSParameterReference=                  { fg = colors.paleblue }, -- For references to parameters of a function.
        TSProperty =                           { fg = colors.paleblue }, -- Same as `TSField`.
        TSPunctDelimiter =                     { fg = colors.cyan }, -- For delimiters ie: `.`
        TSPunctBracket =                       { fg = colors.cyan }, -- For brackets and parens.
        TSPunctSpecial =                       { fg = colors.cyan }, -- For special punctutation that does not fall in the catagories before.
        TSString =                             { fg = colors.green },-- For strings.
        TSStringRegex =                        { fg = colors.blue6 }, -- For regexes.
        TSStringEscape =                       { fg = colors.orange }, -- For escape characters within a string.
        TSSymbol =                             { fg = colors.yellow }, -- For identifiers referring to symbols or atoms.
        TSType =                               { fg = colors.purple }, -- For types.
        TSTypeBuiltin =                        { fg = colors.purple }, -- For builtin types.
        TSTag =                                { fg = colors.red }, -- Tags like html tag names.
        TSTagDelimiter =                       { fg = colors.yellow },-- Tag delimiter like `<` `>` `/`
        TSText =                               { fg = colors.text }, -- For strings considered text in a markup language.
        TSTextReference =                      { fg = colors.yellow }, -- FIXME
        TSEmphasis =                           { fg = colors.paleblue }, -- For text to be represented with emphasis.
        TSUnderline =                          { fg = colors.fg, bg = colors.none, style = 'underline' }, -- For text to be represented with an underline.
        -- TSStrike =                          { }, -- For strikethrough text.
        TSTitle =                              { fg = colors.paleblue, bg = colors.none, style = 'bold' }, -- Text that is part of a title.
        TSLiteral =                            { fg = colors.fg }, -- Literal text.
        TSURI =                                { fg = colors.link }, -- Any URI like a link or email.

        TSComment =                            { fg = colors.comments }, -- For comment blocks.
        TSConditional =                        { fg = colors.purple }, -- For keywords related to conditionnals.
        TSKeyword =                            { fg = colors.purple }, -- For keywords that don't fall in previous categories.
        TSRepeat =                             { fg = colors.purple }, -- For keywords related to loops.
        TSKeywordFunction =                    { fg = colors.purple }, -- For keywords used to define a fuction.
        TSFunction =                           { fg = colors.blue }, -- For fuction (calls and definitions).
        TSMethod =                             { fg = colors.blue }, -- For method calls and definitions.
        TSFuncBuiltin =                        { fg = colors.cyan }, -- For builtin functions: `table.insert` in Lua.
        TSVariable =                           { fg = colors.gray }, -- Any variable name that does not have another highlight.
        TSVariableBuiltin =                    { fg = colors.gray }, -- Variable names that are defined by the languages, like `this` or `self`.
    }

    -- Italic comments
    if config.options.italic_comments == true then
        treesitter.TSComment =                 { fg = colors.comments , bg = colors.none, style = 'italic' } -- For comment blocks.
    end

    if config.options.italic_keywords == true then
        treesitter.TSConditional =             { fg = colors.purple, style = 'italic' } -- For keywords related to conditionnals.
        treesitter.TSKeyword =                 { fg = colors.purple, style = 'italic' } -- For keywords that don't fall in previous categories.
        treesitter.TSRepeat =                  { fg = colors.purple, style = 'italic' } -- For keywords related to loops.
        treesitter.TSKeywordFunction =         { fg = colors.purple, style = 'italic' } -- For keywords used to define a fuction.
    end

    if config.options.italic_functions == true then
        treesitter.TSFunction =                { fg = colors.blue, style = 'italic' } -- For fuction (calls and definitions).
        treesitter.TSMethod =                  { fg = colors.blue, style = 'italic' } -- For method calls and definitions.
        treesitter.TSFuncBuiltin =             { fg = colors.cyan, style = 'italic' } -- For builtin functions: `table.insert` in Lua.
    end

    if config.options.italic_variables == true then
        treesitter.TSVariable =                { fg = colors.gray, style = 'italic' } -- Any variable name that does not have another highlight.
        treesitter.TSVariableBuiltin =         { fg = colors.gray, style = 'italic' } -- Variable names that are defined by the languages, like `this` or `self`.
    end

    return treesitter
end

function theme.lsp()
    -- Lsp highlight groups
    return {
        LspDiagnosticsDefaultError =           { fg = colors.error }, -- used for 'Error' diagnostic virtual text
        LspDiagnosticsSignError =              { fg = colors.error }, -- used for 'Error' diagnostic signs in sign column
        LspDiagnosticsFloatingError =          { fg = colors.error }, -- used for 'Error' diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextError =       { fg = colors.error }, -- Virtual text 'Error'
        LspDiagnosticsUnderlineError =         { style = 'undercurl', sp = colors.error }, -- used to underline 'Error' diagnostics.
        LspDiagnosticsDefaultWarning =         { fg = colors.warning}, -- used for 'Warning' diagnostic signs in sign column
        LspDiagnosticsSignWarning =            { fg = colors.warning}, -- used for 'Warning' diagnostic signs in sign column
        LspDiagnosticsFloatingWarning =        { fg = colors.warning}, -- used for 'Warning' diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextWarning =     { fg = colors.warning}, -- Virtual text 'Warning'
        LspDiagnosticsUnderlineWarning =       { style = 'undercurl', sp = colors.warning }, -- used to underline 'Warning' diagnostics.
        LSPDiagnosticsDefaultInformation =     { fg = colors.paleblue }, -- used for 'Information' diagnostic virtual text
        LspDiagnosticsSignInformation =        { fg = colors.paleblue },  -- used for 'Information' diagnostic signs in sign column
        LspDiagnosticsFloatingInformation =    { fg = colors.paleblue }, -- used for 'Information' diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextInformation = { fg = colors.paleblue }, -- Virtual text 'Information'
        LspDiagnosticsUnderlineInformation =   { style = 'undercurl', sp = colors.paleblue }, -- used to underline 'Information' diagnostics.
        LspDiagnosticsDefaultHint =            { fg = colors.purple  },  -- used for 'Hint' diagnostic virtual text
        LspDiagnosticsSignHint =               { fg = colors.purple  }, -- used for 'Hint' diagnostic signs in sign column
        LspDiagnosticsFloatingHint =           { fg = colors.purple  }, -- used for 'Hint' diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextHint =        { fg = colors.purple  }, -- Virtual text 'Hint'
        LspDiagnosticsUnderlineHint =          { style = 'undercurl', sp = colors.paleblue }, -- used to underline 'Hint' diagnostics.
        LspReferenceText =                     { fg = colors.accent, bg = colors.highlight }, -- used for highlighting 'text' references
        LspReferenceRead =                     { fg = colors.accent, bg = colors.highlight }, -- used for highlighting 'read' references
        LspReferenceWrite =                    { fg = colors.accent, bg = colors.highlight }, -- used for highlighting 'write' references
    }
end

function theme.plugins()
    -- Plugins highlight groups
    local plugins = {

        -- LspTrouble
        LspTroubleText =                       { fg = colors.text },
        LspTroubleCount =                      { fg = colors.purple, bg = colors.active },
        LspTroubleNormal =                     { fg = colors.fg, bg = colors.bg_alt },

        -- Diff
        diffAdded =                            { fg = colors.green },
        diffRemoved =                          { fg = colors.red },
        diffChanged =                          { fg = colors.yellow },
        diffOldFile =                          { fg = colors.yelow },
        diffNewFile =                          { fg = colors.orange },
        diffFile =                             { fg = colors.blue },
        diffLine =                             { fg = colors.comments },
        diffIndexLine =                        { fg = colors.purple },

        -- Neogit
        NeogitBranch =                         { fg = colors.paleblue },
        NeogitRemote =                         { fg = colors.purple },
        NeogitHunkHeader =                     { fg = colors.fg, bg = colors.highlight },
        NeogitHunkHeaderHighlight =            { fg = colors.blue, bg = colors.contrast },
        NeogitDiffContextHighlight =           { fg = colors.bg_alt, bg = colors.contrast },
        NeogitDiffDeleteHighlight =            { fg = colors.red },
        NeogitDiffAddHighlight =               { fg = colors.green },

        -- GitGutter
        GitGutterAdd =                         { fg = colors.green }, -- diff mode: Added line |diff.txt|
        GitGutterChange =                      { fg = colors.yellow }, -- diff mode: Changed line |diff.txt|
        GitGutterDelete =                      { fg = colors.red }, -- diff mode: Deleted line |diff.txt|

        -- GitSigns
        GitSignsAdd =                          { fg = colors.green }, -- diff mode: Added line |diff.txt|
        GitSignsAddNr =                        { fg = colors.green }, -- diff mode: Added line |diff.txt|
        GitSignsAddLn =                        { fg = colors.green }, -- diff mode: Added line |diff.txt|
        GitSignsChange =                       { fg = colors.yellow }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeNr =                     { fg = colors.yellow }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeLn =                     { fg = colors.yellow }, -- diff mode: Changed line |diff.txt|
        GitSignsDelete =                       { fg = colors.red }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteNr =                     { fg = colors.red }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteLn =                     { fg = colors.red }, -- diff mode: Deleted line |diff.txt|

        -- Telescope
        TelescopeBorder =                      { fg = colors.border },

        -- NvimTree
        NvimTreeNormal =                       { fg = colors.fg, bg = colors.sidebar },
        NvimTreeRootFolder =                   { fg = colors.blue, style = 'bold' },
        NvimTreeGitDirty =                     { fg = colors.yellow },
        NvimTreeGitNew =                       { fg = colors.green },
        NvimTreeImageFile =                    { fg = colors.yellow },
        NvimTreeExecFile =                     { fg = colors.green },
        NvimTreeSpecialFile =                  { fg = colors.purple , style = 'underline' },
        NvimTreeFolderName=                    { fg = colors.paleblue },
        NvimTreeEmptyFolderName=               { fg = colors.disabled },
        NvimTreeFolderIcon=                    { fg = colors.accent },
        NvimTreeIndentMarker =                 { fg  = colors.border },
        LspDiagnosticsError =                  { fg = colors.error },
        LspDiagnosticsWarning =                { fg = colors.warning },
        LspDiagnosticsInformation =            { fg = colors.paleblue },
        LspDiagnosticsHint =                   { fg = colors.purple },

        -- Dashboard
        DashboardShortCut =                    { fg = colors.cyan },
        DashboardHeader =                      { fg = colors.accent },
        DashboardCenter =                      { fg = colors.purple },
        DashboardFooter =                      { fg = colors.yellow, style = 'italic' },

        -- WhichKey
        WhichKey =                             { fg = colors.fg },
        WhichKeyGroup =                        { fg = colors.accent },
        WhichKeyDesc =                         { fg = colors.purple },
        WhichKeySeperator =                    { fg = colors.paleblue },
        WhichKeyFloating =                     { bg = colors.sidebar },

        -- LspSaga
        DiagnosticError =                      { fg = colors.error },
        DiagnosticWarning =                    { fg = colors.warning },
        DiagnosticInformation =                { fg = colors.paleblue },
        DiagnosticHint =                       { fg = colors.purple },

        -- BufferLine
        BufferLineIndicatorSelected =          { fg = colors.accent },
        BufferLineFill =                       { bg = colors.bg_alt },

        -- Sneak
        Sneak =                                { fg = colors.bg, bg = colors.accent },
        SneakScope =                           { bg = colors.selection },
    }

    if config.options.disable_background == true then
        plugins.NvimTreeNormal =               { fg = colors.fg, bg = colors.none }
    end

    return plugins
end

return theme
