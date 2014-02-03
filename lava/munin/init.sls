munin-node:
  pkg:
    - installed
  service:
    - running
    - watch:
      - pkg: munin-node
      - file: /etc/munin/plugins/lava*

/etc/munin/plugins/lava_queue:
  file.managed:
    - source: salt://lava/munin/lava_queue
    - mode: 755

/etc/munin/plugins/lava_queue_per_devicetype:
  file.managed:
    - source: salt://lava/munin/lava_queue_per_devicetype
    - mode: 755
