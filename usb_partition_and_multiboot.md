# *Comprehensive Guide to Creating a Multi-Boot USB with Live Linux ISOs*

Welcome to your journey of creating a powerful multi-boot USB drive loaded with various Linux live distributions! This guide will walk you through every step, from preparing your USB to troubleshooting boot issues, ensuring a smooth experience. By the end, you’ll have a bootable USB with Debian, Linux Mint, Parrot, Kali, OpenWrt, Windows Linux, Pop!_OS, and Manjaro, ready to explore. Let’s get started!

---

## Prerequisites
- A USB drive with at least 32GB capacity (recommended 64GB for all ISOs and data).
- A computer with Ubuntu installed (or a live Ubuntu USB for preparation).
- Internet access to download ISO files.
- Basic terminal knowledge (don’t worry, I’ll explain everything!).

---

## Step-by-Step Instructions

### 1. Connect the USB Drive
- Plug your USB drive into a USB port on your computer.
- Open a terminal (press `Ctrl+Alt+T` in Ubuntu).
- Identify the USB device:
  ```bash
  lsblk
  ```
  - Look for your USB (e.g., `/dev/sda` or `/dev/sdb`). It will show unpartitioned space or existing partitions. **Note**: Be certain of the device to avoid formatting the wrong drive!

---

### 2. Partition and Format the USB with GPT
- Use `GParted` (a graphical partition editor) to manage the USB. Install it if needed:
  ```bash
  sudo apt update
  sudo apt install gparted
  ```
- Launch GParted:
  ```bash
  sudo gparted
  ```
- Select your USB device (e.g., `/dev/sda`) from the top-right dropdown. **Caution**: Double-check the device to avoid data loss!
- **Delete existing partitions** (right-click each partition and select "Delete") to start fresh.
- Create a new partition table:
  - Go to `Device` > `Create Partition Table`.
  - Choose `gpt` and confirm.
- Partition the USB:
  - **EFI Partition (100MB)**:
    - Create a new partition (right-click unallocated space, select "New").
    - Set size to 100MB, file system to `fat32`, and label it `EFI`.
  - **Linux Partitions (for ISOs)**:
    - Create 9 partitions, each ~4-7GB (adjust based on USB size):
      - `Linux1` (gpt2), `Linux2` (gpt3), ..., `Linux9` (gpt10), file system `ext4`.
    - Right-click each, select "New", set size (e.g., 6GB), file system to `ext4`, and label (e.g., `Linux1`).
  - **Data Partition (Remaining Space)**:
    - Use the remaining space, set file system to `ext4`, and label it `Data`.
- Apply all operations (`Edit` > `Apply All Operations`).
- Close GParted.

---

### 3. Download Live ISO Images
- Download the desired Linux ISO files from their official websites:
  - Debian 12.11.0 Standard: `debian-live-12.11.0-amd64-standard.iso`
  - Debian 12.11.0 Cinnamon: `debian-live-12.11.0-amd64-cinnamon.iso`
  - Linux Mint 22.1 Cinnamon: `linuxmint-22_1-cinnamon-64bit.iso`
  - Parrot Home 6.3.2: `Parrot-home-6.3.2_amd64.iso`
  - Kali Linux 2025.1c: `kali-linux-2025.1c-live-amd64.iso`
  - OpenWrt 24.10.1: `openwrt-24.10.1-x86-generic-generic-ext4-combined-efi.img`
  - Windows Linux 11.25.06.1: `windows-linux-11.25.06.1-noble-lts.iso`
  - Pop!_OS 22.04: `pop-os_22.04_amd64_nvidia_54.iso`
  - Manjaro XFCE 25.0.3: `manjaro-xfce-25.0.3-250526-linux612.iso`
- Save them to your `~/Downloads` directory.

---

### 4. Copy ISOs to USB Partitions
- Mount the USB partitions automatically (they should mount under `/media/$USER/LinuxX`):
  ```bash
  ls /media/$USER/
  ```
