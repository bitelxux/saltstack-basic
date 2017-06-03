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
      - htop
      - encfs
      - build-essential
      - rst2pdf
      - gnuplot

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

/root/installers:
  file.directory:
    - user: root
    - group: root
    - mode: 755
    - makedirs: True

