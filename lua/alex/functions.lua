function SquishSplit()
  local start_line = vim.fn.line("'<")
  local end_line = vim.fn.line("'>")
  local height = math.abs(end_line - start_line) + 1
  
  vim.cmd('split')
  vim.cmd('resize ' .. height)
  vim.cmd('normal! zt')
end
vim.api.nvim_create_user_command('SS', 'lua SquishSplit()', { range = true })