- Copy each ISO to its respective partition:
  ```bash
  sudo cp ~/Downloads/debian-live-12.11.0-amd64-standard.iso /media/$USER/Linux1/
  sudo cp ~/Downloads/debian-live-12.11.0-amd64-cinnamon.iso /media/$USER/Linux2/
  sudo cp ~/Downloads/linuxmint-22_1-cinnamon-64bit.iso /media/$USER/Linux3/
  sudo cp ~/Downloads/Parrot-home-6.3.2_amd64.iso /media/$USER/Linux4/
  sudo cp ~/Downloads/kali-linux-2025.1c-live-amd64.iso /media/$USER/Linux5/
  sudo cp ~/Downloads/openwrt-24.10.1-x86-generic-generic-ext4-combined-efi.img /media/$USER/Linux6/
  sudo cp ~/Downloads/windows-linux-11.25.06.1-noble-lts.iso /media/$USER/Linux7/
  sudo cp ~/Downloads/pop-os_22.04_amd64_nvidia_54.iso /media/$USER/Linux8/
  sudo cp ~/Downloads/manjaro-xfce-25.0.3-250526-linux612.iso /media/$USER/Linux9/
  ```
- Verify the copies:
  ```bash
  ls /media/$USER/Linux{1,2,3,4,5,6,7,8,9}/*
  ```

---

### 5. Verify Kernel and Initrd Filenames
- Mount each ISO with the `loop` option to inspect contents:
  ```bash
  sudo mkdir -p /mnt/iso
  sudo mount -o loop /media/$USER/Linux1/debian-live-12.11.0-amd64-standard.iso /mnt/iso
  ls /mnt/iso/live/
  sudo umount /mnt/iso
  ```
- Repeat for each ISO, adjusting paths and checking relevant directories:
  - Debian: `/live/`
  - Mint, Pop!_OS, Windows Linux: `/casper/`
  - Manjaro: `/boot/`
  - OpenWrt: Use `kpartx` (see troubleshooting below).
- Example outputs (from your earlier session):
  - Windows Linux: `vmlinuz`, `initrd`
  - Pop!_OS: `vmlinuz.efi`, `initrd.gz`
  - Manjaro: `vmlinuz-x86_64`, `intel_ucode.img`, `amd_ucode.img`, `initramfs-x86_64.img`
- Note these filenames for `grub.cfg`.

---

### 6. Install GRUB on the EFI Partition
- Mount the EFI partition:
  ```bash
  sudo mount /dev/sda1 /mnt
  ```
- Install GRUB with necessary modules:
  ```bash
  sudo grub-install --target=x86_64-efi --efi-directory=/mnt --boot-directory=/mnt/boot --removable --modules="ext2 loopback iso9660 part_gpt fat"
  ```
- Unmount:
  ```bash
  sudo umount /mnt
  ```

---

### 7. Configure GRUB Boot Entries
- Mount the EFI partition again:
  ```bash
  sudo mount /dev/sda1 /mnt
  ```
- Edit the GRUB configuration file:
  ```bash
  sudo nano /mnt/boot/grub/grub.cfg
  ```
- Add the following content (using direct ISO filenames at partition roots):
  ```bash
  set timeout=10
  set default=0

  set menu_color_normal=cyan/black
  set menu_color_highlight=yellow/black

  menuentry "Debian Live 12.11.0 Standard" {
      set isofile="debian-live-12.11.0-amd64-standard.iso"
      loopback loop (hd0,gpt2)$isofile
      linux (loop)/live/vmlinuz-6.1.0-35-amd64 boot=live toram findiso=$isofile quiet splash
      initrd (loop)/live/initrd.img-6.1.0-35-amd64
  }

  menuentry "Debian Live 12.11.0 Cinnamon" {
      set isofile="debian-live-12.11.0-amd64-cinnamon.iso"
      loopback loop (hd0,gpt3)$isofile
      linux (loop)/live/vmlinuz-6.1.0-35-amd64 boot=live toram findiso=$isofile quiet splash
      initrd (loop)/live/initrd.img-6.1.0-35-amd64
  }

  menuentry "Linux Mint 22.1 Cinnamon" {
      set isofile="linuxmint-22_1-cinnamon-64bit.iso.iso"
      loopback loop (hd0,gpt4)$isofile
      linux (loop)/casper/vmlinuz boot=casper toram iso-scan/filename=$isofile quiet splash
      initrd (loop)/casper/initrd.lz
  }

  menuentry "Parrot Home 6.3.2" {
      set isofile="Parrot-home-6.3.2_amd64.iso"
      loopback loop (hd0,gpt5)$isofile
      linux (loop)/live/vmlinuz-6.11+parrot-amd64 boot=live toram iso-scan/filename=$isofile quiet splash
      initrd (loop)/live/initrd.img-6.11+parrot-amd64
  }

  menuentry "Kali Linux 2025.1c Live" {
      set isofile="kali-linux-2025.1c-live-amd64.iso"
      loopback loop (hd0,gpt6)$isofile
      linux (loop)/live/vmlinuz-6.12.13-amd64 boot=live toram iso-scan/filename=$isofile quiet splash
      initrd (loop)/live/initrd.img-6.12.13-amd64
  }

  menuentry "OpenWrt 24.10.1" {
      set isofile="openwrt-24.10.1-x86-generic-generic-ext4-combined-efi.img"
      loopback loop (hd0,gpt7)$isofile
      linux (loop)/boot/vmlinuz boot=live toram findiso=$isofile quiet splash
      initrd (loop)/boot/initrd.img
  }

  menuentry "Windows Linux 11.25.06.1" {
      set isofile="windows-linux-11.25.06.1-noble-lts.iso"
      loopback loop (hd0,gpt8)$isofile
      linux (loop)/casper/vmlinuz boot=casper toram iso-scan/filename=$isofile quiet splash
      initrd (loop)/casper/initrd
  }

  menuentry "Pop!_OS 22.04" {
      set isofile="pop-os_22.04_amd64_nvidia_54.iso"
      loopback loop (hd0,gpt9)$isofile
      linux (loop)/casper/vmlinuz.efi boot=casper toram iso-scan/filename=$isofile quiet splash
      initrd (loop)/casper/initrd.gz
  }

  menuentry "Manjaro XFCE 25.0.3" {
      set isofile="manjaro-xfce-25.0.3-250526-linux612.iso"
      loopback loop (hd0,gpt10)$isofile
      linux (loop)/boot/vmlinuz-x86_64 boot=live toram iso-scan/filename=$isofile quiet splash
      initrd (loop)/boot/intel_ucode.img (loop)/boot/amd_ucode.img (loop)/boot/initramfs-x86_64.img
  }
  ```
