common-packages:
  pkg.installed:
    - pkgs:
      - git
      - sudo 
      - vim
      - curl
      - wget
      - tcpdump
      - python-pip
      - zsh

openssh-server:
  pkg.installed

ssh:
  service.running:
    - enable: True
    - reload: True
    - require:
      - pkg: openssh-server
    - watch:
      - pkg: openssh-server

