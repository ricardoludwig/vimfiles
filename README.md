# README

## Instruções de instalação - Linux

``
git clone https://github.com/ricardoludwig/vimfiles.git ~/.vim

echo "source ~/.vim/.vimrc" > ~/.vimrc

cd ~/.vim

git submodule update --init

``
### Ajustando para utilizar com o release correto do plugin vim-go

``
cd ~/.vim/pack/plugins/start/vim-go && git checkout v1.24
``

## Adicionando novos git submodules ao projeto

``
cd ~/.vim/pack/plugins/start && git submodule add https://github.com/repo/project.git
``


