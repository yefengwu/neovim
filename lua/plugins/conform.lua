return {
	"stevearc/conform.nvim",
	config = function()
		local conform = require("conform")
		require("conform").setup({
			-- Map of filetype to formatters
			formatters_by_ft = {
				lua = { "stylua" },
				yaml = { "yamlfmt" },
				toml = { "taplo" },
				typescript = { "deno_fmt" },
				-- Conform will run multiple formatters sequentially
				go = { "goimports", "gofmt" },
				-- You can also customize some of the format options for the filetype
				rust = { "rustfmt", lsp_format = "fallback" },
				-- You can use a function here to determine the formatters dynamically
				python = function(bufnr)
					if require("conform").get_formatter_info("ruff_format", bufnr).available then
						return { "ruff_format" }
					else
						return { "isort", "black" }
					end
				end,
				-- Use the "*" filetype to run formatters on all filetypes.
				["*"] = { "codespell" },
				-- Use the "_" filetype to run formatters on filetypes that don't
				-- have other formatters configured.
				["_"] = { "trim_whitespace" },
			},

			formatters = {
				deno_fmt = {
					command = "deno",
					args = { "fmt", "--quiet", "-" },
					stdin = true,
				},
			},
			-- Set this to change the default values when calling conform.format()
			-- This will also affect the default values for format_on_save/format_after_save
			default_format_opts = {
				lsp_format = "fallback",
			},
			-- If this is set, Conform will run the formatter on save.
			-- It will pass the table to conform.format().
			-- This can also be a function that returns the table.
			--[[ format_on_save = { ]]
			--[[ 	-- I recommend these options. See :help conform.format for details. ]]
			--[[ 	lsp_format = "fallback", ]]
			--[[ 	timeout_ms = 500, ]]
			--[[ }, ]]
			-- If this is set, Conform will run the formatter asynchronously after save.
			-- It will pass the table to conform.format().
			-- This can also be a function that returns the table.
			--[[ format_after_save = { ]]
			--[[ 	lsp_format = "fallback", ]]
			--[[ }, ]]
			-- Set the log level. Use `:ConformInfo` to see the location of the log file.
			log_level = vim.log.levels.ERROR,
			-- Conform will notify you when a formatter errors
			notify_on_error = true,
			-- Conform will notify you when no formatters are available for the buffer
			notify_no_formatters = true,
		})

		-- You can set formatters_by_ft and formatters directly
		require("conform").formatters_by_ft.lua = { "stylua" }
		require("conform").formatters.my_formatter = {
			command = "my_cmd",
		}
		--[[ vim.keymap.set({ "n", "v" }, "<leader>mp", function() ]]
		vim.keymap.set({ "n", "v" }, "<A-S-F>", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			})
		end, { desc = "Format file or range (in visual mode)" })
	end,
}
