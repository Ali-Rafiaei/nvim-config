return {
  'stevearc/aerial.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = {
     "nvim-treesitter/nvim-treesitter",
     "nvim-tree/nvim-web-devicons"
  },
  config = function()
	  require("aerial").setup({
		  on_attach = function(bufnr)
			  vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
			  vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
		end,
		highlight_on_hover = true,
		autojump = true,
	  })
	  vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")
  end
}
