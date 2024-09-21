-- Example configuration for Catppuccin
require("catppuccin").setup({
  flavour = "mocha", -- latte, frappe, macchiato, mocha
  background = {    -- optional: set different backgrounds for each flavor
    latte = "light",
    frappe = "dark",
    macchiato = "dark",
    mocha = "dark",
  },
  transparent_background = false, -- disable setting the background color
  --term_colors = true, -- configure terminal colors
  integrations = {
    -- List of integrations to apply the color scheme to
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    telescope = true,
    treesitter = true,
    -- Add more integrations as needed
  },
  color_overrides = {
    mocha = {
      base = "#1b1818",
    },
  },
})

-- Activate the colorscheme
vim.cmd.colorscheme("catppuccin")
