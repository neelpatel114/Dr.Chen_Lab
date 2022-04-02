/mnt/data_schen_1/jingchun/scz_plink_scores/PRSICE2.3.5/PRSice_linux --fastscore --base /mnt/data_schen_1/jingchun/gwas_data/COVID-19/COVID19_baseFiles_allsnpid/UKBB_covid19_EUR_061821.addsnpid.txt.gz --chr CHR --snp SNP1 --bp BP --A1 A1 --A2 A2 --pvalue P --stat OR --clump-kb 250 --clump-p 1 --clump-r2 0.1 --bar-levels 0.00000005,0.00001,0.001,0.1 --model add --out ad_from_EUR/ad_from_EUR --all-score ad_from_EUR/ad_from_EUR --binary-target T --print-snp --target /mnt/data_schen_1/jingchun/targetsFile/AD_merged/AD_All.QC1 --thread 1 --upper 1 

/mnt/data_schen_1/jingchun/scz_plink_scores/PRSICE2.3.5/PRSice_linux --fastscore --base /mnt/data_schen_1/jingchun/gwas_data/COVID-19/COVID19_baseFiles_allsnpid/UKBB_covid19_EUR_061821.addsnpid.txt.gz --chr CHR --snp SNP1 --bp BP --A1 A1 --A2 A2 --pvalue P --stat OR --clump-kb 250 --clump-p 1 --clump-r2 0.1 --bar-levels 0.00000005,0.00001,0.001,0.1 --model add --out ad_from_EUR/ad_from_EUR --all-score ad_from_EUR/ad_from_EUR --binary-target T --print-snp --target /mnt/data_schen_1/jingchun/targetsFile/AD_merged/AD_All.QC1 --thread 1 --upper 1 --extract ad_from_EUR/ad_from_EUR.valid

/mnt/data_schen_1/jingchun/scz_plink_scores/PRSICE2.3.5/PRSice_linux --base /mnt/data_schen_1/jingchun/gwas_data/COVID-19/COVID19_baseFiles_allsnpid/UKBB_covid19_EUR_061821.addsnpid.txt.gz --chr CHR --snp SNP1 --bp BP --A1 A1 --A2 A2 --pvalue P --stat OR --clump-kb 250 --clump-p 1 --clump-r2 0.1 --interval 0.00005 --lower 0.00000001 --model add --out ad_from_EUR/ad_from_EUR.best  --binary-target T --print-snp --target /mnt/data_schen_1/jingchun/targetsFile/AD_merged/AD_All.QC1 --thread 1 --extract ad_from_EUR/ad_from_EUR.valid

#Rscript /mnt/data_schen_1/jingchun/scz_plink_scores/PRSICE2.3.5/PRSice2.R --prsice /mnt/data_schen_1/jingchun/scz_plink_scores/PRSICE2.3.5/PRSice_linux  --base /mnt/data_schen_1/jingchun/gwas_data/COVID-19/COVID19_baseFiles_allsnpid/UKBB_covid19_EUR_061821.addsnpid.txt.gz --chr CHR --snp SNP1 --bp BP --A1 A1 --A2 A2 --pvalue P --stat OR --clump-kb 250 --clump-p 1 --clump-r2 0.1 --interval 0.00005 --lower 0.00000001 --model add --out ad_from_EUR/ad_from_EUR.plot  --binary-target T --print-snp --target /mnt/data_schen_1/jingchun/targetsFile/AD_merged/AD_All.QC1 --thread 1 --extract ad_from_EUR/ad_from_EUR.valid --upper 0.5

/mnt/data_schen_1/jingchun/scz_plink_scores/PRSICE2.3.5/PRSice_linux --fastscore --base /mnt/data_schen_1/jingchun/gwas_data/COVID-19/COVID19_baseFiles_allsnpid/UKBB_covid19_EURtested_061821.addsnpid.txt.gz --chr CHR --snp SNP1 --bp BP --A1 A1 --A2 A2 --pvalue P --stat OR --clump-kb 250 --clump-p 1 --clump-r2 0.1 --bar-levels 0.00000005,0.00001,0.001,0.1 --model add --out ad_from_EURtested/ad_from_EURtested --all-score ad_from_EURtested/ad_from_EURtested --binary-target T --print-snp --target /mnt/data_schen_1/jingchun/targetsFile/AD_merged/AD_All.QC1 --thread 1 --upper 1 

