return {
  {
    "renerocksai/telekasten.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "renerocksai/calendar-vim" },
    opts = {
      home = vim.fn.expand("~/notes"),
    },
    keys = function()
      local telekasten = require("telekasten")
      return {
        {
          "<leader>zfn",
          function()
            telekasten.find_notes()
          end,
          desc = "Find Notes",
        },
        {
          "<leader>zfd",
          function()
            telekasten.find_daily_notes()
          end,
          desc = "Find Daily Notes",
        },
        {
          "<leader>znn",
          function()
            telekasten.new_note()
          end,
          desc = "Create new note",
        },
        {
          "<leader>zN",
          function()
            telekasten.new_note()
          end,
          desc = "Create new note",
        },
        {
          "<leader>zgt",
          function()
            telekasten.goto_today()
          end,
          desc = "Open Today's Note",
        },
        {
          "<leader>zsn",
          function()
            telekasten.search_notes()
          end,
          desc = "Search for notes containing input",
        },
        {
          "<leader>zst",
          function()
            telekasten.show_tags()
          end,
          desc = "Search for notes containing tags",
        },
        {
          "<leader>ztt",
          function()
            telekasten.toggle_todo()
          end,
          desc = "Toggle Todo",
        },
        {
          "<leader>z",
          name = "+Telekasten",
          desc = "Telekasten",
        },
      }
    end,
  },
}
