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
    { 'alex35mil/pi.nvim',
      cmd = { "Pi", "PiToggleChat", "PiContinue", "PiResume" },
      keys = {
        { "<leader>pp", "<cmd>Pi layout=side<cr>", desc = "Pi side", mode = { "n", "v" } },
        { "<leader>pf", "<cmd>Pi layout=float<cr>", desc = "Pi float", mode = { "n", "v" } },
        { "<leader>pl", "<cmd>PiToggleLayout<cr>", desc = "Pi toggle layout", mode = { "n", "v" } },
        { "<leader>pc", "<cmd>PiContinue<cr>", desc = "Pi continue last session", mode = { "n", "v" } },
        { "<leader>pr", "<cmd>PiResume<cr>", desc = "Pi resume past session", mode = { "n", "v" } },
        { "<leader>pm", "<cmd>PiSendMention<cr>", desc = "Pi mention file/selection", mode = { "n", "v" } },
        { "<leader>pa", "<cmd>PiAttention<cr>", desc = "Pi open next attention request", mode = { "n", "v" } },
      },
      opts = {
        layout = {
          side = {
            position = "right",
            width = 50,
          },
        },
      },
    },
    { 'folke/neodev.nvim' },
    {
      "HakonHarnes/img-clip.nvim",
       opts = {
         default = { dir_path = "/tmp/nvim_images" },
       },
       event = "VeryLazy",
       keys = {
         { "<leader>p", "<cmd>PasteImage<cr>", desc = "Paste image from system clipboard" }
       },
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
    { 'nvim-telescope/telescope.nvim',
      dependencies = { 'nvim-lua/plenary.nvim' },
      opts = {
        defaults = {
          path_display = {
            "filename_first"
          },
        }
      }
    },
    { 'nvim-treesitter/nvim-treesitter' },
    { 'stevearc/oil.nvim',
      dependencies = { "nvim-tree/nvim-web-devicons" },
      opts = {
        view_options = { show_hidden = true },
      },
      keys = {
        { "-", "<cmd>Oil<cr>", desc = "Open parent directory" },
      },
    },
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
