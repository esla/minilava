base:
    '*':
        - sshd
        - nagios
        - salt-minion

    'mini-lava,lavahp':
        - match: list
        - instance_manager
        - android-tools
        - openbsd-inetd
        - tftpd-hpa
        - ia32-libs
        - bridge-utils       
        - lava


    'mini-lava':
        - lava.munin
        - lava.production-coordinator
    

    'lavahp':   
        - lava.fastmodels
