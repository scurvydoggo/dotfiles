return {
    { 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' } },
    { 'marko-cerovac/material.nvim' },
    { 'nvim-telescope/telescope.nvim', dependencies = { 'nvim-lua/plenary.nvim' } },
    { 'nvim-treesitter/nvim-treesitter' },
    { 'stevearc/oil.nvim', dependencies = { "nvim-tree/nvim-web-devicons" } },
    { 'tpope/vim-sleuth' },
    {
        'img-clip.nvim',
        event = "VeryLazy",
        keys = {
          { "<leader>p", "<cmd>PasteImage<cr>", desc = "Paste image from system clipboard" },
        }, 
    },
    {
        'folke/sidekick.nvim',
        keys = {
            {
              "<c-\\>",
              function() require("sidekick.cli").toggle() end,
              desc = "Sidekick Toggle",
              mode = { "n", "t", "i", "x" },
            }
        }
    },
    {
        "zbirenbaum/copilot.lua",
        event = "VeryLazy",
        config = function()
            require("copilot").setup({
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
