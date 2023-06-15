return {
  {
    "nvim-neorg/neorg",
    run = ":Neorg sync-parsers",
    dependencies = {
      "nvim-neorg/neorg-telescope",
      {
        "folke/zen-mode.nvim",
        opts = {},
        name = "zen-mode",
      },
    },
    opts = {
      load = {
        ["core.defaults"] = {},
        ["core.dirman"] = {
          config = {
            workspaces = {
              work = "~/vaults/work/",
              home = "~/vaults/home/",
            },
          },
        },
        ["core.completion"] = {
          config = {
            engine = "nvim-cmp",
          },
        },
        ["core.concealer"] = {
          config = {
            icon_preset = "diamond",
            icons = {
              todo = {
                done = {
                  icon = "✔",
                },
              },
            },
          },
        },
        ["core.presenter"] = {
          config = {
            zen_mode = "zen-mode",
          },
        },
        ["core.summary"] = {},
        ["core.integrations.telescope"] = {},
        ["core.qol.todo_items"] = {
          config = {
            create_todo_items = true,
            create_todo_parents = true,
          },
        },
      },
    },
  },
}
