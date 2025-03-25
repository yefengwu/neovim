return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	dependencies = {
		"echasnovski/mini.icons",
	},
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	keys = {
		{ "<A-p>", "<cmd>Telescope commands<CR>", desc = "Commands"},
		{ "<Leader>f", "<cmd>Telescope find_files<CR>", desc = "Find Files"},
		{ "<Leader>p", "<cmd>Telescope project<CR>", desc = "Project" },
		{ "<Leader>s", "<cmd>Telescope live_grep<CR>", desc = "Live Grep" },
	},
}
