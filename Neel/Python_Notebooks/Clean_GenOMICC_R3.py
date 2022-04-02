import os
import pandas as pd
import numpy as np 
import math 

#READ FILES FROM DIRECTORY 
read_path = '/mnt/data_schen_1/jingchun/gwas_data/COVID-19/COVID19_GenOMICC_R3/GenOMICC_R3_basefiles/'
write_path = '/mnt/data_schen_1/jingchun/gwas_data/COVID-19/COVID19_GenOMICC_R3/GenOMICC_R3_basefiles_allsnpid/'
directory = os.listdir(read_path)
files = []

for file in directory:
     if file.endswith(".tsv.gz"):
        files.append(file)

print(*files)


#READ INTO DF AND FORMATE 

for file in files:
     df = pd.read_csv(read_path+file, sep='\t')
     df = df[['CHR', 'POSb38', 'MarkerName', 'Allele1', 'Allele2', 'Effect', 'P.value']]
     df = df.rename(columns={'POSb38':'BP', 'MarkerName':'SNP', 'Allele1':'A1', 'Allele2':'A2', 'Effect':'OR', 'Pval':'P'})
     df.insert(3, 'SNP1', df['CHR'].astype(str) + ':' + df['BP'].astype(str))
     df.insert(4, 'SNP2', df['CHR'].astype(str) + ':' + df['BP'].astype(str) + ':' + df['A1'].astype(str) + ':' + df['A2'].astype(str))
     df = df.dropna()
     file = file[:-7]
     print(file)
     df.to_csv(write_path + file + '.addsnpid.txt.gz', index = False, sep = ' ')
     print(df)
     


