return{
   {
       "folke/tokyonight.nvim",
       config = function()
           vim.cmd[[colorscheme tokyonight-storm]]
       end
   },
   {
        "nvim-lualine/lualine.nvim",
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lualine').setup()
        end

   },
   {
       "utilyre/barbecue.nvim",
        name = "barbecue",
        version = "*",
        dependencies = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons", -- optional dependency
          },
          opts = {
            -- configurations go here
          },
        },
}

