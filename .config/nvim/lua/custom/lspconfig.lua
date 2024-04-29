local base = require("plugins.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities


base.clangd.setup {
   on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
}
