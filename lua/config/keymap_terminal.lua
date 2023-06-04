--
-- i stole this.
--

-- Map leader key to space.
vim.g.mapleader = " "

-- Split navigations.
vim.keymap.set("n", "<A-j>", "<C-w><C-j>")
vim.keymap.set("n", "<A-k>", "<C-w><C-k>")
vim.keymap.set("n", "<A-l>", "<C-w><C-l>")
vim.keymap.set("n", "<A-h>", "<C-w><C-h>")

-- Buffer resizing.
vim.keymap.set("n", "<S-h>", ":call ResizeLeft(3)<CR><Esc>")
vim.keymap.set("n", "<S-l>", ":call ResizeRight(3)<CR><Esc>")
vim.keymap.set("n", "<S-k>", ":call ResizeUp(1)<CR><Esc>")
--  <S-j> is my concatinate key (2 lines)
-- vim.keymap.set("n", "<S-j>", ":call ResizeDown(1)<CR><Esc>")

-- Buffer switching.
vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>")
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>")

-- Moving lines in visual select.
-- map("v", "K", ":move '<-2<CR>gv-gv")
-- map("v", "J", ":move '>+1<CR>gv-gv")

-- ToggleTerm
function _G.set_terminal_keymaps()
  vim.keymap.set("t", "<esc>", "<C-\\><C-n>")
  vim.keymap.set("t", "<A-h>", "<c-\\><c-n><c-w>h")
  vim.keymap.set("t", "<A-j>", "<c-\\><c-n><c-w>j")
  vim.keymap.set("t", "<A-k>", "<c-\\><c-n><c-w>k")
  vim.keymap.set("t", "<A-l>", "<c-\\><c-n><c-w>l")

  vim.keymap.set("t", "<S-h>", "<c-\\><C-n>:call ResizeLeft(3)<CR>")
  vim.keymap.set("t", "<S-j>", "<c-\\><C-n>:call ResizeDown(1)<CR>")
  vim.keymap.set("t", "<S-k>", "<c-\\><C-n>:call ResizeUp(1)<CR>")
  vim.keymap.set("t", "<S-l>", "<c-\\><C-n>:call ResizeRight(3)<CR>")
end

--  open terminal, in insert mode
vim.keymap.set("n", "<leader>tt", ":vsplit term://zsh<CR>a")

vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "term://*",
  callback = function()
    set_terminal_keymaps()
  end,
})

-- Don't copy the replaced text after pasting.
vim.keymap.set("v", "p", '"_dP')

-- With this you can use > < multiple time for changing indent when you visual selected text.
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")
