" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" TODO: Load plugins here (pathogen or vundle)

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" TODO: Pick a leader key
" let mapleader = ","

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
" set wrap
set nowrap
set textwidth=0
" set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

"Better window navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Set color column
set colorcolumn=100

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

"colorscheme ambient
"colorscheme seoul256
"colorscheme lucius2
colorscheme base16-default-dark

" Color scheme (terminal)
" set t_Co=256
" set background=dark
" let g:solarized_termcolors=256
" let g:solarized_termtrans=1
"
highlight! link DiffText Todo

au BufNewFile,BufRead Snakefile set syntax=snakemake
au BufNewFile,BufRead *.Snakefile set syntax=snakemake
au BufNewFile,BufRead *.snake set syntax=snakemake
au BufNewFile,BufRead *.snakefile set syntax=snakemake

" Copyright 2019 Google LLC
"
" Licensed under the Apache License, Version 2.0 (the "License");
" you may not use this file except in compliance with the License.
" You may obtain a copy of the License at
"
"    https://www.apache.org/licenses/LICENSE-2.0
"
" Unless required by applicable law or agreed to in writing, software
" distributed under the License is distributed on an "AS IS" BASIS,
" WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
" See the License for the specific language governing permissions and
" limitations under the License.

" " Indent Python in the Google way.
"
" setlocal indentexpr=GetGooglePythonIndent(v:lnum)
"
" let s:maxoff = 50 " maximum number of lines to look backwards.
"
" function GetGooglePythonIndent(lnum)
"
"   " Indent inside parens.
"   " Align with the open paren unless it is at the end of the line.
"   " E.g.
"   "   open_paren_not_at_EOL(100,
"   "                         (200,
"   "                          300),
"   "                         400)
"   "   open_paren_at_EOL(
"   "       100, 200, 300, 400)
"   call cursor(a:lnum, 1)
"   let [par_line, par_col] = searchpairpos('(\|{\|\[', '', ')\|}\|\]', 'bW',
"         \ "line('.') < " . (a:lnum - s:maxoff) . " ? dummy :"
"         \ . " synIDattr(synID(line('.'), col('.'), 1), 'name')"
"         \ . " =~ '\\(Comment\\|String\\)$'")
"   if par_line > 0
"     call cursor(par_line, 1)
"     if par_col != col("$") - 1
"       return par_col
"     endif
"   endif
"
"   " Delegate the rest to the original function.
"   return GetPythonIndent(a:lnum)
"
" endfunction
"
" let pyindent_nested_paren="&sw*2"
" let pyindent_open_paren="&sw*2"
