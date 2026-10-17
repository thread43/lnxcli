#!/bin/bash

set -e
set -o pipefail
set -u
set -x

cd "$(dirname "$0")"

date

rm -rf /opt/vim

mkdir -p /opt/vim/autoload
mkdir -p /opt/vim/bundle

cd /opt/vim/bundle
echo "AutoComplPop         " && git clone https://github.com/vim-scripts/AutoComplPop
echo "MatchTag             " && git clone https://github.com/gregsexton/MatchTag
echo "ack.vim              " && git clone https://github.com/mileszs/ack.vim
echo "ctrlp.vim            " && git clone https://github.com/ctrlpvim/ctrlp.vim
echo "emmet-vim            " && git clone https://github.com/mattn/emmet-vim
echo "indentLine           " && git clone https://github.com/Yggdroot/indentLine
echo "nerdtree             " && git clone https://github.com/scrooloose/nerdtree
echo "tabular              " && git clone https://github.com/godlygeek/tabular
echo "tagbar               " && git clone https://github.com/majutsushi/tagbar
echo "tlib_vim             " && git clone https://github.com/tomtom/tlib_vim
echo "typescript-vim       " && git clone https://github.com/leafgarland/typescript-vim
echo "vim-addon-mw-utils   " && git clone https://github.com/marcweber/vim-addon-mw-utils
echo "vim-commentary       " && git clone https://github.com/tpope/vim-commentary
echo "vim-easy-align       " && git clone https://github.com/junegunn/vim-easy-align
echo "vim-ft-go            " && git clone https://github.com/google/vim-ft-go
echo "vim-fugitive         " && git clone https://github.com/tpope/vim-fugitive
echo "vim-gitgutter        " && git clone https://github.com/airblade/vim-gitgutter
echo "vim-javascript       " && git clone https://github.com/pangloss/vim-javascript
echo "vim-jsx              " && git clone https://github.com/mxw/vim-jsx
echo "vim-multiple-cursors " && git clone https://github.com/terryma/vim-multiple-cursors
echo "vim-snipmate         " && git clone https://github.com/garbas/vim-snipmate
echo "vim-snippets         " && git clone https://github.com/honza/vim-snippets
echo "vim-surround         " && git clone https://github.com/tpope/vim-surround
echo "vis                  " && git clone https://github.com/vim-scripts/vis

curl -LSso /opt/vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

mkdir -p /opt/vim/bundle/misc/plugin/
cd /opt/vim/bundle/misc/plugin/
if [ ! -f dragvisuals.vim ]; then
  wget -q "https://raw.githubusercontent.com/thoughtstream/Damian-Conway-s-Vim-Setup/master/plugin/dragvisuals.vim" -O dragvisuals.vim
fi
if [ ! -f vmath.vim ]; then
  wget -q "https://raw.githubusercontent.com/thoughtstream/Damian-Conway-s-Vim-Setup/master/plugin/vmath.vim" -O vmath.vim
fi
if [ ! -f html.vim ]; then
  wget -q "https://raw.githubusercontent.com/gregsexton/MatchTag/master/ftplugin/html.vim" -O html.vim
  cp -a html.vim xml.vim
fi

date
