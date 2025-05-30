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

  ---------------------------------------------------------------------------
  -- Molten (richer UI)
  {
    'benlubas/molten-nvim',
    build = ':UpdateRemotePlugins',
    init = function()
      vim.g.molten_image_provider = 'image.nvim'
      vim.g.molten_auto_open_output = false
    end,
    keys = {
      { '<leader>jr', ':MoltenEvaluateLine<CR>', desc = 'run line' },
      { '<leader>jv', ':MoltenEvaluateVisual<CR>gv', mode = 'v', desc = 'run block' },
      { '<leader>jo', ':MoltenShowOutput<CR>', desc = 'show output' },
    },
  },
}
