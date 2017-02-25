#!/bin/bash

JOBS=-j8

mkdir -p tools
docker run -ti -v ${PWD}/tools:/tools librecores/toolsbuild-cocotb:latest
docker run -ti -v ${PWD}/tools:/tools -e JOBS=${JOBS} librecores/toolsbuild-icarus-verilog:latest
