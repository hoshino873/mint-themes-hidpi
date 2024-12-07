[![CI](https://github.com/hoshino873/mint-themes-hidpi/actions/workflows/ci.yml/badge.svg)](https://github.com/hoshino873/mint-themes-hidpi/actions/workflows/ci.yml)
[![Release](https://github.com/hoshino873/mint-themes-hidpi/actions/workflows/release.yml/badge.svg)](https://github.com/hoshino873/mint-themes-hidpi/actions/workflows/release.yml)

# mint-themes-hidpi
A fork of mint-themes repository adding HiDPI display support for Xfwm4. This is created for [gentoo-mint repository](https://github.com/hoshino873/gentoo-mint).

## Installation
For Gentoo Linux users:
```bash
eselect repository add gentoo-mint git https://github.com/hoshino873/gentoo-mint.git
emaint sync -r gentoo-mint
emerge -a mint-themes-hidpi
```

For other users (Linux Mint, Ubuntu, Arch Linux, etc):
```bash
curl -OL https://github.com/hoshino873/mint-themes-hidpi/releases/download/2.1.8/mint-themes-hidpi-2.1.8.tar.gz
tar xvf mint-themes-hidpi-2.1.8.tar.gz
cp -av mint-themes-hidpi-2.1.8/usr/share/themes/* /usr/share/themes # for all users
cp -av mint-themes-hidpi-2.1.8/usr/share/themes/* ~/.local/share/themes # only for yourself
```

## Build Instructions (not required for installation)

### Prerequisites
To build this project, you need the following tools installed on your system:
- **Inkscape**: For handling SVG files.
- **optipng**: For optimizing PNG images.

### Steps to Build
```bash
git clone https://github.com/hoshino873/mint-themes-hidpi.git
cd mint-themes-hidpi/hidpi
./build.sh
```

## Screenshot
![dark.png](/assets/images/dark.png)
![light.png](/assets/images/light.png)
