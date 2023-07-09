return {
	"yefengwu/ChatGPT.nvim",
	event = "VeryLazy",
	dependencies = {
		"MunifTanjim/nui.nvim",
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},

	config = function()
		require("chatgpt").setup({
			api_key_cmd = "bw list items --search sshkey | from json | get notes",
		})
	end,
}
