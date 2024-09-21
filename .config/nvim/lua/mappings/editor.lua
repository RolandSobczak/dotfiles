local map = vim.keymap.set

-- resize
map("n", "<C-right>", "<cmd>vertical resize +5<cr>")
map("n", "<C-left>", "<cmd>vertical resize -5<cr>")
map("n", "<C-up>", "<cmd>horizontal resize +5<cr>")
map("n", "<C-down>", "<cmd>horizontal resize +5<cr>")

-- buffers
local function delete_other_buffers()
	local current_buf = vim.api.nvim_get_current_buf()
	local buffers = vim.api.nvim_list_bufs()

	for _, buf in ipairs(buffers) do
		if buf ~= current_buf and vim.api.nvim_buf_is_loaded(buf) then
			vim.cmd("bdelete " .. buf)
		end
	end
end

map("n", "<leader>bo", delete_other_buffers, { noremap = true, silent = true })
map("n", "<leader>bd", ":bp <BAR> bd #<CR>", { noremap = true, silent = true })

-- tmux
map("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>")
map("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>")
map("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>")
map("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>")

-- comments
map("n", "<leader>/", "<Plug>NERDCommenterToggle", { noremap = true, silent = true })
map("v", "<leader>/", "<Plug>NERDCommenterToggle", { noremap = true, silent = true })
