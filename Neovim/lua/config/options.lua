vim.opt.number = true
vim.opt.relativenumber = false

vim.opt.cursorline = true
vim.opt.wrap = true

vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.swapfile = false

vim.opt.termguicolors = true

vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
-- vim.cmd.colorscheme "catppuccin-mocha"

vim.diagnostic.config({
	virtual_text = true
})

vim.filetype.add({
	extension = {
		mdx = "markdown.mdx",
	},
	filename = {
		["docker-compose.yml"]  = "yaml.docker-compose",
		["docker-compose.yaml"] = "yaml.docker-compose",
		["compose.yml"]         = "yaml.docker-compose",
		["compose.yaml"]        = "yaml.docker-compose",
		[".gitlab-ci.yml"]      = "yaml.gitlab",
	},
	pattern = {
		["docker%-compose%..*%.ya?ml"] = "yaml.docker-compose",
		["compose%..*%.ya?ml"]         = "yaml.docker-compose",
		[".*/templates/.*%.ya?ml"]     = "helm",
		[".*/templates/.*%.tpl"]       = "helm",
		[".*helmfile%.ya?ml"]          = "helm",
		[".*/values%.ya?ml"]     = "yaml.helm-values",
		[".*/values%-.*%.ya?ml"] = "yaml.helm-values",
	},
})
