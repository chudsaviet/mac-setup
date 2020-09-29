#!/bin/sh
set -v

echo "Installing commandline utilities..."
brew install \
	xz \
	zstd \
	pigz \
	unzip \
	htop \
	mc \
	pv \
	mtr \
	micro \
	bat \
	httpie \
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
	imagemagick \
	rustup-init \
	go \
	protobuf \
	mage \
	tmux

echo "Updatqing Python tools..."
pip install --upgrade pip setuptools
pip3 install --upgrade pip setuptools virtualenv

echo "Installing GUI applications..."
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
	prusaslicer \
	dropbox \
	autodesk-fusion360 \
	transmission \
	balenaetcher \
	free-download-manager

echo "Installing Rust toolchain..."
rustup-init -y

echo "Installing Intel power gadget"
brew cask install intel-power-gadget
