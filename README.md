# Talos Releases Images for CAPI 

This repo contains Talos release images with Infiniband enabled.

## Create a New Release

Get Talos Kernel and Initramfs Images
Extract vmlinuz and initramfs.xz files from the talos kernel and installer images.
```
utils/ci_extract.sh ghcr.io/jgh-10050/kernel:6.1.20-talos /boot/vmlinuz
utils/ci_extract.sh ghcr.io/jgh-10050/installer:1.4.0-linux-6.1.20 usr/install/amd64/initramfs.xz
```
Upload the new images and create new release.

To download release *v1.4.0-ib-alpha*:
```
wget -O vmlinuz https://github.com/jgh-10050/talos-releases/releases/donwloads/v1.4.0-ib-alpha/vmlinuz
wget -O initramfs.xz https://github.com/jgh-10050/talos-releases/releases/download/v1.4.0-ib-alpha/initramfs.xz
```
