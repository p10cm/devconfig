#!/bin/sh

if [ -e ~/.vimrc -o -e ~/.vim ]; then
	echo "경고: 설치를 진행하려면 ~/.vim/ 디렉토리와 ~/.vimrc 파일을 삭제해야 합니다."
	exit
fi

echo "vimrc 파일 복사..."
cp ~/devconfig/vim/vimrc ~/.vimrc

echo "vundle 다운로드중..."
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

echo "solarized 설치중..."
mkdir ~/.vim/colors
cp -r ~/devconfig/theme-solarized/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/

echo "plugin 설치..."
cp -r ~/devconfig/vim/plugins ~/.vim/bundle/

echo "vundle 설치중..."
vi -c :BundleInstall -c :qa
