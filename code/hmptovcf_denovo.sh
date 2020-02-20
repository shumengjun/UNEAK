#!/bin/bash -l
#SBATCH -J hmptovcf_denovo
#SBATCH -o hmptovcf_denovo.out
#SBATCH --mail-user=mshu@ucmerced.edu
#SBATCH --mail-type=begin
#SBATCH --mail-type=end
#SBATCH --mem=4000
#SBATCH -p std.q
#SBATCH -t 24:00:00

/home/mshu/TASSEL_5/run_pipeline.pl -fork1 -Xms10G -Xmx100G -h /home/mshu/UNEAK/hapMap/denovo/UNEAK_denovo_96.hmp.txt -export -exportType VCF -runfork1 
