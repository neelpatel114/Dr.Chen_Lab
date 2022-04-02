#!/usr/bin/python

#To run progrom use command line below:
# python merge.py -i <inputFile1> <inputFile2> <inputFile3> -o <outputFile>
#By Neel Patel

#import libraries 
import pandas as pd 
import sys

#Input fam has 6 headers (Family ID(FID), Within-family(IID), father ID, mother ID, sex code, phenotype value)
#Merge based on Family ID
#Check command line
if __name__ == "__main__":
    print("####################### MERGE FAM FILES #######################")
    print("Expected: python3 fam_merge.py first.fam second.fam output.fam")
    print(f"Arguments count: {len(sys.argv)}")
    for i, arg in enumerate(sys.argv):
        print(f"Argument {i:>5}: {arg}")

#Get command line arguments 
data1File = sys.argv[1]
data2File = sys.argv[2]
dataOutputFile = sys.argv[3]

#read in files 
data1 = pd.read_csv(data1File, sep = '\s+', header = None)
data2 = pd.read_csv(data2File, sep = '\s+', header = None)

#Merge files and drop all columns (compare with chrom:SNP column)
merged = pd.merge(data1, data2, on = 0 ,  how='outer', indicator=True)
matched_SNP = merged.loc[merged["_merge"] == "both"].drop("_merge", axis=1)

matched_SNP = matched_SNP[[1]]

#output file
matched_SNP.to_csv(dataOutputFile, index = False, header = None, sep = ' ')