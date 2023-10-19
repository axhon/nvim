return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-path", "hrsh7th/cmp-cmdline", "hrsh7th/cmp-emoji" },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")

      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "path" }, { name = "emoji" } }))

      -- only set this up for cmdline
      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = "path" },
          { name = "cmdline" },
        }),
      })
    end,
  },
}
