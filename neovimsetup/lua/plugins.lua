return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {'neoclide/coc.nvim', branch = 'release'}
  use 'preservim/nerdtree'
  use 'tpope/vim-commentary'
  --use 'ctrlpvim/ctrlp.vim'
  use 'prabirshrestha/vim-lsp'
  -- use 'jackguo380/vim-lsp-cxx-highlight'
  use 'mhartington/oceanic-next'
  use { 'feline-nvim/feline.nvim' }
 --use {'lewis6991/gitsigns.nvim'}
  use {
          'nvim-telescope/telescope.nvim', tag = '0.1.1',
            -- or                            , branch = '0.1.x',
           requires = {
               {'nvim-lua/plenary.nvim'},
               { "nvim-telescope/telescope-live-grep-args.nvim" },
            },
            config = function()
                require("telescope").load_extension("live_grep_args")
                end
      }
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
  use { 'numirias/semshi' }
  use { 'justinmk/vim-sneak' }
  end)
