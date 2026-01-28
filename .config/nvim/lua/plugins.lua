return {
    { 'folke/sidekick.nvim',
      keys = {
        {
          "<c-\\>",
          function() require("sidekick.cli").toggle({ name = "claude", focus = true }) end,
          desc = "Sidekick Toggle",
          mode = { "n", "t", "i", "x" },
        },
        {
          "<leader>at",
          function() require("sidekick.cli").send({ msg = "{this}" }) end,
          mode = { "x", "n" },
          desc = "Send This",
        },
        {
          "<leader>af",
          function() require("sidekick.cli").send({ msg = "{file}" }) end,
          desc = "Send File",
        },
        {
          "<leader>av",
          function() require("sidekick.cli").send({ msg = "{selection}" }) end,
          mode = { "x" },
          desc = "Send Visual Selection",
        },
      }
    },
    { 'j-hui/fidget.nvim' },
    { 'mason-org/mason-lspconfig.nvim',
      dependencies = {
        'mason-org/mason.nvim',
        'neovim/nvim-lspconfig',
      },
    },
    { 'marko-cerovac/material.nvim' },
    { 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' } },
    { 'nvim-telescope/telescope.nvim', dependencies = { 'nvim-lua/plenary.nvim' } },
    { 'nvim-treesitter/nvim-treesitter' },
    { 'stevearc/oil.nvim', dependencies = { "nvim-tree/nvim-web-devicons" } },
    { 'tpope/vim-fugitive' },
    { 'tpope/vim-sleuth' },
    { 'zbirenbaum/copilot.lua',
      event = 'VeryLazy',
      config = function()
        require('copilot').setup({
          suggestion = {
            enabled = true,
            auto_trigger = true,
            accept = false,
          },
          panel = {
            enabled = false,
          },
        })

        vim.keymap.set("i", "<S-Tab>", function()
          if require("copilot.suggestion").is_visible() then
            require("copilot.suggestion").accept()
          else
            vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<S-Tab>", true, false, true), "n", false)
          end
        end, {
          silent = true,
        })
      end,
    }
}
