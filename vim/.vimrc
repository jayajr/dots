"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Author:
" 	Jerome Andaya
" 	I need a website though
" Version:
" 	1.0 - 12/17/2017
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set Vim Context Size
set so=5

" Enable filetype and syntax
filetype plugin on
filetype indent on
syntax on

" Enable relative line number, number of lines, columns, and 120 column
set relativenumber
set number
set colorcolumn=120

" Set to automatically update when file is changed
set autoread

" Set to hide unmodified/unsaved buffers
set hidden 

" Set map leader
let mapleader=" "

" :W is sudo save
command W w !sudo tee % > /dev/null

" Set colors
colorscheme Tomorrow-Night-Eighties

hi Folded                   ctermfg=14          ctermbg=0
hi DiffChange   gui=none    guifg=NONE          guibg=#e5d5ac
hi DiffDelete   gui=bold    guifg=#ff8080       guibg=#ffb0b0
hi DiffText     gui=none    guifg=NONE          guibg=#8cbee2

" Set mouse allowed
set mouse=a

" Set unicode encoding
set encoding=utf-8

" No wrap
set nowrap

" Set ;; to ESC
map! jk <Esc> " map jk to Esc

:map W :w <Enter>

" Stop change mode delay
set timeoutlen=1000
set ttimeoutlen=0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text, Tab, and Indentation
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces for tabs
set expandtab

" Smart Tabs sets smart indentation
set smarttab

" Tabs == 4 spaces
set shiftwidth=4
set tabstop=4

set smartindent
set autoindent

set foldnestmax=1
set foldmethod=indent

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pathogen as Plugin Loader
execute pathogen#infect()

let g:powerline_pycmd="py3"

let g:ale_linters = {
\    'javascript': ['eslint']
\}

let g:ale_fixers = {
\    'javascript': ['eslint']
\}

let g:ale_fix_on_save = 1
let g:ale_set_balloons = 1
let g:ale_list_window_size = 5
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Functions

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction


packloadall
silent! helptags ALL
