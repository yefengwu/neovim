if vim.g.vscode then
	-- VSCode extension
	require("vsc/mappings")
	require("vsc/options")

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

	require("lazy").setup("vscplugins")
elseif vim.loop.os_uname().sysname == "Windows_NT" then
	-- ordinary Neovim
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
	local lazy_theme = "catppuccin-frappe"
	local opts = {
		install = {
			colorscheme = { lazy_theme },
		},
		ui = {
			size = { width = 1.0, height = 1.0 },
		},
	}
	require("lazy").setup("winplugins", opts)
else
	-- ordinary Neovim
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
	vim.g.clipboard = {
		name = "osc52",
		copy = {
			["+"] = function(lines, _)
				require("osc52").copy(table.concat(lines, "\n"))
			end,
			["*"] = function(lines, _)
				require("osc52").copy(table.concat(lines, "\n"))
			end,
		},
		paste = {
			["+"] = function()
				return require("osc52").paste()
			end,
			["*"] = function()
				return require("osc52").paste()
			end,
		},
	}
	vim.filetype.add({
		extension = {
			mts = "typescript",
		},
	})

	--[[ vim.g.clipboard = { ]]
	--[[ 	name = "osc52", ]]
	--[[ 	copy = { ["+"] = copy, ["*"] = copy }, ]]
	--[[ 	paste = { ["+"] = paste, ["*"] = paste }, ]]
	--[[ } ]]
end
