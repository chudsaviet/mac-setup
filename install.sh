#!/bin/sh
set -v
set -e
set -x

echo "Architecture is $(arch)"

echo "Adding brew taps..."
brew tap homebrew-ffmpeg/ffmpeg

echo "Installing commandline utilities..."
brew install --force \
	atomicparsley \
	automake \
	awscli \
	axel \
	bat \
	binutils \
	bison \
	ccache \
	clang-format \
	clang-format@11 \
	cmake \
	coreutils \
	doxygen \
	exiftool \
	gawk \
	gcloud-cli \
	git \
	git-lfs \
	glib \
	gnu-sed \
	go \
	htop \
	httpie \
	imagemagick \
	iterm2 \
	jq \
	lsusb \
	lzip \
	m4b-tool \
	make \
	midnight-commander \
	mosh \
	mtr \
	nanopb \
	nasm \
	nmap \
	node \
	ntp \
	ocrmypdf \
	openjdk \
	pigz \
	pkgconf \
	pv \
	pwgen \
	pyenv \
	python \
	rustup \
	speedtest-cli \
	telnet \
	tmux \
	transmission-cli \
	unzip \
	visual-studio-code \
	watch \
	wget \
	wireguard-tools \
	yt-dlp

echo "Building FFMPEG from tap..."
brew install homebrew-ffmpeg/ffmpeg/ffmpeg --with-fdk-aac --with-libvmaf

echo "Updating Rust environment..."
rustup-init -y

echo "Adding Rust bin to PATH..."
source $HOME/.cargo/env

echo "Installing Rust apps from Cargo..."
cargo install jless
