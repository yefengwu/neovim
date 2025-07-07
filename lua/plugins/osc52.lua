return {
	"ojroques/nvim-osc52",
	config = function()
		require("osc52").setup({
			max_length = 0, -- 0 表示不限制长度
			silent = true, -- 是否静默（无提示）
			trim = false, -- 是否自动去空白
		})
	end,
}
