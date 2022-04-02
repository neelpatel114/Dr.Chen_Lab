import os
import pandas as pd
import numpy as np 
import math 

#READ FILES FROM DIRECTORY 
read_path = '/mnt/data_schen_1/jingchun/gwas_data/COVID-19/COVID19_hg/covid19_hg_basefiles/'
write_path = '/mnt/data_schen_1/jingchun/gwas_data/COVID-19/COVID19_hg/covid19_hg_basefiles_allsnpid/'
directory = os.listdir(read_path)
files = []
for file in directory:
        files.append(file)

print(*files)


#READ INTO DF AND FORMATE 

for file in files:
     df = pd.read_csv(read_path+file, sep='\t')
     df = df[['#CHR', 'POS', 'rsid', 'ALT', 'REF', 'all_inv_var_meta_beta', 'all_inv_var_meta_p']]
     df = df.rename(columns={'#CHR':'CHR','POS':'BP', 'rsid':'SNP', 'ALT':'A1', 'REF':'A2', 'all_inv_var_meta_beta':'BETA', 'all_inv_var_meta_p':'P'})
     df['OR'] = df['BETA']
     df.insert(3, 'SNP1', df['CHR'].astype(str) + ':' + df['BP'].astype(str))
     df.insert(4, 'SNP2', df['CHR'].astype(str) + ':' + df['BP'].astype(str) + ':' + df['A1'].astype(str) + ':' + df['A2'].astype(str))
     df.OR = df.OR.apply(math.exp)
     df = df.dropna()
     file = file[:-7]
     print(file)
     df.to_csv(write_path + file + '.addsnpid.txt.gz', index = False, sep = ' ')
     print(df)
     


