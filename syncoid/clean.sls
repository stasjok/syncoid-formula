{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import syncoid with context %}

syncoid-bin-absent:
  file.absent:
    - name: {{ syncoid.bin_dir }}/syncoid
