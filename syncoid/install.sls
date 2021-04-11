{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import syncoid with context %}

syncoid-bin-file-managed:
  file.managed:
    - name: {{ syncoid.bin_dir }}/syncoid
    - source: salt://{{ tplroot }}/files/syncoid
    - user: root
    - group: root
    - mode: 755
    - makedirs: yes