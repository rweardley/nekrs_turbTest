#!/bin/bash

ulimit -s unlimited

which nrsmpi | tee log.nrsversion

rm -r .cache
nrspre turbTest 1 2>&1 | tee log.nrspre
nrsmpi turbTest 1 2>&1 | tee log.nrsmpi
nrsvis turbTest
