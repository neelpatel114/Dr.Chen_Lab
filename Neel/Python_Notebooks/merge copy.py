#!/usr/bin/python

#To run progrom use command line below:
# python merge.py -i <inputFile1> <inputFile2> <inputFile3> -o <outputFile>

#import libraries 
import pandas as pd 
import numpy as np 
import sys


#Get command line arguments 

import sys, getopt

def main(argv):
   inputfile1 = ''
   inputfile2 = ''
   inputfile3 = ''
   outputfile = ''
   try:
      opts, args = getopt.getopt(argv,"hi:o:",["i1file=","i2file=","i3file=","ofile="])
   except getopt.GetoptError:
      print('test.py -i2 <inputfile1> -i2 <inputfile2> -i3 <inputfile3> -o <outputfile>')
      sys.exit(2)
   for opt, arg in opts:
      if opt == '-h':
         print('test.py -i1 <inputfile> -i2 <inputfile> -i3 <inputfile> -o <outputfile>')
         sys.exit()
      elif opt in ("-i1", "--ifile1"):
         inputfile1 = arg
      elif opt in ("-i2", "--ifile2"):
         inputfile2 = arg
      elif opt in ("-i3", "--ifile3"):
         inputfile3 = arg
      elif opt in ("-o", "--ofile"):
         outputfile = arg
   #first data with (ID , ID, mother, father, sex, diagnosis). Goal to update diagnosis 
   data1File = inputfile1
   data2File = inputfile2
   data3File = inputfile3
   dataOutputFile = outputfile

   #read in files 
   data1 = pd.read_csv(data1File, sep = '\s+', header = None)
   data2 = pd.read_csv(data2File, sep = '\s+', header = None)
   data3 = pd.read_csv(data3File, sep='\s+', header = None)
   
   
   #Merge files and drop all columns (compare with chrom:SNP column)
   merged = pd.merge(data1, data2, on = 1 ,  how='outer', indicator=True)
   matched_SNP = merged.loc[merged["_merge"] == "both"].drop("_merge", axis=1)
   merged = pd.merge(matched_SNP, data3, on = 1, how='outer', indicator=True )
   matched_SNP = merged.loc[merged["_merge"] == "both"].drop("_merge", axis=1)
   matched_SNP = matched_SNP[['1_x']]
   
   #output file
   matched_SNP.to_csv(dataOutputFile, index = False, header = None, sep = ' ')
   