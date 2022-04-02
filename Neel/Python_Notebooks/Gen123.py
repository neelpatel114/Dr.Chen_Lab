#!/usr/bin/python

#To run progrom use command line below:
# python Gen123.py <Targetfile> <Basename.list> <folder_prefix>

import pandas as pd
import numpy as np
import sys, getopt
import os 
from datetime import datetime

#Get command line arguments 
#Check command line
if __name__ == "__main__":
    print("###################### 123 Script Gen ######################")
    print("Expected: python3 Gen123.py Target.QC Basename.list name_prefix_")
    print("Basename.list should be formated as: basename,basefilePath")
    print(f"Arguments count: {len(sys.argv)}")
    for i, arg in enumerate(sys.argv):
        print(f"Argument {i:>5}: {arg}")

#Get command line arguments 
target = sys.argv[1]
df = pd.read_csv(sys.argv[2], sep = ',' , header=None)
prefix = sys.argv[3]


with open("EUR_only_" + os.path.basename(os.getcwd()) + '5traits_step123_5e8_allscores' + datetime.today().strftime('%Y-%m-%d') + '.sh', 'w') as file:
    for i in range(len(df)):
        basename = df.loc[i,0]
        baseFile = df.loc[i, 1]
        basename = prefix + basename
        if basename[-1] == ' ':
            basename = basename[:-1]
        
        print(basename)

        command1 = (

            '/mnt/data_schen_1/jingchun/scz_plink_scores/PRSICE2.3.5/PRSice_linux --fastscore --base ' + baseFile + ' --chr CHR --snp SNP1 --bp BP --A1 A1 --A2 A2 --pvalue P --stat OR --clump-kb 250 --clump-p 1 --clump-r2 0.1 --bar-levels 0.00000005,0.00001,0.001,0.1 --model add --out ' +  basename + '/' +  basename +  ' --all-score ' +  basename + '/' +  basename + ' --binary-target T --print-snp --target ' + target + ' --thread 1 --upper 1 ' 
            
        )
        file.write(command1)
        file.write('\n\n')

        command2 = (
        
            '/mnt/data_schen_1/jingchun/scz_plink_scores/PRSICE2.3.5/PRSice_linux --fastscore --base ' + baseFile + ' --chr CHR --snp SNP1 --bp BP --A1 A1 --A2 A2 --pvalue P --stat OR --clump-kb 250 --clump-p 1 --clump-r2 0.1 --bar-levels 0.00000005,0.00001,0.001,0.1 --model add --out ' +  basename + '/' +  basename +  ' --all-score '  +  basename + '/' +  basename + ' --binary-target T --print-snp --target ' + target + ' --thread 1 --upper 1 --extract ' +  basename + '/' +  basename +  '.valid'
            
        )
        file.write(command2)
        file.write('\n\n')

        command3 = (
        
            '/mnt/data_schen_1/jingchun/scz_plink_scores/PRSICE2.3.5/PRSice_linux --base ' + baseFile + ' --chr CHR --snp SNP1 --bp BP --A1 A1 --A2 A2 --pvalue P --stat OR --clump-kb 250 --clump-p 1 --clump-r2 0.1 --interval 0.00005 --lower 0.00000001 --model add --out ' +  basename + '/' +  basename +  '.best  --binary-target T --print-snp --target ' + target + ' --thread 1 --extract ' +  basename + '/' +  basename +  '.valid'
            
        )
        file.write(command3)
        file.write('\n\n')

        command4 = (
    
            '/mnt/data_schen_1/jingchun/scz_plink_scores/PRSICE2.3.5/PRSice_linux --base ' + baseFile + ' --chr CHR --snp SNP1 --bp BP --A1 A1 --A2 A2 --pvalue P --stat OR --clump-kb 250 --clump-p 1 --clump-r2 0.1 --interval 0.00005 --lower 0.00000001 --model add --out ' +  basename + '/' +  basename +  '.best  --binary-target T --print-snp --target ' + target + ' --thread 1'

            
        )
        file.write(command4)
        file.write('\n\n')

        command5 = (
    
            '#Rscript /mnt/data_schen_1/jingchun/scz_plink_scores/PRSICE2.3.5/PRSice2.R --prsice /mnt/data_schen_1/jingchun/scz_plink_scores/PRSICE2.3.5/PRSice_linux  --base ' + baseFile + ' --chr CHR --snp SNP1 --bp BP --A1 A1 --A2 A2 --pvalue P --stat OR --clump-kb 250 --clump-p 1 --clump-r2 0.1 --interval 0.00005 --lower 0.00000001 --model add --out ' +   basename + '/' +  basename +  '.plot  --binary-target T --print-snp --target ' + target + ' --thread 1 --upper 0.5'

            
        )
        file.write(command5)
        file.write('\n\n')

print("Wrote File Named: " + os.path.basename(os.getcwd()) + '_5traits_step123_5e8_allscores_' + datetime.today().strftime('%Y-%m-%d') + '.sh')




