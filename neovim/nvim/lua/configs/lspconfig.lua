require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

local servers = { "pylsp", "clangd", "jdtls", "html", "cssls", "gopls" }
local nvlsp = require "nvchad.configs.lspconfig"

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server
-- lspconfig.[custom].setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
