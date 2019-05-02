#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:17273760:04a400d1a23e247f784294aacb3ca4d03caddb41; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:9470880:8636f294905cd5ff8a0ebb147bd7cb66cbc56469 EMMC:/dev/block/platform/bootdevice/by-name/recovery 04a400d1a23e247f784294aacb3ca4d03caddb41 17273760 8636f294905cd5ff8a0ebb147bd7cb66cbc56469:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
