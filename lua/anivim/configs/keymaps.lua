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

local function run_cpp_and_cleanup()
	local dir = vim.fn.expand("%:p:h")
	local file_path = vim.fn.expand("%:p")
	local output_name = vim.fn.expand("%:t:r")

	local cmd = string.format(
		"cd %s && g++ %s -o %s && ./%s ; rm %s",
		dir, file_path, output_name, output_name, output_name
	)

	require("toggleterm").exec(cmd, 1, nil, "float")
end

vim.keymap.set("n", "<leader>rr", function()
	if vim.bo.filetype == "cpp" then
		run_cpp_and_cleanup()
	else
		vim.notify("Not a C++ file", vim.log.levels.WARN)
	end
end, { desc = "Compile, Run, and Cleanup C++ in Float" })