/mnt/data_schen_1/jingchun/scz_plink_scores/PRSICE2.3.5/PRSice_linux --fastscore --base /mnt/data_schen_1/jingchun/gwas_data/COVID-19/COVID19_baseFiles_allsnpid/UKBB_covid19_EURtested_061821.addsnpid.txt.gz --chr CHR --snp SNP1 --bp BP --A1 A1 --A2 A2 --pvalue P --stat OR --clump-kb 250 --clump-p 1 --clump-r2 0.1 --bar-levels 0.00000005,0.00001,0.001,0.1 --model add --out ad_from_EURtested/ad_from_EURtested --all-score ad_from_EURtested/ad_from_EURtested --binary-target T --print-snp --target /mnt/data_schen_1/jingchun/targetsFile/AD_merged/AD_All.QC1 --thread 1 --upper 1 --extract ad_from_EURtested/ad_from_EURtested.valid

/mnt/data_schen_1/jingchun/scz_plink_scores/PRSICE2.3.5/PRSice_linux --base /mnt/data_schen_1/jingchun/gwas_data/COVID-19/COVID19_baseFiles_allsnpid/UKBB_covid19_EURtested_061821.addsnpid.txt.gz --chr CHR --snp SNP1 --bp BP --A1 A1 --A2 A2 --pvalue P --stat OR --clump-kb 250 --clump-p 1 --clump-r2 0.1 --interval 0.00005 --lower 0.00000001 --model add --out ad_from_EURtested/ad_from_EURtested.best  --binary-target T --print-snp --target /mnt/data_schen_1/jingchun/targetsFile/AD_merged/AD_All.QC1 --thread 1 --extract ad_from_EURtested/ad_from_EURtested.valid

#Rscript /mnt/data_schen_1/jingchun/scz_plink_scores/PRSICE2.3.5/PRSice2.R --prsice /mnt/data_schen_1/jingchun/scz_plink_scores/PRSICE2.3.5/PRSice_linux  --base /mnt/data_schen_1/jingchun/gwas_data/COVID-19/COVID19_baseFiles_allsnpid/UKBB_covid19_EURtested_061821.addsnpid.txt.gz --chr CHR --snp SNP1 --bp BP --A1 A1 --A2 A2 --pvalue P --stat OR --clump-kb 250 --clump-p 1 --clump-r2 0.1 --interval 0.00005 --lower 0.00000001 --model add --out ad_from_EURtested/ad_from_EURtested.plot  --binary-target T --print-snp --target /mnt/data_schen_1/jingchun/targetsFile/AD_merged/AD_All.QC1 --thread 1 --extract ad_from_EURtested/ad_from_EURtested.valid --upper 0.5

/mnt/data_schen_1/jingchun/scz_plink_scores/PRSICE2.3.5/PRSice_linux --fastscore --base /mnt/data_schen_1/jingchun/gwas_data/COVID-19/COVID19_baseFiles_allsnpid/UKBB_hsptl_EUR_061821.addsnpid.txt.gz --chr CHR --snp SNP1 --bp BP --A1 A1 --A2 A2 --pvalue P --stat OR --clump-kb 250 --clump-p 1 --clump-r2 0.1 --bar-levels 0.00000005,0.00001,0.001,0.1 --model add --out ad_from_hsptl_EUR/ad_from_hsptl_EUR --all-score ad_from_hsptl_EUR/ad_from_hsptl_EUR --binary-target T --print-snp --target /mnt/data_schen_1/jingchun/targetsFile/AD_merged/AD_All.QC1 --thread 1 --upper 1 

/mnt/data_schen_1/jingchun/scz_plink_scores/PRSICE2.3.5/PRSice_linux --fastscore --base /mnt/data_schen_1/jingchun/gwas_data/COVID-19/COVID19_baseFiles_allsnpid/UKBB_hsptl_EUR_061821.addsnpid.txt.gz --chr CHR --snp SNP1 --bp BP --A1 A1 --A2 A2 --pvalue P --stat OR --clump-kb 250 --clump-p 1 --clump-r2 0.1 --bar-levels 0.00000005,0.00001,0.001,0.1 --model add --out ad_from_hsptl_EUR/ad_from_hsptl_EUR --all-score ad_from_hsptl_EUR/ad_from_hsptl_EUR --binary-target T --print-snp --target /mnt/data_schen_1/jingchun/targetsFile/AD_merged/AD_All.QC1 --thread 1 --upper 1 --extract ad_from_hsptl_EUR/ad_from_hsptl_EUR.valid

