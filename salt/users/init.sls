cnn:
  user.present:
    - fullname: Carlos Novo
    - shell: /bin/zsh
    - home: /home/cnn
    - uid: 1000
    - gid: users
    - groups:
      - sudo
      - adm

cnn-key:
  ssh_auth.present:
    - user: cnn
    - source: salt://ssh_keys/cnn.id_rsa.pub
    - config: /%h/.ssh/authorized_keys    
    - require:
      - user: cnn

oh_my_zsh_cnn:
  git.latest:
    - name: git://github.com/robbyrussell/oh-my-zsh.git
    - target: /home/cnn/.oh-my-zsh
    - require:
      - user: cnn

zsh_config_cnn:
  file.managed:
    - name: /home/cnn/.zshrc
    - source: salt://users/files/.zshrc
    - require:
      - user: cnn

zsh_autosuggestions_cnn:
  git.latest:
    - name: git://github.com/zsh-users/zsh-autosuggestions.git
    - target: /home/cnn/zsh/plugins/zsh-autosuggestions
    - require:
      - user: cnn

/home/cnn/.oh-my-zsh/plugins/zsh-autosuggestions:
  file:
    - symlink
    - target: /home/cnn/zsh/plugins/zsh-autosuggestions
    - require:
      - user: cnn

    
