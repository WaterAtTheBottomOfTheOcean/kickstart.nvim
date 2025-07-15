-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  ---------------------------------------------------------------------------
  -- Fast virtual-env management with uv
  {
    'benomahony/uv.nvim',
    cmd = { 'UVInit', 'UVRunFile', 'UVSync' },
    keys = { { '<leader>x', '<cmd>UV<CR>', desc = 'uv menu' } },
    config = true,
  },

  { -- LaTeX core
    'lervag/vimtex',
    lazy = false, -- load immediately
    init = function()
      vim.g.vimtex_imaps_enabled = 0 --i.e., disable them

      vim.g.vimtex_view_method = 'zathura'
      vim.g.vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'
      --quickfix settings
      vim.g.vimtex_quickfix_open_on_warning = 0 --  don't open quickfix if there are only warnings
      vim.g.vimtex_quickfix_ignore_filters =
        { 'Underfull', 'Overfull', 'LaTeX Warning: .\\+ float specifier changed to', 'Package hyperref Warning: Token not allowed in a PDF string' }
    end,
  },

  { -- Citation picker (bib files)
    'nvim-telescope/telescope-bibtex.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim' },
    config = function()
      require('telescope').load_extension 'bibtex'
      vim.keymap.set('n', '<leader>cc', ':Telescope bibtex<CR>', { desc = 'Insert citation' })
    end,
  },

  { -- Copilot
    'github/copilot.vim',
  },
}
