vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- For buffers and downline
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use {'akinsho/bufferline.nvim', tag = "v2.*"}
  -- use 'ap/vim-buftabline'                                                 -- Buffers
  use 'qpkorr/vim-bufkill'

  use 'mg979/vim-visual-multi'                                            -- Multi cursor
  
  use 'sheerun/vim-polyglot'                                              -- Better code colors
  use 'folke/tokyonight.nvim'

  -- use 'Valloric/MatchTagAlways'
  use 'leafOfTree/vim-matchtag'

  use 'preservim/nerdcommenter'                                           -- Comment out

  use 'ryanoasis/vim-devicons'                                            -- Icons

  use 'junegunn/fzf.vim'                                                  -- F l    e r h
  use { 'junegunn/fzf', run = function() vim.fn['fzf#install'](0) end }   --  i e  S a c
  use 'yuki-yano/fzf-preview.vim'                                         -- Preview for file search

  use 'preservim/nerdtree'                                                -- NERDTree

  use {'lewis6991/gitsigns.nvim',                                         -- See git changes on left of the file
    config = function()
      require('gitsigns').setup()
    end
  }
  use 'tpope/vim-fugitive'                                                -- See git workflows
  use 'Xuyuanp/nerdtree-git-plugin'                                       -- See changed files on NERDTree
  use 'APZelos/blamer.nvim'                                               -- See the editor of the line

  use { 'neoclide/coc.nvim', branch = 'release' }                         -- IntelliSense

  -- Javascript development
  use 'pangloss/vim-javascript'
  use 'leafgarland/typescript-vim'
  use 'peitalin/vim-jsx-typescript'
  use 'jparise/vim-graphql'
  use {'styled-components/vim-styled-components', branch = 'main' }       -- Styled components
  
end)
