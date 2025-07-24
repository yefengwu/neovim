return {
	"akinsho/toggleterm.nvim",
	config = function()
		local os = vim.fn.has("win32") == 1 and "windows" or "linux"
		require("toggleterm").setup({
			direction = "float",
			open_mapping = [[<c-\>]],
             --[[ on_create = fun(t: Terminal), ]]
            autochdir = false,
            start_in_insert = true,
            insert_mappings = false,
			float_opts = {
				border = "curved",
				-- like `size`, width, height, row, and col can be a number or function which is passed the current terminal
				--[[ width = <value>, ]]
				--[[ height = <value>, ]]
				--[[ row = <value>, ]]
				--[[ col = <value>, ]]
				winblend = 3,
				--[[ zindex = <value>, ]]
				title_pos = "left",
			},
			winbar = {
				enabled = false,
				name_formatter = function(term) --  term: Terminal
					return term.name
				end,
			},
		})
		function _G.set_terminal_keymaps()
			local opts = { noremap = true }
			vim.api.nvim_buf_set_keymap(0, "t", "<esc>", [[<C-\><C-n>]], opts)
			vim.api.nvim_buf_set_keymap(0, "t", "jk", [[<C-\><C-n>]], opts)
			vim.api.nvim_buf_set_keymap(0, "t", "<C-h>", [[<C-\><C-n><C-W>h]], opts)
			vim.api.nvim_buf_set_keymap(0, "t", "<C-j>", [[<C-\><C-n><C-W>j]], opts)
			vim.api.nvim_buf_set_keymap(0, "t", "<C-k>", [[<C-\><C-n><C-W>k]], opts)
			-- vim.api.nvim_buf_set_keymap(0, "t", "<C-l>", [[<C-\><C-n><C-W>l]], opts)
		end

		-- if you only want these mappings for toggle term use term://*toggleterm#* instead
		vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
	end,
}
