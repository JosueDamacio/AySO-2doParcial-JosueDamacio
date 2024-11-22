 sudo fdisk /dev/sdc
    9  lsblk
   10  sudo fdisk /dev/sdc
   11  sudo mkswap /dev/sdc1
   12  free -h
   13  sudo swapon /dev/sdc1
   14  free -h
   15  sudo fdisk /dev/sdc
   16  sudo pvcreate /dev/sdc2 /dev/sdc3 /dev/sdc5 /dev/sdc6
   17  sudo pvs
   18  sudo vgcreate vgAdmin /dev/sdc2 /dev/sdc3
   19  sudo vgcreate vgDevelopers /dev/sdc5 /dev/sdc6
   20  sudo vgs
   21  sudo lvcreate -L 1G vgDevelopers -n lvTesters
   22  sudo lvcreate -L .9G vgDevelopers -n lvDevops
   23  sudo lvcreate -L 2G vgAdmin -n lvAdmin
   24  sudo lvs
   25  sudo fdisk -l
   26  sudo lvcreate -L 1G vgDevelopers -n lvTesters
   27  sudo lvcreate -L 1G vgDevelopers -n lvDevelopers
   28  sudo lvs
   29  sudo lvcreate -L 2G vgAdmin -n lvAdmin
   30  sudo lvcreate -L 1.9G vgAdmin -n lvAdmin
   31  sudo lvs
   32  sudo fdisk -l
   33  sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevelopers
   34  sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvTesters
   35  sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevops
   36  sudo mkfs.ext4 /dev/mapper/vgAdmin-lvAdmin
   37  sudo lsblk -f
   38  sudo mkdir /mnt/lvDevelopers
   39  sudo mkdir /mnt/lvTesters
   40  sudo mkdir /mnt/lvDevops
   41  sudo mkdir /mnt/lvAdmin
   42  sudo mount /dev/mapper/vgDevelopers-lvTesters /mnt/lvTesters
   43  sudo mount /dev/mapper/vgDevelopers-lvDevops /mnt/lvDevops
   44  sudo mount /dev/mapper/vgAdmin-lvAdmin /mnt/lvAdmin
   45  df -h
   46  ls -l
