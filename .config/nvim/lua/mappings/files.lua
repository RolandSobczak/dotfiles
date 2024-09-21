local map = vim.keymap.set

-- oil.nvim

map("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

local builtin = require("telescope.builtin")
map("n", "<leader>ff", builtin.find_files, {})
map("n", "<leader>fw", builtin.live_grep, {})
map("n", "<leader>,", builtin.buffers, {})
map("n", "<leader>fh", builtin.help_tags, {})
local opts = { silent = true, noremap = true, expr = true, replace_keycodes = false }

-- Make <CR> to accept selected completion item or notify coc.nvim to format
-- <C-g>u breaks current undo, please make your own choice
--map("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)
map("n", "<leader>|", "<cmd>vsplit<cr>")
map("n", "<leader>-", "<cmd>split<cr>")
-- Map Ctrl + hjkl to window navigation
map("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
map("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
map("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
map("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

--neo-tree
map("n", "<leader>e", "<CMD>NvimTreeToggle<CR>")
