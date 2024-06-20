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

local plugin_paths = {
	{ import = "alexh.plugins" },
	{ import = "alexh.plugins.lsp" },
}

local options = {
	checker = {
		enabled = true,
		notify = false,
	},
	change_detection = {
		notify = true,
	},
}

require("lazy").setup(plugin_paths, options)

local wk = require("which-key")
wk.register({
	s = {
		name = "Window Management", -- optional group name
	},
	e = {
		name = "File Explorer", -- optional group name
	},
	f = {
		name = "Fuzzy Finder", -- optional group name
	},
	c = {
		name = "Code", -- optional group name
	},
	t = {
		name = "Tab Management", -- optional group name
	},
	w = {
		name = "Session Management", -- optional group name
	},
	r = {
		name = "Lsp & Rename", -- optional group name
	},
	d = {
		name = "Show line diagnostics", -- optional group name
	},
	D = {
		name = "Show buffer diagnostics", -- optional group name
	},
	l = {
		name = "Trigger linting for this file", -- optional group name
	},
	g = {
		name = "Git Options", -- optional group name
	},
}, { prefix = "<leader>" })
