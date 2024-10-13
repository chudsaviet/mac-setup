#!/bin/sh
set -v
set -e
set -x

echo "Architecture is $(arch)"

echo "All architectures:"

echo "Installing commandline utilities..."
brew install --force \
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
	doxygen \
	font-fira-code \
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
	make \
	micro \
	midnight-commander \
	mosh \
	mtr \
	nanopb-generator \
	nasm \
	nghttp2 \
	node \
	ntp \
	pigz \
	pv \
	pwgen \
	pyenv \
	python \
	rbenv-bundler \
	ruby \
	rustup-init \
	spectacle \
	speedtest-cli \
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
	wireguard-tools \
	qrencode

echo "Updating Rust environment..."
rustup-init -y

echo "Adding Rust bin to PATH..."
source $HOME/.cargo/env

echo "Installing Rust apps from Cargo..."
cargo install jless
