-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>e", function()
  -- get the location of the current buffer
  local dir = vim.fn.expand("%:p:h")

  local chosenFile = vim.fn.input({
    prompt = "Choose file to edit\n",
    default = dir,
    completion = "file",
    cancelreturn = "",
  })

  if #chosenFile > 0 then
    vim.cmd.edit(chosenFile)
  end
end)
