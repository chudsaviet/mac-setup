#!/bin/sh
set -v
set -e
set -x

echo "Architecture is $(arch)"

echo "Adding brew taps..."
brew tap homebrew-ffmpeg/ffmpeg
brew tap sandreas/tap

echo "Installing commandline utilities..."
brew install --force \
	atomicparsley \
	audacity \
	automake \
	awscli \
	axel \
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
	epson-print-layout \
	eqmac \
	exiftool \
	firefox \
	foobar2000 \
	gawk \
	gcloud-cli \
	git \
	git-lfs \
	glib \
	gnu-sed \
	go \
	gyroflow \
	htop \
	httpie \
	imagemagick \
	iterm2 \
	jq \
	keepingyouawake \
	kicad \
	lsusb \
	lzip \
	m4b-tool \
	make \
	mas \
	midnight-commander \
	mosh \
	mtr \
	nanopb \
	nasm \
	nmap \
	node \
	ntp \
	nvidia-nsight-systems \
	ocrmypdf \
	openjdk \
	pigz \
	pkgconf \
	prusaslicer \
	pv \
	pwgen \
	pyenv \
	python \
	rectangle \
	rustup \
	signal \
	speedtest-cli \
	steam \
	telnet \
	tmux \
	transmission-cli \
	unzip \
	visual-studio-code \
	vlc \
	watch \
	wget \
	wireguard-tools \
	wireshark-app \
	yt-dlp


echo "Building FFMPEG from tap..."
brew install homebrew-ffmpeg/ffmpeg/ffmpeg --with-fdk-aac --with-libvmaf

echo "Updating Rust environment..."
rustup-init -y

echo "Adding Rust bin to PATH..."
source $HOME/.cargo/env

echo "Installing Rust apps from Cargo..."
cargo install jless

echo "Installing apps from Mac App Store..."
mas install 1451685025 # WireGuard UI
mas install 747648890 # Telegram
mas install 454347770 # iCircuit
mas install 1381004916 # Discovery - DNS-SD Browser

echo "Install next apps manually:"
echo "1Password"
echo "Autodesk Fusion 360"
echo "DxO PhotoLab"
echo "DxO FilmPack"
echo "Filmlab"
echo "REW (speaker design)"
echo "LedgerLive"
