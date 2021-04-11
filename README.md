# syncoid-formula

SaltStack formula for installing syncoid.

## Table of Contents

* [Table of Contents](#table-of-contents)
* [General notes](#general-notes)
* [Special notes](#special-notes)
* [Available states](#available-states)
  * [syncoid](#syncoid)
  * [syncoid.install](#syncoid.install)
  * [syncoid.clean](#syncoid.clean)

## General notes

See the full [SaltStack Formulas installation and usage instructions](https://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html).

See `pillar.example` file for configuration examples.

## Special notes

This formula installs included syncoid script.

**Note**: syncoid script here is v2.1.0 with the following PRs merged:

* [Add target snapshot deletion](https://github.com/jimsalterjrs/sanoid/pull/523)
* [implemented option for direct connection via socat and busybox nc](https://github.com/jimsalterjrs/sanoid/pull/513)

## Available states

### syncoid

*Meta-state (This is a state that includes other states)*.

This state includes `syncoid.install` state.

### syncoid.install

This state installs syncoid script and its dependencies.

### syncoid.clean

This state removes syncoid script.
