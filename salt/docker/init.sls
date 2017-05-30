docker:
  pkgrepo.managed:
    - humanname: docker
    - name: deb https://apt.dockerproject.org/repo ubuntu-xenial main
    - file: /etc/apt/sources.list.d/docker.list

docker-engine:
  pkg.installed:
    - skip_verify: True
    - version: latest
    - refresh: True
    - allow_updates: True

