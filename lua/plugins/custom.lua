local plugins = {
	{
		"michaelrommel/nvim-silicon",
		lazy = true,
		cmd = "Silicon",
		config = function()
			require("silicon").setup({
				font = "JetBrainsMono Nerd Font=34;Noto Color Emoji=34",
			})
		end,
	},
	{
		"xeluxee/competitest.nvim",
		dependencies = "MunifTanjim/nui.nvim",
		config = function()
			require("competitest").setup({
				template_file = "~/cp/template.cpp",
			})
		end,
	},
}
return plugins
