require('onedark').setup {
    style = 'darker',
    code_style = {
        comments = 'none',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none'
    },
    diagnostics = {
        darker = true, -- darker colors for diagnostic
        undercurl = true, -- use undercurl instead of underline for diagnostics
        background = true, -- use background color for virtual text
    },
    highlights = {
        EndOfBuffer = { fg = '#7f7f7f' },
        Search = { fg = '#ffffff', bg = '#7f7f7f' }
        -- EndOfBuffer = { fg = '#00ffaa' },
    }
}

require('onedark').load()
