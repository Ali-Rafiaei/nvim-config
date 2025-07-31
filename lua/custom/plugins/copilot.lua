return {
  {
    'zbirenbaum/copilot.lua',
    event = 'VeryLazy',
    config = function()
      require('copilot').setup {
        suggestion = {
          enabled = true,
          auto_trigger = true,
          --accept = false,
          keymap = {
            accept = '<M-y>',
            accept_word = false,
            accept_line = false,
            next = '<M-]>',
            prev = '<M-[>',
            dismiss = '<M-d>',
          },
        },
        panel = {
          enabled = false,
        },
        filetypes = {
          ['*'] = true,
        },
      }
      -- vim.keymap.set('i', '<S-Tab>', function()
      -- if require('copilot.suggestion').is_visible() then
      --   require('copilot.sugggestion').accept()
      -- else
      --   vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<S-Tab>', true, false, true), 'n', false)
      -- end
      -- end, {
      --   silent = true,
      -- })
    end,
  },
}
