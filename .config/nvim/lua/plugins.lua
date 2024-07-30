local plugins = {
-- {
--   "fatih/vim-go",
--   lazy = false
-- },
{
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    lazy = false,
},
{
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    lazy = false,
},
{
  "tpope/vim-eunuch",
  lazy = false,
},
{
  "neoclide/coc.nvim",
  branch = "release",
},
{
  "yaegassy/coc-volar",
    dependencies = {
      "neoclide/coc.nvim",
    },
    lazy = false,
},
{
  "yaegassy/coc-volar-tools",
    dependencies = {
      "neoclide/coc.nvim",
      "yaegassy/coc-volar",
    },
    lazy = false,
},
{
  "neoclide/coc-tsserver"
},
{
  "neoclide/coc-yaml"
},
{
  "posva/vim-vue",
},

{ "tpope/vim-dadbod", lazy = false },
{ "kristijanhusak/vim-dadbod-ui", lazy = false},
{
  "github/copilot.vim",
  lazy = false,
},
{
  "tpope/vim-fugitive",
    lazy = false,
},
-- {
--   {
--     "nvim-neotest/neotest",
--     dependencies = {
--       "nvim-lua/plenary.nvim",
--       "antoinemadec/FixCursorHold.nvim",
--       "nvim-treesitter/nvim-treesitter",
--     },
--   },
--   opts = {
--     adapters = {
--       "neotest-python",
--     },
--   },
-- },
-- {
--   "posva/vim-vue",
-- },
  {
      "kdheepak/lazygit.nvim",
      -- optional for floating window border decoration
      lazy = false,
      requires = {
          "nvim-lua/plenary.nvim",
      },
  },
	{
		"jose-elias-alvarez/null-ls.nvim",
		event = "VeryLazy",
    ft = {"python", "clang", "cpp", "typescript", "javascript", "vue", "go"},
		opts = function()
			local null_ls = require("null-ls")
      local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
			local opts = {
				sources = {
					null_ls.builtins.formatting.clang_format,
          null_ls.builtins.diagnostics.mypy,
          null_ls.builtins.diagnostics.ruff,
          null_ls.builtins.formatting.black.with { extra_args = { "--fast" } },
          null_ls.builtins.formatting.isort,
          null_ls.builtins.formatting.gofumpt,
          null_ls.builtins.formatting.goimports_reviser,
          null_ls.builtins.formatting.golines,
          null_ls.builtins.formatting.prettier,
          null_ls.builtins.formatting.eslint,
				},
        on_attach = function(client, bufnr)
          if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({
              group = augroup,
              buffer = bufnr,
            })
            vim.api.nvim_create_autocmd("BufWritePre", {
              group = augroup,
              buffer = bufnr,
              callback = function()
                vim.lsp.buf.format({bufnr = bufnr})
              end,
            })
          end
        end
			}

			return opts
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("nvchad.configs.lspconfig").defaults()
			require("configs.lspconfig")
		end,
	},
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
			require("configs.conform")
		end,
	},
	{
		"nvim-tree/nvim-tree.lua",
		opts = {
			git = { enable = true },
		},
	},
  {
    "Asheq/close-buffers.vim",
    lazy = false,
  },
  {
    'stevearc/aerial.nvim',
    lazy = false,
    opts = {},
    -- Optional dependencies
    dependencies = {
       "nvim-treesitter/nvim-treesitter",
       "nvim-tree/nvim-web-devicons"
    },
      config = function ()
        require('aerial').setup({
          on_attach = function(bufnr)
            vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
            vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
          end,
        })
      end
  },
  {
    'kkoomen/vim-doge',
    run = ':call doge#install()',
    lazy = false,
  },
	{
		"christoomey/vim-tmux-navigator",
		lazy = false,
		cmd = {
			"TmuxNavigateLeft",
			"TmuxNavigateDown",
			"TmuxNavigateUp",
			"TmuxNavigateRight",
			"TmuxNavigatePrevious",
		},
		keys = {
			{ "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
			{ "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
			{ "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
			{ "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
			{ "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
		},
	},
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
  },
  -- {
  --   "mhartington/formatter.nvim",
  --   lazy = false,
  --   config = function()
  --     vim.api.nvim_create_autocmd("BufWritePost", {
  --       command = "FormatWriteLock"
  --     })
  --     return {
  --       filetype = {
  --         javascript = {
  --           require("formatter.filetypes.javascript").prettier
  --         },
  --         typescript = {
  --           require("formatter.filetypes.typescript").prettier
  --         },
  --
  --       }
  --     }
  --
  --   end
  -- }
}

return plugins
