#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:20763908:abe9085998ee4a7d90f5e71023d8c06e818b83f1; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:15992064:518b13a40d14474eae26340cb906630f2b083a51 EMMC:/dev/block/bootdevice/by-name/recovery abe9085998ee4a7d90f5e71023d8c06e818b83f1 20763908 518b13a40d14474eae26340cb906630f2b083a51:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
