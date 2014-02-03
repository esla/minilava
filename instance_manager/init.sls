instance-manager:
    user.present:
        - fullname: LAVA Instance Manager
        - shell:  /bin/bash
        - home: /home/instance-manager/
        - groups:
            - sudo 


/etc/sudoers.d/instance-manager:
    file.managed:
        - source: salt://instance_manager/sudoer_file
        - user: root
        - group: root
        - mode: 440

/user/local/bin/become-instance-manager:
    file.managed:
        - source: salt://instance_manager/become-instance-manager
        - user: root
        - group: root
        - mode: 755

http://staging.git.linaro.org/git/lava/lava-deployment-tool.git:
  git.latest:
    - target: /home/instance-manager/lava-deployment-tool
    - force: yes
