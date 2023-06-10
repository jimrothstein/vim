-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
--  As of 22 APR 2023
--
--  REF         ThePrimeagen
--
if false then
  print("hello: nvim/config/options.lua")
end
--          PUT jr options here !:
--
--

-- $HOST is shell environmental var, set by initialize.zsh
local HOST = os.getenv("HOST") --- which machine?
if true then
  print("LUA thinks I am using " .. vim.inspect(HOST))
end

vim.g.mapleader = " "
-- Primegean likes

-- vim.opt.guicursor = "" (I don't like)
-- remains block in insert mode

vim.opt.numberwidth = 3
vim.opt.relativenumber = true -- test only, already set to true by lazyv
vim.opt.number = true

if HOST == "jim-ThinkPad-T480" then
  vim.cmd([[ set background=light]])
else
  vim.cmd([[ set background=dark]]) -- acer-desktop
end

vim.cmd([[ set clipboard+=unnamedplus]])
vim.cmd([[ syntax on]])
vim.g.listchars = "tab:>-,space:="

vim.opt.conceallevel = 0 -- show chunk markers
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

--  remove all that highlighting, except during search
--
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- keep 8
vim.opt.scrolloff = 8
vim.opt.colorcolumn = "80"
--  TODO

vim.g.R_assign = 2 --  turn off netrw (`let g:loaded_netrw = 1`)
vim.g.loaded_netrw = 0
vim.g.loaded_netrwPlugin = 0

--  load luasnip?
local ls = require("luasnip")

--  load mini.surround
require("mini.surround")

--  practice function
local function nohl_or_buffer_cycle()
  if vim.v.hlsearch == 1 then
    vim.cmd("nohlsearch")
  else
    vim.g.hlsearch = 1
    -- vim.cmd("BufferLineCycleNext")
  end
end

vim.keymap.set("n", "<C-l>", nohl_or_buffer_cycle)
