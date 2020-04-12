#!/bin/bash
module load exfel crystfel
indexamajig -i xstal.lst -g tmp.geom -o xstal.stream --peaks=zaef -p ./lysozyme-opt.cell
