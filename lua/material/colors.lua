local config = require('material.config')

local colors = {}

function colors.get()
    local c = {
        -- Common colors
        white =                 '#EEFFFF',
        gray =                  '#717CB4',
        black =                 '#000000',
        red =                   '#F07178',
        green =                 '#C3E88D',
        -- lime =                  '#98EE64',
        yellow =                '#FFCB6B',
        blue =                  '#82AAFF',
        paleblue =              '#B0C9FF',
        cyan =                  '#89DDFF',
        purple =                '#C792EA',
        -- violet =                '#B66FFD',
        orange =                '#F78C6C',
        pink =                  '#FF9CAC',
        error =                 '#FF5370',
        warning =               '#FFD353',
        link =                  '#80CBC4',
        cursor =                '#FFCC00',
        none =                  'NONE',
    }

    -- Style specific colors
    if config.options.style == 'darker' then
        -- Darker theme style
        c.bg =           '#212121'
        c.bg_alt =       '#1A1A1A'
        c.fg =           '#B0BEC5'
        c.text =         '#727272'
        c.comments =     '#616161'
        c.selection =    '#404040'
        c.contrast =     '#1A1A1A'
        c.active =       '#323232'
        c.border =       '#292929'
        c.line_numbers = '#424242'
        c.highlight =    '#3F3F3F'
        c.disabled =     '#474747'
        c.accent =       '#FF9800'
    elseif config.options.style == 'lighter' then
        -- Lighter theme style
        c.bg =           '#FAFAFA'
        c.bg_alt =       '#FFFFFF'
        c.fg =           '#546E7A'
        c.text =         '#94A7B0'
        c.comments =     '#AABFC9'
        c.selection =    '#80CBC4'
        c.contrast =     '#EEEEEE'
        c.active =       '#E7E7E8'
        c.border =       '#D3E1E8'
        c.line_numbers = '#CFD8DC'
        c.highlight =    '#E7E7E8'
        c.disabled =     '#D2D4D5'
        c.cursor =       '#272727'
        c.accent =       '#00BCD4'
        c.white =        '#FFFFFF'
        c.gray =         '#717CB4'
        c.black =        '#000000'
        c.red =          '#E53935'
        c.green =        '#91B859'
        c.yellow =       '#F6A434'
        c.blue =         '#6182B8'
        c.paleblue =     '#8796B0'
        c.cyan =         '#39ADB5'
        c.purple =       '#7C4DFF'
        c.orange =       '#F76D47'
        c.pink =         '#FF5370'
    elseif config.options.style == 'palenight' then
        -- Palenight theme style
        c.bg =           '#292D3E'
        c.bg_alt =       '#1B1E2B'
        c.fg =           '#A6ACCD'
        c.text =         '#676E95'
        c.comments =     '#676E95'
        c.selection =    '#717CB4'
        c.contrast =     '#202331'
        c.active =       '#414863'
        c.border =       '#414863'
        c.line_numbers = '#3A3F58'
        c.highlight =    '#444267'
        c.disabled =     '#515772'
        c.accent =       '#AB47BC'
    elseif config.options.style == 'deep ocean' then
        -- Deep Ocean theme style
        c.bg =           '#0F111A'
        c.bg_alt =       '#090B10'
        c.fg =           '#8F93A2'
        c.text =         '#717CB4'
        c.comments =     '#464B5D'
        c.selection =    '#1F2233'
        c.contrast =     '#090B10'
        c.active =       '#1A1C25'
        c.border =       '#1f2233'
        c.line_numbers = '#3B3F51'
        c.highlight =    '#1F2233'
        c.disabled =     '#464B5D'
        c.accent =       '#84FFFF'
    else config.options.style = 'oceanic'
        -- Oceanic theme style
        c.bg =           '#263238'
        c.bg_alt =       '#192227'
        c.fg =           '#B0BEC5'
        c.text =         '#607D8B'
        c.comments =     '#464B5D'
        c.selection =    '#546E7A'
        c.contrast =     '#1E272C'
        c.active =       '#314549'
        c.border =       '#2A373E'
        c.line_numbers = '#37474F'
        c.highlight =    '#425B67'
        c.disabled =     '#415967'
        c.accent =       '#009688'
    end

    -- Optional colors
    if config.st == false then
        c.sidebar = c.bg
        c.float = c.bg
        c.popup = c.contrast
    else
        c.sidebar = c.bg_alt
        c.float = c.bg_alt
        c.popup = c.bg_alt
    end

    -- material.sidebar = config.options.contrast and material.bg_alt or material.bg
    -- material.float = config.options.contrast and material.bg_alt or material.bg

    return c
end

return colors
