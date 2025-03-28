return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", "glepnir/lspsaga.nvim" },
	config = function()
		require("bufferline").setup({
			options = {
				-- mode = "buffers", -- set to "tabs" to only show tabpages instead
				-- numbers = "buffer_id",
				-- --number_style = "superscript" | "subscript" | "" | { "none", "subscript" }, -- buffer_id at index 1, ordinal at index 2
				-- close_command = "BufDel! %d", -- can be a string | function, see "Mouse actions"
				-- indicator_style = "▎",
				-- buffer_close_icon = "",
				-- modified_icon = "●",
				-- close_icon = "",
				-- left_trunc_marker = "",
				-- right_trunc_marker = "",
				-- max_name_length = 30,
				-- max_prefix_length = 30, -- prefix used when a buffer is de-duplicated
				-- tab_size = 21,
				-- diagnostics = false,
				-- diagnostics_update_in_insert = false,
				offsets = {
					{ filetype = "NeoTree", text = "", highlight = "Directory", text_align = "center" },
				},
				-- show_buffer_icons = true, -- disable filetype icons for buffers
				-- show_buffer_close_icons = true,
				-- show_close_icon = true,
				-- show_tab_indicators = false,
				-- persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
				-- -- can also be a table containing 2 custom separators
				-- -- [focused and unfocused]. eg: { '|', '|' }
				-- separator_style = { "", "" }, --"slant" | "thick" | "thin" | { 'any', 'any' },
				-- enforce_regular_tabs = true,
				-- always_show_bufferline = true,
			},
		})
	end,
}
