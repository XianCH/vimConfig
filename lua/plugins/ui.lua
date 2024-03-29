return{
    {
        "akinsho/bufferline.nvim",
        config = {},
        config = function()
            require("bufferline").setup()
        end
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        config = {},
        config = function()
            require("ibl").setup()
        end
    },
    {
        "lewis6991/gitsigns.nvim",
        config = true, 
    },
    {
        "goolord/alpha-nvim",
        config = function ()
            require'alpha'.setup(require'alpha.themes.dashboard'.config)
        end
    },
    {
        "RRethy/vim-illuminate",
        config = function()
        require('illuminate').configure()
        end
    },
}

