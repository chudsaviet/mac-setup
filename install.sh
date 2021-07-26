#!/bin/sh
set -v

echo "Architecture is $(arch)"

echo "All architectures:"

echo "Adding taps..."
brew tap homebrew/cask-fonts

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
	jq \
	youtube-dl \
	pwgen \
	git \
	coreutils \
	watch \
	speedtest-cli \
	imagemagick \
	tmux \
	mosh \
	wget \
	pv \
	micro \
	rustup-init \
	bat \
	java \
	maven \
	gradle \
	ffmpeg \
	nanopb-generator

echo "Updating Python tools..."
pip install --upgrade pip setuptools
pip3 install --upgrade pip setuptools virtualenv

echo "Updating Rust environment..."
	rustup-init -y

echo "Adding Rust bin to PATH..."
source $HOME/.cargo/env

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
	scroll-reverser \
	maccpuid \
	keepingyouawake \
	prusaslicer \
	dropbox \
	autodesk-fusion360 \
	transmission \
	balenaetcher \
	free-download-manager \
	openscad \
	font-fira-code

