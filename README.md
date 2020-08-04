# dellG7-7790-LinuxSetup
This script is a automatic setup script to start fan control on linux at dell g7 7790 device.
just run ```setupFreqAndFan.sh``` to setup the fan control on dell g7 and get the fan run at around 2000rpm, it will be overrided by the i8k profile after a while though. You probably need to run the script each time you reboot. Your can change the file frequency.sh to limit maximum frequency.
##### Before use
Before running the script please follow the following steps to setup linux on dell g7
- Setup i8kctl: https://forum.manjaro.org/t/finally-got-my-fans-working-manually-on-dell-xps-13-9370/90548
- Setup discrete graphic card: first install nvidia driver on your device and then open file /lib/modprobe.d/nvidia-kms.conf, delete or comment out the line "options nvidia-drm modeset=1" to enable kernel mode driver if you does not find nvidia kernel mode driver loading using ```dmesg```, it solves the nvidia grapic card running hot and frame loss issue.
- make the dell bios fan control that disables bios fan control using ```make```
- random system freeze issue: this is usually cause by a buggy iwlwifi driver, download a new firmware can solve this issue if you encounter this.
- Make i8kctl loads at boot time: add line line ```i8k``` to ```/etc/modules```
- You can also messing with fan curve by adjusting this file ```/etc/i8kmon.conf```
- The settings are tested in ubuntu 19.10
##### acknowledgement:
TomFreudenberg: dell-bios-fan-control
https://github.com/TomFreudenberg/dell-bios-fan-control
