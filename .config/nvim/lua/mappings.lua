require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "<leader>fm", function()
  require("conform").format()
end, { desc = "File Format with conform" })


map("n", "<leader>gg", "<cmd>LazyGit<cr>")
map("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>")
map("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>")
map("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>")
map("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>")

-- dap
map("n", "<leader>db", "<cmd>DapToggleBreakpoint<cr>")
map("n", "<leader>dp", function()
  require("dap-python").test_method()
end)
map("n", "<leader>dgl", function ()
  require("dap-go").debug_test()
end)
map("n", "<leader>dgl", function ()
  require("dap-go").debug_last()
end)
map("n", "<leader>dc", "<cmd>DapContinue<cr>")
map("n", "<leader>dr", ":lua require('dapui').open({reset=true})<CR>")
map("n", "<leader>dt", function()
  require("dapui").toggle()
end, {desc = "DapUI toggle"})
-- tabufline

map("n", "<S-l>", function()
  require("nvchad.tabufline").next()
end, { desc = "Buffer Goto next" })

map("n", "<S-h>", function()
  require("nvchad.tabufline").prev()
end, { desc = "Buffer Goto prev" })
map("n", "<leader>,", "<cmd>Telescope buffers<CR>", { desc = "Telescope Find buffers" })


map("n", "<leader>|", "<cmd>vsplit<cr>")
map("n", "<leader>-", "<cmd>split<cr>")

map("i", "jk", "<ESC>", { desc = "Escape insert mode" })
map("i", "<C-r>", 'copilot#Accept("<C-R>")', {expr = true, desc = "Copilot Accept", replace_keycodes = false})

map("n", "<C-right>", "<cmd>vertical resize +5<cr>") -- make the window biger vertically
map("n", "<C-left>", "<cmd>vertical resize -5<cr>") -- make the window smaller vertically
map("n", "<C-up>", "<cmd>horizontal resize +2<cr>") -- make the window bigger horizontally by pressing shift and =
map("n", "<C-down>", "<cmd>horizontal resize -2<cr>") -- make the window smaller horizontally by pressing shift and -"<cmd>resize +2<CR>")

-- neotree


map("n", "<leader>e", "<cmd>Neotree toggle<cr>")
map('n', '<Leader>bd', ':bp <BAR> bd #<CR>', { noremap = true, silent = true })
map('n', '<Leader>bo', '<cmd>Bdelete other<CR>', { noremap = true, silent = true })
map("n", "<leader>cs", "<cmd>AerialToggle<CR>", { noremap = true, silent = true })


-- oil.nvim

map("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
