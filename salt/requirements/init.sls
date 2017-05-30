common-packages:
  pkg.installed:
    - pkgs:
      - git
      - gitk
      - git-gui
      - sudo 
      - vim
      - curl
      - wget
      - tcpdump
      - python-pip
      - zsh

#############################
# ssh
#############################

openssh-server:
  pkg.installed:
    - version: latest
    - refresh: True
    - allow_updates: True

ssh:
  service.running:
    - enable: True
    - reload: True
    - require:
      - pkg: openssh-server
    - watch:
      - pkg: openssh-server
