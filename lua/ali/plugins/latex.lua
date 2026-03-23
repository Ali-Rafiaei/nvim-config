return {
  {
    'lervag/vimtex',
    lazy = false, -- must NOT be lazy loaded
    init = function()
      -- vim.g.maplocalleader = ','
	  -- localleader was set in the set.lua file

      -- PDF viewer (cross-platform)
      if vim.fn.has 'win32' == 1 then
        vim.g.vimtex_view_method = 'general'
        vim.g.vimtex_view_general_viewer = 'SumatraPDF'
        vim.g.vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'
      else
        vim.g.vimtex_view_method = 'zathura'
      end

      -- Disable K since your LSP config already uses it for hover
      vim.g.vimtex_mappings_disable = { ['n'] = { 'K' } }

      vim.g.vimtex_compiler_method = 'latexmk'
      vim.g.vimtex_quickfix_method = 'latexlog'
    end,
  },
}
