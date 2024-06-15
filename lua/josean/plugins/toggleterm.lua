return {
	"akinsho/toggleterm.nvim",
	config = function()
		local tterm = require("toggleterm")
		tterm.setup({
			shade_terminals = true, -- NOTE: this option takes priority over highlights specified so if you specify Normal highlights you should set this to false
			start_in_insert = true,
			insert_mappings = true, -- whether or not the open mapping applies in insert mode
			terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
			persist_size = true,
			persist_mode = true, -- if set to true (default) the previous terminal mode will be remembered
			direction = "vertical",
			close_on_exit = true, -- close the terminal window when the process exits
			-- Change the default shell. Can be a string or a function returning a string
			shell = vim.o.shell,
			auto_scroll = true, -- automatically scroll to the bottom on terminal output
			-- This field is only relevant if direction is set to 'float'
			float_opts = {
				-- The border key is *almost* the same as 'nvim_open_win'
				-- see :h nvim_open_win for details on borders however
				-- the 'curved' border is a custom border type
				-- not natively supported but implemented in this plugin.
				border = "single",
				-- like `size`, width, height, row, and col can be a number or function which is passed the current terminal
				winblend = 3,
				title_pos = "left",
			},
			winbar = {
				enabled = false,
				name_formatter = function(term) --  term: Terminal
					return term.name
				end,
			},
		})
		-- fterm.setup({
		-- 	border = "double",
		-- 	dimensions = {
		-- 		height = 0.9,
		-- 		width = 0.9,
		-- 	},
		-- })
		--
		-- -- set keymaps
		local keymap = vim.keymap -- for conciseness
		--
		keymap.set("n", "<leader><c-b>", "<cmd>ToggleTerm size=20 direction=horizontal<CR>", { desc = "open terminal" }) -- toggle file explorer
		-- -- keymap.set(
		-- -- 	"n",
		-- -- 	"<leader>ef",
		-- -- 	"<cmd>NvimTreeFindFileToggle<CR>",
		-- -- 	{ desc = "Toggle file explorer on current file" }
		-- -- ) -- toggle file explorer on current file
		-- -- keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
	end,
}
