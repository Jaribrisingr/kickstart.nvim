-- Setup auto commands for formatters etc

-- Create group to assign commands
-- "clear = true" must be set to prevent loading an
-- auto-command repeatedly every time a file is resourced
local autocmd_group = vim.api.nvim_create_augroup("Custom auto-commands", { clear = true })

-- sqlfmt
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	pattern = { "*.sql" },
	desc = "Auto-format sql files after saving",
	callback = function()
		local fileName = vim.api.nvim_buf_get_name(0)
		vim.cmd(":silent !sqlfmt " .. fileName)
	end,
	group = autocmd_group,
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	pattern = { "*.yaml", "*.yml" },
	desc = "Auto-format YAML files after saving",
	callback = function()
		-- local fileName = vim.api.nvim_buf_get_name(0)
		-- vim.cmd(":silent !yamlfmt " .. fileName)
		vim.cmd(":silent !prettier . --write")
	end,
	group = autocmd_group,
})


vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	pattern = { "*.py" },
	desc = "Auto-format Python files after saving",
	callback = function()
		local fileName = vim.api.nvim_buf_get_name(0)
		vim.cmd(":silent !black --preview -q " .. fileName)
		-- vim.cmd(":silent !isort --profile black --float-to-top -q " .. fileName)
		-- vim.cmd(":silent !docformatter --in-place --black " .. fileName)
	end,
	group = autocmd_group,
})
