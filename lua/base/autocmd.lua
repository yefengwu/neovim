--Revert to where the cursor was when the file was last closed
vim.cmd([[autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif]])

--[[
这行代码用于在 Vim 编辑器中设置 iskeyword 选项，具体是将连字符 - 添加到关键词字符中。
解释：
    iskeyword：这是一个 Vim 选项，用于定义哪些字符被视为单词的一部分。默认情况下，Vim 将空格、标点符号等视为单词的分隔符。
    +=：表示在现有的 iskeyword 设置中添加新的字符，而不是替换原有的设置。
    -：连字符被添加为单词的一部分，这样在使用 Vim 的各种命令（如移动光标、选择文本、搜索等）时，连字符会被视为单词的一部分。
]]
vim.cmd([[set iskeyword+=-]])

-- 这行代码是用于在 Vim 编辑器中设置 whichwrap 选项。具体来说，它允许光标在行尾或行首时通过方向键 < 和 >、方括号 [ 和 ] 以及字母 h 和 l 在行之间移动。
vim.cmd("set whichwrap+=<,>,[,],h,l")
-- about fold
vim.cmd("set foldmethod=expr")
vim.cmd("set foldexpr=nvim_treesitter#foldexpr()")
--[[
vim.cmd(...)：这是 Neovim 中用于执行 Vim 命令的函数。
autocmd：这是 Vim 的一个命令，用于定义自动命令。自动命令会在特定事件发生时触发。
BufReadPost,FileReadPost：这些是触发事件的类型。
BufReadPost：当一个缓冲区被读取（打开）后触发。
FileReadPost：当一个文件被读取后触发。
    *：表示对所有文件类型生效。
    normal zR：这是将在触发事件时执行的命令。normal 表示执行一个普通模式的命令，而 zR 是一个折叠命令，用于展开所有折叠。
这条命令会在文件读取完成后自动执行 normal zR 命令，从而展开所有的代码折叠
--]]
vim.cmd([[autocmd BufReadPost,FileReadPost * normal zR]])

-- set bg transparent
-- vim.cmd([[autocmd ColorScheme * highlight Normal guibg=NONE ctermbg=NONE]])
--
vim.cmd([[autocmd FileType yaml,lua setlocal ts=4 sts=4 sw=4 expandtab]]) 

