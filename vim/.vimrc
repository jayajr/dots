""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
set so=15

" Enable filetype and syntax
filetype plugin on
filetype indent on
syntax on

" Enable line number, number of lines, columns, and 90 column
set number
set colorcolumn=90

" Set to automatically update when file is changed
set autoread

" Set to hide unmodified/unsaved buffers
set hidden

" Set mapleader
let mapleader=" "

" :W is sudo save
command W w !sudo tee % > /dev/null

" Set colors
colorscheme Tomorrow-Night-Eighties



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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" We'll to this later...


