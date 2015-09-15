#!/bin/sh

qsub -W group_list=hyak-stf -I -V -l nodes=3:ppn=16,feature=intel
