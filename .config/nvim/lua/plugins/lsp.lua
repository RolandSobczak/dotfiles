local plugins = {
  --{
  --"yaegassy/coc-volar",
  --dependencies = {
  --"neoclide/coc.nvim",
  --},
  --lazy = false,
  --},
  --{
  --"yaegassy/coc-volar-tools",
  --dependencies = {
  --"neoclide/coc.nvim",
  --"yaegassy/coc-volar",
  --},
  --lazy = false,
  --},
  --{
  --"neoclide/coc-tsserver",
  --},
  --{
  --"neoclide/coc-yaml",
  --},
  {
    "posva/vim-vue",
  },
  { "tpope/vim-dadbod",             lazy = false },
  { "kristijanhusak/vim-dadbod-ui", lazy = false },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local lspconfig = require("../config/lspconfig")
    end,
  },
  {
    "hrsh7th/nvim-cmp",        -- Autocompletion plugin,
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",  -- LSP source for nvim-cmp,
      "saadparwaiz1/cmp_luasnip", -- Snippets source for nvim-cmp
      "L3MON4D3/LuaSnip",      -- Snippets plugin
    },
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
  },
}

return plugins
