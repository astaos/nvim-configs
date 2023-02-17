--[[
-   NOTE      - nvim-indentconfig-configs.lua
-   Author    - Asta
-
-   Created   - 2022.11.14
-   Github    - https://github.com/astaos
-   Contact   - vine9151@gmail.com
]]



-- ================================================== --
-- Check error.
local status_ok, nvim_autoindents = pcall(require, "nvim-indentconfig")
if not status_ok then
  return
end
-- ================================================== --


-- =========================== --
--   Additional User Configs   --
-- =========================== --
-- Configure setup with some options.
nvim_autoindents.setup({
  -- The global indent settings here.
  -- This option would set all the filetyps.
  default = {
    expandtab = true,
    size = 2
  },

  -- The exclusion indent settings here.
  -- This option would necessary specific filetypes.
  exclusions = {
    {
      expandtab = false,
      size = 8,
      filetype = { 'make' }
    },

    {
      expandtab = false,
      size = 4,
      filetype = { 'verilog' }
    },

    {
      expandtab = true,
      size = 4,
      filetype = {
        'c','cpp','php',
        'systemverilog',
      }
    },
  },

  ft_preset = {
    { filename = '*.h', filetype = 'c' },
    { filename = '*.xaml', filetype = 'xml' },
  },
})
