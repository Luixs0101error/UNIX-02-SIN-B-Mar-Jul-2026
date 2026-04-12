#UNIX-02-SIN-B-Mar-Jul-2026
El sistema que vamos a construir tiene tres componentes:
1. **Kernel Linux** nucleo del S.O
2. **Busy Linux** Utilidades básicas
3. **Syslinux** Bootloader que carga todo

#Update the package list from the repositories

sudo apt update

#Upgrade all installed packages to the latest available versions

sudo apt upgrade

#Install required development tools and utilities


sudo apt install -y git vim make gcc libncurses-dev flex bison bc cpio libelf-dev libssl-dev syslinux dosfstools qemu-system-x86

**Para qué sirve cada paquete**
#Install development tools and dependencies needed to build the Linux kernel and BusyBox
#-y automatically confirms installation

#gcc: GNU C compiler (used to compile the kernel and BusyBox)
#make: build automation tool for compiling source code
#libncurses-dev: required for interactive configuration menus (menuconfig)
#flex, bison, bc: tools required during the kernel build process
#cpio: used to create the initramfs
#libelf-dev, libssl-dev: kernel dependencies
#syslinux: bootloader
#dosfstools: used to create and manage FAT filesystems
#qemu-system-x86: used to test the image without real hardware (virtual machine)   

#clone the kernel repository
git clone --depth 1 https://github.com/torvalds/linux.git
#Linux directory
cd linux
#make
make menuconfig
#make
make -j 2
#check the CPU cores I have
nproc
#check the install is correct

#Create the /boot-files directory in the root filesystem.
#The -p option ensures the directory is created even if parent directories are missing.
sudo mkdir -p /boot-files

#Copy the compiled Linux kernel image (bzImage) 
#from the arch/x86/boot directory to /boot-files.
sudo cp arch/x86/boot/bzImage /boot-files/

#Clone the BusyBox source code repository.
#The --depth 1 flag performs a shallow clone (only the latest commit),
#reducing download size and time.
git clone --depth 1 https://git.busybox.net/busybox

#Change the current working directory to the busybox folder.
cd busybox

#Launch the BusyBox configuration interface.
#This menu allows you to customize which utilities and features will be included before compilation.
make menuconfig

#Disable the tc command in BusyBox configuration to avoid compilation errors
sed -i 's/^CONFIG_TC=y/CONFIG_TC=n/' .config

#Verify that the CONFIG_TC option is now disabled
grep CONFIG_TC .config

#Create the directory that will contain the initramfs filesystem
sudo mkdir -p /boot-files/initramfs

#Install BusyBox binaries and symbolic links into the initramfs directory
sudo make CONFIG_PREFIX=/boot-files/initramfs install

#List installed BusyBox commands to verify successful installation
ls /boot-files/initramfs/bin

#Change directory to the root of the initramfs
cd /boot-files/initramfs

#Attempt to edit the init file (may fail in Codespaces)
sudo nano init

#Create an empty init file if it does not exist
sudo touch init

#Write the shebang line to specify the shell interpreter
echo '#!/bin/sh' | sudo tee init
#Add a command to launch a BusyBox shell as the init process (PID 1)
echo '/bin/sh' | sudo tee -a init

#Remove the default linuxrc file created by BusyBox to avoid conflicts
sudo rm -f linuxrc

#Make the init script executable so the kernel can run it
sudo chmod +x init

#Display the contents of the init script for verification
cat init

#Show file permissions to confirm the init script is executable
ls -l init

#Attempt to create the initramfs archive (may fail due to permissions)
sudo find . | cpio -o -H newc > ../init.cpio

#Correctly create the initramfs archive using sudo for the output file
sudo find . | cpio -o -H newc | sudo tee ../init.cpio > /dev/null

#Verify that the initramfs archive was created successfully
ls -l ../init.cpio

#Boot the custom Linux system using QEMU with kernel and initramfs
qemu-system-x86_64 -nographic -append "console=ttyS0" -kernel bzImage -initrd init.cpio
