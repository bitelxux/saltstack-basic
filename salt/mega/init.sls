mega_dependencies:
  pkg.installed:
    - pkgs:
      - libc-ares2
      - libcrypto++9v5

mega:
  file.managed:
    - requires:
      - /root/installers
    - name: /root/installers/mega.deb
    - source: https://mega.nz/linux/MEGAsync/xUbuntu_16.04/amd64/megasync-xUbuntu_16.04_amd64.deb
    - skip_verify: True

dpkg -i /root/installers/mega.deb:
  cmd.run:
    - unless: ls /usr/bin/megasync
    - requires:
      - mega_dependencies
      - mega
