viber_dependencies:
  pkg.installed:
    - pkgs:
      - libcurl3
      - libcrypto++9v5

viber:
  file.managed:
    - requires:
      - /root/installers
    - name: /root/installers/viber.deb
    - source: https://download.cdn.viber.com/cdn/desktop/Linux/viber.deb
    - skip_verify: True

dpkg -i /root/installers/viber.deb:
  cmd.run:
    - unless: ls /usr/bin/viber
    - requires:
      - viber_dependencies
      - viber
