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

#
ed -i 's/^CONFIG_TC=y/CONFIG_TC=n/' .config
#
grep CONFIG_TC .config

