test:
  file.managed:
    - name: /tmp/foo
    - source: salt://users/files/.zshrc
    - user: cnn
  
