return {
    "toppair/peek.nvim",
    event = { "VeryLazy" },
    build = "deno task --quiet build:fast",
    config = function()
        require("peek").setup({
			auto_load = true,
			close_on_bdelete = true,
			syntax = true,
			theme = "dark",
			update_on_change = true,
			app = "browser",
			browser = "firefox",
		})
        vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
        vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
    end,
}
