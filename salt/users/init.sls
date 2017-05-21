cnn:
  user.present:
    - fullname: Carlos Novo
    - shell: /bin/zsh
    - home: /home/cnn
    - uid: 1010
    - gid: users
    - groups:
      - sudo
      - adm

cnn-key:
  ssh_auth.present:
    - user: cnn
    - source: salt://ssh_keys/cnn.id_rsa.pub
    - config: /%h/.ssh/authorized_keys    
