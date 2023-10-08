return {
	'nvim-treesitter/nvim-treesitter',
	dependenvies = {
		'nvim-treesitter/nvim-treesitter-textobjects',
	},
	build = ':TSUpdate',

	config = function ()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installd = { "lua", "vim", "vimdoc", "javascript", "html", "rust", "typescript", "tsx", "python" },
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end
}
