# flashing the SD card for SOLO recorder
# insert SD card
#open Terminal

# see which devices are currently mounted
df -h

#umonut the SD card
umount /dev/sdb3
umount /dev/sdb2
umount /dev/sdb1

#check again
df -h
#should be only /dev/sda (that's the comp harddrive)

#flash the card
#the operating system is on the desktop: /home/agata/Desktop

sudo dd bs=40M if=/home/agata/Desktop/sosi-17-11-05.img of=/dev/sdb ; sync ; sync

# change sampling rate to 8KHz and channels to stereo
