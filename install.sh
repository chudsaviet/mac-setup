#!/bin/sh

brew install \
	xz \
	zstd \
	unzip \
	htop \
	mc \
	pv \
	mtr \
	micro \
	bat \
	httpie \
	python2 \
	python3 \
	pyenv \
	maven \
	gradle \
	awscli \
	jq \
	ffmpeg \
	youtube-dl \
	telnet \
	pwgen \
	git \
	kubernetes-cli \
	hping \
	graphviz \
	coreutils \
	watch \
	speedtest-cli \
	imagemagick

pip install --upgrade pip setuptools
pip3 install --upgrade pip setuptools virtualenv

brew cask install \
	iterm2 \
	firefox \
	telegram \
	skype \
	spectacle \
	intellij-idea-ce \
	pycharm-ce \
	visual-studio-code \
	java \
	docker \
	vlc \
	typora \
	maccpuid \
	keepingyouawake \
	krita \
	prusaslicer
