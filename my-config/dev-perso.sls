# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

include:
  - qvm.sys-firewall

dev-perso:
  qvm.vm:
    - name: dev-perso
    - present:
      - template: debian-9
      - label: blue
      - flags:
        - standalone
    - prefs:
      - memory: 400
      - maxmem: 4000
      - include-in-backups: True
      - netvm: sys-firewall
      - vcpus: 2
      - debug: false
    - require:
      - qvm: sys-firewall
