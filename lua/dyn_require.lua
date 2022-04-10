local config_list = {
  "nvim-tree",
  "bufferline",
  "lualine",
  "dashboard",
  "project",
  "nvim-treesitter",
  "indent-blankline"
}

for _,value in ipairs(config_list) do
  local config = "conf." .. value
  require(config)
end
