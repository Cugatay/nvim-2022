-- To delete words with alt + backspace
vim.cmd("imap <A-BS> <C-W>")
vim.cmd("cmap <a-bs> <c-w>")

-- Coc go to defined file
vim.cmd("nnoremap <silent><nowait> gd :call CocAction('jumpDefinition')<CR>")
vim.cmd("nnoremap <silent><nowait> gk :call CocAction('definitionHover')<CR>")

-- Window transitions
vim.cmd("noremap <C-h> <cmd>wincmd h<CR>")
vim.cmd("noremap <C-l> <cmd>wincmd l<CR>")
vim.cmd("noremap <C-j> <cmd>wincmd j<CR>")
vim.cmd("noremap <C-k> <cmd>wincmd k<CR>")

-- Buffer
vim.cmd("noremap <tab> <cmd>bn<CR>")
vim.cmd("noremap <S-tab> <cmd>bp<CR>")
vim.cmd("noremap <C-w> <cmd>BD<CR>")

-- NERDTree Toggle
vim.cmd("noremap <C-b> <cmd>NERDTreeFind<CR>")

-- NERDTree Find File's Location
-- vim.cmd("noremap <C-e> <cmd>NERDTreeFind<CR> <cmd>wincmd l<CR>")

-- See all buffers
vim.cmd("noremap <C-t> <cmd>Buffers<CR>")

-- Line up and down
vim.cmd([[
nnoremap <S-j> :m .+1<CR>==
nnoremap <S-k> :m .-2<CR>==
vnoremap <S-j> :m '>+1<CR>gv=gv
vnoremap <S-k> :m '<-2<CR>gv=gv
]])

-- Git Changes
vim.cmd("noremap <C-c> <cmd>Gitsigns preview_hunk<CR>")  -- Little
vim.cmd("noremap <C-x> <cmd>Gdiffsplit<CR>")             -- Whole split

-- Fuzzy Finder
vim.cmd("noremap <C-p> <cmd>Files<CR>")
vim.cmd("noremap <C-g> <cmd>GitFiles<CR>")
vim.cmd("noremap <C-f> <cmd>Ag<CR>")
