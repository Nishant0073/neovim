vim.g.mapleader = ","

local keymap = vim.keymap -- for conciseness
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "clear seach hightlight" })

keymap.set("n", "<leader>+", "<C-a>", { desc = "increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "decrement number" })

-- winwwos management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "make split window equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "go to prev tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "open current buffet in new tab" })
keymap.set("n", "ga", "<cmd>lua vim.lsp.buf.code_action()<CR>", { silent = true, desc = "Trigger code action" })
-- Set up the keymap for F2 to run the Leet run command
keymap.set("n", "<F2>", "<cmd>Leet run<CR>", { silent = true, desc = "Run Leet code" })

-- Set up the keymap for F3 to run the Leet submit command
keymap.set("n", "<F3>", "<cmd>Leet submit<CR>", { silent = true, desc = "Submit Leet code" })
