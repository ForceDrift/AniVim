local opts = { silent = true }
local map = vim.keymap.set

map("i", "jk", "<Esc>l", opts)

-------------------------------------------------------------------------------
----- DISABLED KEYS
----------------------------------------------------------------------------------
map("n", "<UP>", "<NOP>", opts)
map("n", "<DOWN>", "<NOP>", opts)
map("n", "<LEFT>", "<NOP>", opts)
map("n", "<RIGHT>", "<NOP>", opts)

map("t", "jk", [[<C-\><C-n>]], { desc = "Exit Terminal Mode" })
map("n", "<leader>nt", "<cmd>exe v:count1 . 'ToggleTerm'<cr>", { desc = "New Terminal" })
