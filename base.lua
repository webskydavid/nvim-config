vim.cmd('autocmd!')

vim.wo.number = true
vim.opt.title = true
vim.opt.clipboard:append {'unnamedplus'}

-- Turn off paste when not in INSERT mode
vim.api.nvim_create_autocmd("InsertLeave", {
	pattern = '*',
	command = "set nopaste"
})


