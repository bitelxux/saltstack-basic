/home/cnn/.config/terminator:
  file.directory:
    - user: cnn
    - group: cnn
    - mode: 755
    - makedirs: True

terminator:
  pkg.installed:
    - version: latest
    - refresh: True
    - allow_updates: True

config:
  file.managed:
    - name: /home/cnn/.config/terminator/config
    - source: salt://terminator/files/config
    - user: cnn
    - group: users
    - require:
      - pkg: terminator
      - /home/cnn/.config/terminator

    
