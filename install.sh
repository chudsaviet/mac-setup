#!/bin/sh
set -v

ARCH=$(arch)
echo "Architecture is ${ARCH}"

echo "All architectures:"
echo "Installing commandline utilities..."
brew install \
	xz \
	zstd \
	pigz \
	unzip \
	htop \
	mc \
	mtr \
	httpie \
	python3 \
	pyenv \
	awscli \
	jq \
	youtube-dl \
	pwgen \
	git \
	hping \
	coreutils \
	watch \
	speedtest-cli \
	imagemagick \
	tmux \
	protobuf \
	mosh \
	wget

echo "Updatqing Python tools..."
pip install --upgrade pip setuptools
pip3 install --upgrade pip setuptools virtualenv

echo "Installing GUI applications..."
brew install --cask \
	iterm2 \
	firefox \
	telegram \
	skype \
	spectacle \
	intellij-idea-ce \
	pycharm-ce \
	visual-studio-code \
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

if [ x"${ARCH}" = x"x86_64" ]; then
	echo "x86_64 specifics:"

	echo "Installing command line tools..."
	brew install \
		pv \
		micro \
		rust \
		rustup-init \
		bat \
		java \
		maven \
		gradle \
		ffmpeg \
		go \
		kubernetes-cli \
		mage

	echo "Updating Rust environment..."
	rustup-init -y	
fi
