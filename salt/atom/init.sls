Atom:
  pkgrepo.managed:
    - unless: ls /etc/apt/sources.list.d/webupd8team-atom-xenial.list
    - humanname: Atom
    - name: ppa:webupd8team/atom 

atom:
  pkg.installed:
    - requires: Atom
    - skip_verify: True
    - version: latest
    - refresh: True
    - allow_updates: True