- Save (`Ctrl+O`, `Enter`) and exit (`Ctrl+X`).
- Unmount:
  ```bash
  sudo umount /mnt
  ```

---

### 8. Reboot and Test
- Reboot your computer:
  ```bash
  sudo reboot
  ```
- Enter the BIOS/UEFI (press `F9` on HP-15s) and select the USB drive as the boot device.
- At the GRUB menu, use the arrow keys to select an OS and press `Enter` to boot.

---

## Troubleshooting Guide

If booting fails, use these commands from the GRUB command line (press `c` at the GRUB menu):

### 1. List Devices and Partitions
- ```bash
  ls
  ```
  - Shows `(hd0)`, `(hd1)`, etc. Identify your USB (e.g., `(hd0)` with `gpt2` to `gpt10`).
- ```bash
  ls (hd0,gpt7)/
  ```
  - Check if the ISO file is present. If not, try `(hd1,gpt7)`.

### 2. Manual Boot Test
- For Pop!_OS:
  ```bash
  set root=(hd0,gpt9)
  loopback loop pop-os_22.04_amd64_nvidia_54.iso
  ls (loop)/
  linux (loop)/casper/vmlinuz.efi boot=casper toram iso-scan/filename=pop-os_22.04_amd64_nvidia_54.iso quiet splash
  initrd (loop)/casper/initrd.gz
  boot
  ```
- Adjust `(hd0,gptX)` and filenames based on `ls` output.

### 3. Load Missing Modules
- If `loopback` fails:
  ```bash
  insmod loopback
  insmod iso9660
  insmod ext2
  ```
- Retry the `loopback` command.

### 4. Fix OpenWrt `.img` Issue
- If OpenWrt fails, extract contents from Ubuntu:
  ```bash
  sudo kpartx -av /media/$USER/Linux6/openwrt-24.10.1-x86-generic-generic-ext4-combined-efi.img
  sudo mkdir -p /mnt/openwrt
  sudo mount /dev/mapper/loop0p1 /mnt/openwrt
  ls /mnt/openwrt/boot/
  sudo umount /mnt/openwrt
  sudo kpartx -d /media/$USER/Linux6/openwrt-24.10.1-x86-generic-generic-ext4-combined-efi.img
  ```
- Update `grub.cfg` with the correct kernel/initrd names.

### 5. Reinstall GRUB
- Boot into a Ubuntu live USB, mount `/dev/sda1` to `/mnt`, and run:
  ```bash
  sudo grub-install --target=x86_64-efi --efi-directory=/mnt --boot-directory=/mnt/boot --removable --modules="ext2 loopback iso9660 part_gpt fat"
  ```

### 6. Check File Integrity
- From Ubuntu:
  ```bash
  sha256sum /media/$USER/Linux{1,2,3,4,5,6,7,8,9}/*
  ```
- Compare with original ISO checksums.

---

