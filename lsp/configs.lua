local m_status_ok, mason = pcall(require, "mason")
local m_lsp_status_ok, mlsp = pcall(require, "mason-lspconfig")
local lsp_status_ok, lsp = pcall(require, "lspconfig")
if not (m_status_ok and m_lsp_status_ok and lsp_status_ok) then return end
mason.setup()
local langs = { "sumneko_lua", "clangd", "jdtls", "jsonls", "pyright", "html", "cssls" }
for _, lang in pairs(langs) do lsp[lang].setup{} end
mlsp.setup{ ensure_installed = langs }