/mnt/data_schen_1/jingchun/scz_plink_scores/PRSICE2.3.5/PRSice_linux --base /mnt/data_schen_1/jingchun/gwas_data/COVID-19/COVID19_baseFiles_allsnpid/UKBB_hsptl_EUR_061821.addsnpid.txt.gz --chr CHR --snp SNP1 --bp BP --A1 A1 --A2 A2 --pvalue P --stat OR --clump-kb 250 --clump-p 1 --clump-r2 0.1 --interval 0.00005 --lower 0.00000001 --model add --out ad_from_hsptl_EUR/ad_from_hsptl_EUR.best  --binary-target T --print-snp --target /mnt/data_schen_1/jingchun/targetsFile/AD_merged/AD_All.QC1 --thread 1 --extract ad_from_hsptl_EUR/ad_from_hsptl_EUR.valid

#Rscript /mnt/data_schen_1/jingchun/scz_plink_scores/PRSICE2.3.5/PRSice2.R --prsice /mnt/data_schen_1/jingchun/scz_plink_scores/PRSICE2.3.5/PRSice_linux  --base /mnt/data_schen_1/jingchun/gwas_data/COVID-19/COVID19_baseFiles_allsnpid/UKBB_hsptl_EUR_061821.addsnpid.txt.gz --chr CHR --snp SNP1 --bp BP --A1 A1 --A2 A2 --pvalue P --stat OR --clump-kb 250 --clump-p 1 --clump-r2 0.1 --interval 0.00005 --lower 0.00000001 --model add --out ad_from_hsptl_EUR/ad_from_hsptl_EUR.plot  --binary-target T --print-snp --target /mnt/data_schen_1/jingchun/targetsFile/AD_merged/AD_All.QC1 --thread 1 --extract ad_from_hsptl_EUR/ad_from_hsptl_EUR.valid --upper 0.5

/mnt/data_schen_1/jingchun/scz_plink_scores/PRSICE2.3.5/PRSice_linux --fastscore --base /mnt/data_schen_1/jingchun/gwas_data/COVID-19/COVID19_baseFiles_allsnpid/UKBB_hsptl_EURpstv_061821.addsnpid.txt.gz --chr CHR --snp SNP1 --bp BP --A1 A1 --A2 A2 --pvalue P --stat OR --clump-kb 250 --clump-p 1 --clump-r2 0.1 --bar-levels 0.00000005,0.00001,0.001,0.1 --model add --out ad_from_hsptl_EURpstv/ad_from_hsptl_EURpstv --all-score ad_from_hsptl_EURpstv/ad_from_hsptl_EURpstv --binary-target T --print-snp --target /mnt/data_schen_1/jingchun/targetsFile/AD_merged/AD_All.QC1 --thread 1 --upper 1 

/mnt/data_schen_1/jingchun/scz_plink_scores/PRSICE2.3.5/PRSice_linux --fastscore --base /mnt/data_schen_1/jingchun/gwas_data/COVID-19/COVID19_baseFiles_allsnpid/UKBB_hsptl_EURpstv_061821.addsnpid.txt.gz --chr CHR --snp SNP1 --bp BP --A1 A1 --A2 A2 --pvalue P --stat OR --clump-kb 250 --clump-p 1 --clump-r2 0.1 --bar-levels 0.00000005,0.00001,0.001,0.1 --model add --out ad_from_hsptl_EURpstv/ad_from_hsptl_EURpstv --all-score ad_from_hsptl_EURpstv/ad_from_hsptl_EURpstv --binary-target T --print-snp --target /mnt/data_schen_1/jingchun/targetsFile/AD_merged/AD_All.QC1 --thread 1 --upper 1 --extract ad_from_hsptl_EURpstv/ad_from_hsptl_EURpstv.valid

/mnt/data_schen_1/jingchun/scz_plink_scores/PRSICE2.3.5/PRSice_linux --base /mnt/data_schen_1/jingchun/gwas_data/COVID-19/COVID19_baseFiles_allsnpid/UKBB_hsptl_EURpstv_061821.addsnpid.txt.gz --chr CHR --snp SNP1 --bp BP --A1 A1 --A2 A2 --pvalue P --stat OR --clump-kb 250 --clump-p 1 --clump-r2 0.1 --interval 0.00005 --lower 0.00000001 --model add --out ad_from_hsptl_EURpstv/ad_from_hsptl_EURpstv.best  --binary-target T --print-snp --target /mnt/data_schen_1/jingchun/targetsFile/AD_merged/AD_All.QC1 --thread 1 --extract ad_from_hsptl_EURpstv/ad_from_hsptl_EURpstv.valid

