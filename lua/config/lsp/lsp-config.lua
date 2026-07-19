require("mason").setup()
require("mason-lspconfig").setup({

	ensure_installed = {"html", "lemminx", "jdtls", "clangd", "lua_ls"}


})


vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = true,
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config("lemminx", {capabilities=capabilities})
vim.lsp.config("jdtls", {capabilities=capabilities})
vim.lsp.config("html", {capabilities=capabilities})
vim.lsp.config("bash-language-server", {capabilities=capabilities})

-- Sets up the LSP servers
vim.lsp.config("pyright", {
    settings = {
        pyright = {
            disableOrganizeImports = false,
        },

        python = {
            analysis = {
                typeCheckingMode = "basic",

                autoSearchPaths = true,
                useLibraryCodeForTypes = true,

                diagnosticMode = "workspace",

                autoImportCompletions = true,
            },
        },
    },
    capabilities = capabilities,
})
vim.lsp.config("clangd", {
	capabilities = capabilities,
})
vim.lsp.config("lua_ls", 
{
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" }}}},
	capabilities = capabilities,
})

vim.lsp.config("cmake", {
	capabilities = capabilities,
})

vim.lsp.enable("jdtls")
vim.lsp.enable("pyright")
vim.lsp.enable("clangd")
vim.lsp.enable("lua_ls")
vim.lsp.enable("cmake")
vim.lsp.enable("lemminx")
vim.lsp.enable("html")
vim.lsp.enable("bash-language-server")
