local M = {}

-- hide line numbers , statusline in specific buffers!
M.hideStuff = function()
    vim.api.nvim_exec(
        [[
   au TermOpen term://* setlocal nonumber laststatus=0
   au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if bufname('%') == "NvimTree" | set laststatus=0 | else | set laststatus=2 | endif
]],
        false
    )
end

return M