#Rscript /mnt/data_schen_1/jingchun/scz_plink_scores/PRSICE2.3.5/PRSice2.R --prsice /mnt/data_schen_1/jingchun/scz_plink_scores/PRSICE2.3.5/PRSice_linux  --base /mnt/data_schen_1/jingchun/gwas_data/COVID-19/COVID19_baseFiles_allsnpid/UKBB_hsptl_EURpstv_061821.addsnpid.txt.gz --chr CHR --snp SNP1 --bp BP --A1 A1 --A2 A2 --pvalue P --stat OR --clump-kb 250 --clump-p 1 --clump-r2 0.1 --interval 0.00005 --lower 0.00000001 --model add --out ad_from_hsptl_EURpstv/ad_from_hsptl_EURpstv.plot  --binary-target T --print-snp --target /mnt/data_schen_1/jingchun/targetsFile/AD_merged/AD_All.QC1 --thread 1 --extract ad_from_hsptl_EURpstv/ad_from_hsptl_EURpstv.valid --upper 0.5

/mnt/data_schen_1/jingchun/scz_plink_scores/PRSICE2.3.5/PRSice_linux --fastscore --base /mnt/data_schen_1/jingchun/gwas_data/COVID-19/COVID19_baseFiles_allsnpid/UKBB_hsptl_EURtested_061821.addsnpid.txt.gz --chr CHR --snp SNP1 --bp BP --A1 A1 --A2 A2 --pvalue P --stat OR --clump-kb 250 --clump-p 1 --clump-r2 0.1 --bar-levels 0.00000005,0.00001,0.001,0.1 --model add --out ad_from_hsptl_EURtested/ad_from_hsptl_EURtested --all-score ad_from_hsptl_EURtested/ad_from_hsptl_EURtested --binary-target T --print-snp --target /mnt/data_schen_1/jingchun/targetsFile/AD_merged/AD_All.QC1 --thread 1 --upper 1 

/mnt/data_schen_1/jingchun/scz_plink_scores/PRSICE2.3.5/PRSice_linux --fastscore --base /mnt/data_schen_1/jingchun/gwas_data/COVID-19/COVID19_baseFiles_allsnpid/UKBB_hsptl_EURtested_061821.addsnpid.txt.gz --chr CHR --snp SNP1 --bp BP --A1 A1 --A2 A2 --pvalue P --stat OR --clump-kb 250 --clump-p 1 --clump-r2 0.1 --bar-levels 0.00000005,0.00001,0.001,0.1 --model add --out ad_from_hsptl_EURtested/ad_from_hsptl_EURtested --all-score ad_from_hsptl_EURtested/ad_from_hsptl_EURtested --binary-target T --print-snp --target /mnt/data_schen_1/jingchun/targetsFile/AD_merged/AD_All.QC1 --thread 1 --upper 1 --extract ad_from_hsptl_EURtested/ad_from_hsptl_EURtested.valid

/mnt/data_schen_1/jingchun/scz_plink_scores/PRSICE2.3.5/PRSice_linux --base /mnt/data_schen_1/jingchun/gwas_data/COVID-19/COVID19_baseFiles_allsnpid/UKBB_hsptl_EURtested_061821.addsnpid.txt.gz --chr CHR --snp SNP1 --bp BP --A1 A1 --A2 A2 --pvalue P --stat OR --clump-kb 250 --clump-p 1 --clump-r2 0.1 --interval 0.00005 --lower 0.00000001 --model add --out ad_from_hsptl_EURtested/ad_from_hsptl_EURtested.best  --binary-target T --print-snp --target /mnt/data_schen_1/jingchun/targetsFile/AD_merged/AD_All.QC1 --thread 1 --extract ad_from_hsptl_EURtested/ad_from_hsptl_EURtested.valid

#Rscript /mnt/data_schen_1/jingchun/scz_plink_scores/PRSICE2.3.5/PRSice2.R --prsice /mnt/data_schen_1/jingchun/scz_plink_scores/PRSICE2.3.5/PRSice_linux  --base /mnt/data_schen_1/jingchun/gwas_data/COVID-19/COVID19_baseFiles_allsnpid/UKBB_hsptl_EURtested_061821.addsnpid.txt.gz --chr CHR --snp SNP1 --bp BP --A1 A1 --A2 A2 --pvalue P --stat OR --clump-kb 250 --clump-p 1 --clump-r2 0.1 --interval 0.00005 --lower 0.00000001 --model add --out ad_from_hsptl_EURtested/ad_from_hsptl_EURtested.plot  --binary-target T --print-snp --target /mnt/data_schen_1/jingchun/targetsFile/AD_merged/AD_All.QC1 --thread 1 --extract ad_from_hsptl_EURtested/ad_from_hsptl_EURtested.valid --upper 0.5

