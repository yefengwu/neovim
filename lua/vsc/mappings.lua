local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
keymap("", "q", "<Nop>", opts)
vim.g.mapleader = " "
vim.o.timeoutlen = 300

keymap("n", "<leader>w", "<Cmd>call VSCodeNotify('workbench.action.files.save')<Cr>", opts)
keymap("n", "<leader>q", "<Cmd>call VSCodeNotify('workbench.action.closeActiveEditor')<Cr>", opts)
keymap("n", "<leader>e", "<Cmd>call VSCodeNotify('workbench.view.explorer')<Cr>", opts)
keymap("n", "<leader>p", "<Cmd>call VSCodeNotify('workbench.action.showCommands')<Cr>", opts)
keymap("n", "<leader>r", "<Cmd>call VSCodeNotify('workbench.action.toggleAuxiliaryBar')<Cr>", opts)

-- vscode settings
keymap("n", "<C-\\>", "<Cmd>call VSCodeNotify('workbench.action.terminal.toggleTerminal')<Cr>", opts)
keymap("n", "<leader>ss", "<Cmd>call VSCodeNotify('workbench.action.openApplicationSettingsJson')<Cr>", opts)
keymap("n", "<leader>sk", "<Cmd>call VSCodeNotify('workbench.action.openGlobalKeybindingsFile')<Cr>", opts)

keymap("n", "gcc", "<Cmd>call VSCodeNotify('editor.action.commentLine')<Cr>", opts)