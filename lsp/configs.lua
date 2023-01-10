local m_status_ok, mason = pcall(require, "mason")
local m_lsp_status_ok, mlsp = pcall(require, "mason-lspconfig")
local lsp_status_ok, lsp = pcall(require, "lspconfig")

if not (m_status_ok and m_lsp_status_ok and lsp_status_ok) then return end

mason.setup()

local langs = {}


langs.sumneko_lua = {
  lua = {
    diagnostics = {
      globals = {
        'vim'
      }
    }
  }
}

langs.clangd = nil
langs.jdtls = nil
langs.jsonls = nil
langs.pyright = nil
langs.html  = nil
langs.cssls = nil


for lang, setting in pairs(langs) do lsp[lang].setup{settings=setting} end

mlsp.setup{ ensure_installed = langs }
