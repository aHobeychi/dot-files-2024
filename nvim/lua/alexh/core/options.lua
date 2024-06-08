vim.cmd("let g:netrw_liststyle = 3")
vim.cmd("filetype plugin indent on")

local options = {
	autoindent = true,
	background = "dark",
	backup = false,
	ch = 0,
	cindent = true,
	clipboard = "unnamedplus",
	cmdheight = 0,
	conceallevel = 0,
	cursorline = true,
	expandtab = true,
	fileencoding = "utf-8",
	hidden = true,
	hlsearch = false,
	ignorecase = true,
	ls = 0,
	mouse = "a",
	number = true,
	pumheight = 10,
	relativenumber = true,
	scrolloff = 10,
	shiftround = true,
	shiftwidth = 2,
	showmode = false,
	showtabline = 0,
	sidescrolloff = 5,
	signcolumn = "yes",
	smartcase = true,
	smartindent = true,
	softtabstop = 2,
	spell = false,
	splitbelow = true,
	splitright = true,
	swapfile = false,
	tabstop = 2,
	termguicolors = true,
	timeoutlen = 1000,
	undofile = true,
	updatetime = 100,
	whichwrap = "b,s,<,>,[,],h,l",
	wrap = false,
	writebackup = false,
}

-- vim.opt.shortmess:append "c"

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.g.border_style = "rounded"
