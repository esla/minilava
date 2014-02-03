nfs_client:
  pkg.installed:
    - name: nfs-common

/mnt/nas01/val_backup:
  mount.mounted:
    - device: /tmp/val_backup
    - fstype: nfs
    - mkmnt: True
    - require:
      - pkg: nfs-common
