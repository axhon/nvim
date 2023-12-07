return {
  -- add telescope-fzf-native
  {
    "telescope.nvim",
    dependencies = {
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        config = function()
          require("telescope").load_extension("fzf")
        end,
      },
      -- project management
      {
        "ahmedkhalf/project.nvim",
        opts = {},
        event = "VeryLazy",
        config = function(_, opts)
          require("project_nvim").setup(opts)
          require("lazyvim.util").on_load("telescope.nvim", function()
            require("telescope").load_extension("projects")
          end)
        end,
        keys = {
          { "<leader>fp", "<Cmd>Telescope projects<CR>", desc = "Projects" },
        },
      },
    },
  },
}
