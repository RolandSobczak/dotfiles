local configs = require("nvchad.configs.lspconfig")

local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "clangd"}
local util = require "lspconfig/util"

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_init = on_init,
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"gopls"},
  filetypes = {"go", "gomod", "gowork", "gotmpl"},
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  gopls = {
    completeUnimported = true,
    usePlaceholders = true,
    analyses = {
      unusedparams = true,
    }
  },
}

lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"}
})

lspconfig.volar.setup{
  filetypes = {
    'typescript',
    'javascript',
    'javascriptreact',
    'typescriptreact',
    'vue',
    'json'
  }
}

lspconfig.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    preferences = {
      disableSuggestions = true,
    },
  },
}

lspconfig.vuels.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"vls"},
  filetypes = {"vue"},
  init_options = {
    config = {
      root = vim.fn.getcwd(),
      css = {},
      emmet = {},
      html = {
        suggest = {}
      },
      javascript = {
        format = {}
      },
      stylusSupremacy = {},
      typescript = {
        format = {}
      },
      vetur = {
        completion = {
          autoImport = true,
          tagCasing = "kebab",
          useScaffoldSnippets = false
        },
        format = {
          defaultFormatter = {
            js = "prettier",
            ts = "prettier"
          },
          defaultFormatterOptions = {},
          scriptInitialIndent = false,
          styleInitialIndent = false
        },
        useWorkspaceDependencies = false,
        validation = {
          script = true,
          style = true,
          template = true
        }
      }
    }
  }
}

vim.lsp.start({
  name = "volar",
  cmd = { "volar-ls", "--stdio" },
  root_dir = util.root_pattern("package.json", "tsconfig.json", ".git"),
})

-- lspconfig.tsserver.setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = {
--     'typescript',
--     'javascript',
--     'javascriptreact',
--     'typescriptreact',
--     'vue',
--     'json'
--   }
-- })

-- local default_servers = {
--     -- don't setup tsserver, as we want volar to take over
--     -- 'tsserver',
--      'volar',
-- }
--
-- require('mason-lspconfig').setup_handlers({
-- 	function(server_name)
--                  local server_config = nil
-- 		if server_name == 'volar' then 
-- 			{filetypes = { 'vue', 'typescript', 'javascript' }}
-- 		end
-- 		lspconfig[server_name].setup(
-- 			server_config
-- 		)
-- 	end,
-- })
