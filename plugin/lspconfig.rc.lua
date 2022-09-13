local status, nvim_lsp = pcall(require, "lspconfig")
if (not status) then return end

local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
    if client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_command [[augroup Format]]
        vim.api.nvim_command [[autocmd! * <buffer>]]
        vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync{}]]
        vim.api.nvim_command [[augroup END]]
    end
end

nvim_lsp.sumneko_lua.setup {
    on_attach = on_attach,
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            },

            workspace = {
                library = vim.api.nvim_get_runtime_file("", true)
            }
        }
    }
}

nvim_lsp.hls.setup {
    on_attach = on_attach,
    root_dir = vim.loop.cwd,
    settings = {
        rootMarkers = { "./git/" }
    }
}
