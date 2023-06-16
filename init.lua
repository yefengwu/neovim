require("base")
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

--[[ local lazy_theme ]]
--[[ if os.getenv("GTK_THEME") == "Nordic" then ]]
--[[ 	lazy_theme = "nord" ]]
--[[ elseif os.getenv("GTK_THEME") == "Catppuccin-Frappe-Pink" then ]]
--[[ 	lazy_theme = "catppuccin-frappe" ]]
--[[ else ]]
--[[ 	lazy_theme = "catppuccin-latte" ]]
--[[ end ]]
--[[
I'd personally get rid of the if statement altogether and just use 'pwsh',
since this makes it use Windows Powershell instead of Powershell Core
in the case you are using the latter. Since it's an equivalent I'll leave it
]]
--

local lazy_theme = "catppuccin-frappe"
local opts = {
	install = {
		colorscheme = { lazy_theme },
	},
	ui = {
		size = { width = 1.0, height = 1.0 },
	},
}
require("lazy").setup("plugins", opts)
