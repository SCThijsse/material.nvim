local material = {}

function material.highlight(group, color)
    local style = color.style and 'gui='..color.style or 'gui=NONE'
    local fg = color.fg and 'guifg='..color.fg or 'guifg=NONE'
    local bg = color.bg and 'guibg='..color.bg or 'guibg=NONE'
    local sp = color.sp and 'guisp='..color.sp or ''

    vim.cmd(string.format('highlight %s %s %s %s %s', group, style, fg, bg, sp))
    if color.link then
        vim.cmd(string.format('highlight! link %s, %s', group, color.link))
    end
end

function material.reload()
    package.loaded['material'] = nil
    package.loaded['material.colors'] = nil
    package.loaded['material.config'] = nil
    package.loaded['material.theme'] = nil
end

function material.load(options)
    material.reload()
    require('material.config').set_options(options)

    vim.cmd('highlight clear')
    if vim.fn.exists('syntax_on') then
        vim.cmd('syntax reset')
    end

    vim.o.background = 'dark'
    vim.o.termguicolors = true
    vim.g.colors_name = 'material'

    local theme = require('material.theme')
    theme.terminal()
    local editor = theme.editor()
    local syntax = theme.syntax()
    local plugins = theme.plugins()
    local treesitter = theme.treesitter()
    local lsp = theme.lsp()

    local combined = vim.tbl_extend('keep', editor, syntax, plugins, treesitter, lsp)
    for group, colors in pairs(combined) do
        material.highlight(group, colors)
    end
end

return material
