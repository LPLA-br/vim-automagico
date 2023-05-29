#!/bin/bash

VIMSCRIPTDIR='/tmp/script.vim';

echo "##### CONFIGURADO VIM EM COMPUTADOR FORASTEIRO #####";

echo "VIM instalado $( if [[ -f /bin/vim ]]; then echo '...[ OK ]'; else echo '...[ FALHOU ]'; fi )";

echo "NODE instalado $( if [[ -f /bin/node ]]; then echo '...[ OK ]'; else echo '...[ FALHOU ]'; fi )";

mv ./vimrc /home/$USER/.vimrc;

curl -fLo /home/$USER/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim;

if [[ $? == 0 ]]; then
	echo CURL vimplug ...[ OK ];
elif [[ $? != 0 ]]; then
	echo CURL vimplug ...[ FALHOU ];
	exit;
fi

echo ':plugInstall' > $VIMSCRIPTDIR;
vim -s $VIMSCRIPTDIR;

if [[ $? == 0 ]]; then
	echo vim script ...[ OK ];
elif [[ $? != 0 ]]; then
	echo vim script ...[ FALHOU ];
	exit;
fi

