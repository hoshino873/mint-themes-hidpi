# mint-xfwm4-themes
A fork of mint-themes repository adding support for HiDPI desktop environment on Xfwm4. This is created for [gentoo-mint repository](https://github.com/hoshino873/gentoo-mint).

## Requirement for building (not for installing)
- inkscape
- optipng

## Building
```bash
git clone https://github.com/hoshino873/mint-xfwm4-themes.git
cd mint-xfwm4-themes/hidpi
./build.sh
```

## Installing
For Gentoo Linux users:
```bash
eselect repository add gentoo-mint git https://github.com/hoshino873/gentoo-mint.git
emaint sync -r gentoo-mint
emerge -a mint-xfwm4-themes
```

For others users (Linux Mint, Ubuntu, Arch Linux, etc):
```bash
curl -OL https://github.com/hoshino873/mint-xfwm4-themes/releases/download/2.1.6/mint-xfwm4-themes-2.1.6.tar.gz
tar xvf mint-xfwm4-themes-2.1.6.tar.xz
cp -avR mint-xfwm4-themes-2.1.6/usr/themes/* /usr/themes/
```
## Screenshot
![dark.png](/assets/images/dark.png)
![light.png](/assets/images/light.png)

