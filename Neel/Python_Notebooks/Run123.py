#!/usr/bin/python

#This script will run all 123.sh commands in their directories 

#To run progrom use command line below:
# python3 Run123.py <directory of all folders?

#Example: python3 Run123.py /mnt/data_schen_1/jingchun/gwas_data/COVID-19/COVID19_HGI5/


import numpy as np
import sys, getopt
import os
import sys
import pandas as pd 
from datetime import datetime

def find(name, path):
    for root, dirs, files in os.walk(path):
        if name in files:
            return os.path.join(root, name)

root = os.getcwd()
scripts = []
mergeCommands = []

for subdir, dirs, files in os.walk(root):
    for file in files:
        if file.endswith(".sh"):
            print(os.path.join(subdir, file))
            scripts.append(os.path.join(subdir, file))

for script in scripts:
    command = "bash " + script
    cd = os.path.dirname(script)
    os.chdir(cd)
    os.system(command)
    basename =  find("basename.list", root)
    prefix_end = cd.find("_from_")
    prefix_start = cd.rfind("/")
    prefix = cd[prefix_start+1:prefix_end] + "_from_"
    mergePRSICE = "bash /mnt/data_schen_1/jingchun/merge_PRSICE.bash " + str(basename) + " " + str(prefix)
    os.system(mergePRSICE)
    mergeCommands.append(mergePRSICE)


