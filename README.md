# Librecores CI with Environment Modules - Demo

This demonstrates the proposed LibreCores CI flow with a tool volume
and [Environment Modules](http://modules.sourceforge.net/).

Basically the flow is:

* Install tools in a volume and mount that volume to the docker images
  running CI. The installation is automated with docker images itself.

* Source a tool into the environment with `module load
  <tool>/<version>`.

You need docker installed. To prepare you local environment run once:

    ./prepare.sh

Then you can run a simple cocotb example test:

    ./ci_run.sh

The commands in the CI image are run from `test.sh`.
