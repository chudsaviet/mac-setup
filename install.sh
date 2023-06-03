#!/bin/sh
set -v
set -e
set -x

echo "Architecture is $(arch)"

echo "All architectures:"

echo "Adding taps..."
brew tap homebrew/cask-fonts

echo "Installing commandline utilities..."
brew install --force \
	autodesk-fusion360 \
	automake \
	awscli \
	balenaetcher \
	bat \
	binutils \
	bison \
	ccache \
	clang-format \
	clang-format@11 \
	cmake \
	coreutils \
	docker \
	docker \
	doxygen \
	dropbox \
	firefox \
	font-fira-code \
	free-download-manager \
	gawk \
	git \
	git-lfs \
	gnu-sed \
	go \
	homebrew-ffmpeg/ffmpeg/ffmpeg \
	htop \
	httpie \
	imagemagick \
	iterm2 \
	jq \
	keepingyouawake \
	libsvg \
	lsusb \
	lzip \
	maccpuid \
	make \
	micro \
	midnight-commander \
	mkvtoolnix \
	mosh \
	mtr \
	nanopb-generator \
	nasm \
	nghttp2 \
	node \
	ntp \
	opencascade \
	openscad \
	openssh \
	openssl@3 \
	pigz \
	prusaslicer \
	pv \
	pwgen \
	pyenv \
	python \
	rbenv-bundler \
	ruby \
	rustup-init \
	scroll-reverser \
	skype \
	smartmontools \
	spectacle \
	speedtest-cli \
	telegram \
	telnet \
	tmux \
	transmission \
	transmission-cli \
	unzip \
	visual-studio-code \
	vlc \
	vorbis-tools \
	watch \
	wget \
	wxwidgets \
	x265 \
	yasm \
	yt-dlp \
	influxdb-cli

echo "Updating Python tools..."
pip install --upgrade pip setuptools
pip3 install --upgrade pip setuptools virtualenv

echo "Updating Rust environment..."
rustup-init -y

echo "Adding Rust bin to PATH..."
source $HOME/.cargo/env

echo "Installing Rust apps from Cargo..."
cargo install jless
