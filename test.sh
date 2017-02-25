#!/bin/bash

source /usr/share/modules/init/bash

module load eda/cocotb/v1.0-569-g5d6aee2
module load eda/iverilog/v10_1

git clone https://github.com/wallento/cocotb-example-endian_swapper

cd cocotb-example-endian_swapper

make
