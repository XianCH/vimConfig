return {
    {
        -- j and k move fast
        "rhysd/accelerated-jk",
        config = function()
            vim.keymap.set("n", "j", "<Plug>(accelerated_jk_gj)")
            vim.keymap.set("n", "k", "<Plug>(accelerated_jk_gk)")
        end,
    },
    {
        "folke/persistence.nvim",
        config = function()
            require("persistence").setup()
            vim.api.nvim_set_keymap("n", "<leader>qs", [[<cmd>lua require("persistence").load()<cr>]], {})
            -- restore the last session
            vim.api.nvim_set_keymap("n", "<leader>ql", [[<cmd>lua require("persistence").load({ last = true })<cr>]], {})
            -- stop Persistence => session won't be saved on exit
            vim.api.nvim_set_keymap("n", "<leader>qd", [[<cmd>lua require("persistence").stop()<cr>]], {})
        end

    },
    {
        -- auto print () "" ...
        'windwp/nvim-autopairs',
        -- use opts = {} for passing setup options
        -- this is equalent to setup({}) function
        opts = {
            enable_check_bracket_line = false,
        },
    },
    {
        -- rember the last code palce
        "ethanholz/nvim-lastplace",
        config = true,
    },
    {
        "folke/flash.nvim",
        event = "VeryLazy",
        ---@type Flash.Config
        opts = {},
        -- stylua: ignore
        keys = {
            { "s",     mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "Flash" },
            { "S",     mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
            { "r",     mode = "o",               function() require("flash").remote() end,            desc = "Remote Flash" },
            { "R",     mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
            { "<c-s>", mode = { "c" },           function() require("flash").toggle() end,            desc = "Toggle Flash Search" },
        },
    },

    -- tuoFeng check
    --   {
    --        "kamykn/spelunker.vim",
    --        config = function()
    --            vim.g.spelunker_check_type = 2
    --        end
    --    },
    --mark down plugins
    {
        "ellisonleao/glow.nvim",
        config = true,
    },

    --file tree
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        },
        config = function()
            require("neo-tree").setup()
            vim.keymap.set({ "n", "v" }, "<leader>e", [[<cmd>Neotree toggle<CR>]])
        end
    },
    {
        "folke/which-key.nvim",
        config = true,
    },
    -- echasnovski/mini.comment
    {
        "echasnovski/mini.comment",
        config = true,
    },
    --smart splits
    {
        "mrjones2014/smart-splits.nvim",
        config = function()
            vim.keymap.set('n', '<A-h>', require('smart-splits').resize_left)
            vim.keymap.set('n', '<A-j>', require('smart-splits').resize_down)
            vim.keymap.set('n', '<A-k>', require('smart-splits').resize_up)
            vim.keymap.set('n', '<A-l>', require('smart-splits').resize_right)
            -- moving between splits
            vim.keymap.set('n', '<C-h>', require('smart-splits').move_cursor_left)
            vim.keymap.set('n', '<C-j>', require('smart-splits').move_cursor_down)
            vim.keymap.set('n', '<C-k>', require('smart-splits').move_cursor_up)
            vim.keymap.set('n', '<C-l>', require('smart-splits').move_cursor_right)
            -- swapping buffers between windows
            vim.keymap.set('n', '<leader><leader>h', require('smart-splits').swap_buf_left)
            vim.keymap.set('n', '<leader><leader>j', require('smart-splits').swap_buf_down)
            vim.keymap.set('n', '<leader><leader>k', require('smart-splits').swap_buf_up)
            vim.keymap.set('n', '<leader><leader>l', require('smart-splits').swap_buf_right)
        end
    }
}
