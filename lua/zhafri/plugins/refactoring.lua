return {
	"ThePrimeagen/refactoring.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	opts = {
		show_success_message = true,
		prompt_func_return_type = {
			go = true,
			cpp = true,
			c = true,
			java = true,
		},
		-- prompt for function parameters
		prompt_func_param_type = {
			go = true,
			cpp = true,
			c = true,
			java = true,
		},
	},
}
