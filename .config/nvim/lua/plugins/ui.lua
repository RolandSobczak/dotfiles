local plugins = {
	{
		"stevearc/oil.nvim",
		opts = {},
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",
	},
	{
		"nvim-tree/nvim-web-devicons",
		lazy = false,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		lazy = false,
		opts = {
			flavour = "latte", -- latte, frappe, macchiato, mocha
			background = { -- :h background
				light = "latte",
				dark = "mocha",
			},
			color_overrides = {
				mocha = {
					base = "#000000",
				},
			},
		},
	},
	{
		"git@github.com:folke/noice.nvim.git",
		event = "VeryLazy",
		opts = {},
		dependencies = {
			"MunifTanjim/nui.nvim",
		},
	},
	--{
	--"nvim-tree/nvim-tree.lua",
	--dependencies = {
	--"nvim-tree/nvim-web-devicons",
	--},
	--config = function()
	--require("nvim-tree").setup({
	--sort = {
	--sorter = "case_sensitive",
	--},
	--view = {
	--width = 30,
	--},
	--renderer = {
	--group_empty = true,
	--},
	--filters = {
	--dotfiles = true,
	--},
	--})
	--end,
	--},
}

return plugins
