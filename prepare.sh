#!/bin/bash

JOBS=-j8

mkdir -p tools
docker run -ti -v ${PWD}/tools:/tools lccitools/cocotb:latest
docker run -ti -v ${PWD}/tools:/tools -e JOBS=${JOBS} lccitools/icarus-verilog:latest
