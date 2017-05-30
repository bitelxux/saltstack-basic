skype:
  pkgrepo.managed:
    - humanname: Skype
    - name: deb https://repo.skype.com/deb stable main
    - file: /etc/apt/sources.list.d/skype.list

skypeforlinux:
  pkg.installed:
    - skip_verify: True
    - version: latest
    - refresh: True
    - allow_updates: True

