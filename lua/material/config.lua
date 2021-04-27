local config = {
    options = {
        borders = false,
        constrast = false,
        disable_background = false,
        italic_comments = false,
        italic_functions = false,
        italic_keywords = false,
        italic_variables = false,
        style = 'deep ocean',
    }
}

function config.set_options(options)
    options = options or {}
    config.options = vim.tbl_extend('force', config.options, options)
end

return config
