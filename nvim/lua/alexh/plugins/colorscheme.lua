return {
	{
		"loctvl842/monokai-pro.nvim",
		priority = 1000,
		enabled = true,
		config = function()
			vim.cmd([[colorscheme monokai-pro-spectrum]])
		end,
	},
	{ "diegoulloao/neofusion.nvim", priority = 1000, config = true, opts = ... },
	{
		"rebelot/kanagawa.nvim",
		priority = 1000,
		-- config = function()
		-- 	vim.cmd([[colorscheme kanagawa-dragon]])
		-- end,
		opts = ...,
	},
}
