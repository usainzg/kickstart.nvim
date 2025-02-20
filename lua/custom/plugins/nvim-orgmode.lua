return {
  'nvim-orgmode/orgmode',
  dependencies = {
    'nvim-telescope/telescope.nvim',
    'nvim-orgmode/telescope-orgmode.nvim',
    'nvim-orgmode/org-bullets.nvim',
    'nvim-treesitter/nvim-treesitter',
    -- 'lukas-reineke/headlines.nvim',
  },
  event = 'VeryLazy',
  config = function()
    require('orgmode').setup {
      org_agenda_files = '~/orgfiles/**/*',
      org_default_notes_file = '~/orgfiles/refile.org',
    }
    require('org-bullets').setup()
    -- require('headlines').setup()

    require('telescope').setup()
    require('telescope').load_extension 'orgmode'
    -- vim.keymap.set('n', '<leader>r', require('telescope').extensions.orgmode.refile_heading)
    -- vim.keymap.set('n', '<leader>fh', require('telescope').extensions.orgmode.search_headings)
    -- vim.keymap.set('n', '<leader>li', require('telescope').extensions.orgmode.insert_link)
  end,
}
