chrome:
  pkgrepo.managed:
    - humanname: Chrome
    - name: deb http://dl.google.com/linux/deb/ stable non-free main
    - file: /etc/apt/sources.list.d/chrome.list

google-chrome-stable:
  pkg.installed:
    - skip_verify: True
    - version: latest
    - refresh: True
    - allow_updates: True

