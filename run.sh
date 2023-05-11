#!/usr/env bash

mkdir -p out && cd out && cmake .. && make
cd ..
./out/greeter
