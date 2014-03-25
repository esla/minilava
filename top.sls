base:
    '*':
        - sshd
        - nagios
        - salt-minion

    'mini-lava,lavahp':
        - match: list
        - instance_manager
        - lava
        - android-tools
        - openbsd-inetd
        - tftpd-hpa
        - bridge-utils       

    'mini-lava':
        - lava.munin
        - lava.production-coordinator
    

    'lavahp':   
        - lava.fastmodels
