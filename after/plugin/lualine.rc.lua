--package.path = package.path .. "/Users/adriankruse/.config/nvim/after/plugin"
local M = {}
M.theme = function()
    local colors = {
        darkgray = "#16161d",
        gray = "#727169",
        innerbg = nil, outerbg = "#16161D",
        normal = "#16161d",
        insert = "#3333ff",
        visual = "#00A170",
        replace = "#ffa066",
        command = "#143306",
        white = "#c3c3c3",
    }
    return {
        inactive = {
            a = { fg = colors.gray, bg = colors.outerbg },
            b = { fg = colors.gray, bg = colors.outerbg },
            c = { fg = colors.gray, bg = colors.innerbg },
        },
        visual = {
            a = { fg = colors.darkgray, bg = colors.visual, gui = "bold" },
            b = { fg = colors.gray, bg = colors.outerbg },
            c = { fg = colors.gray, bg = colors.innerbg },
        },
        replace = {
            a = { fg = colors.darkgray, bg = colors.replace, gui = "bold" },
            b = { fg = colors.gray, bg = colors.outerbg },
            c = { fg = colors.gray, bg = colors.innerbg },
        },
        normal = {
            a = { fg = colors.white, bg = colors.normal },
            b = { fg = colors.gray, bg = colors.outerbg },
            c = { fg = colors.gray, bg = colors.innerbg },
        },
        insert = {
            a = { fg = colors.white, bg = colors.insert, gui = "bold" },
            b = { fg = colors.gray, bg = colors.outerbg },
            c = { fg = colors.gray, bg = colors.innerbg },
        },
        command = {
            a = { fg = colors.white, bg = colors.command, gui = "bold" },
            b = { fg = colors.gray, bg = colors.outerbg },
            c = { fg = colors.gray, bg = colors.innerbg },
        },
    }
end

require("lualine").setup({
    options = {
        theme = M.theme(),
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { 'filetype' },
        lualine_y = {},
        --lualine_y = { 'progress' },
        lualine_z = { 'location' }
    },
})
