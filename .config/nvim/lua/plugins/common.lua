local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "clang-format",
        "prettier",
        "codelldb",
        "pyright",
        "ruff",
        "mypy",
        "pyright",
        "black",
        "debugpy",
        "gopls",
        "vue-language-server",
        "typescript-language-server",
      },
    },
  },
  {
    "stevearc/conform.nvim",
    config = function()
      require("config.autoformat")
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = { enable = true },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
  },
}

return plugins
