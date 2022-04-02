import os
import pandas as pd
import numpy as np 
import math 

#READ FILES FROM DIRECTORY 
read_path = '/mnt/data_schen_1/jingchun/gwas_data/COVID-19/COVID19_GenOMICC_R2/GenOMICC_R2_basefiles/'
write_path = '/mnt/data_schen_1/jingchun/gwas_data/COVID-19/COVID19_GenOMICC_R2/GenOMICC_R2_basefiles_allsnpid/'
directory = os.listdir(read_path)
files = []

for file in directory:
     if file[:-7] == '.txt.gz':
        files.append(file)

print(*files)


#READ INTO DF AND FORMATE 

for file in files:
     df = pd.read_csv(read_path+file, sep='\t')
     df = df[['CHR', 'POS', 'rsid', 'Effect.Allele', 'Non.Effect.Allele', 'Effect', 'Pval', 'StdErr']]
     df = df.rename(columns={'POS':'BP', 'rsid':'SNP', 'Effect.Allele':'A1', 'Non.Effect.Allele':'A2', 'Effect':'BETA', 'Pval':'P'})
     df['OR'] = df['BETA']
     df = df[['CHR', 'BP', 'SNP', 'A1', 'A2', 'BETA', 'P', 'OR' ,'StdErr']]
     df.OR = df.OR.apply(math.exp)
     df.insert(3, 'SNP1', df['CHR'].astype(str) + ':' + df['BP'].astype(str))
     df.insert(4, 'SNP2', df['CHR'].astype(str) + ':' + df['BP'].astype(str) + ':' + df['A1'].astype(str) + ':' + df['A2'].astype(str))
     df = df.dropna()
     file = file[:-7]
     print(file)
     df.to_csv(write_path + file + '.addsnpid.txt.gz', index = False, sep = ' ')
     print(df)
     


