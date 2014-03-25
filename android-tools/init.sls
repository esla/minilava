openjdk-6-jdk:
    pkg:
        - installed

android-tools-adb:
  pkg:
    - latest

android-tools-fastboot:
  pkg:
    - latest

/usr/local/android-sdk-linux:
  url.sync_extract:
    - url: http://dl.google.com/android/android-sdk_r22.3-linux.tgz
    - md5sum: 6ae581a906d6420ad67176dff25a31cc
    - mode: 0755

  # the download from google doesn't have "root" owning the files
  file.directory:
    - user: root
    - group: root
    - recurse:
      - user
      - group
    - require:
      - url: /usr/local/android-sdk-linux

/usr/local/bin/monkeyrunner:
  file.symlink:
    - target: /usr/local/android-sdk-linux/tools/monkeyrunner
    - require:
      - url: /usr/local/android-sdk-linux

