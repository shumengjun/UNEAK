#!/bin/bash -l
#SBATCH -J S3_mergetag
#SBATCH -o S3_mergetag.out
#SBATCH --mail-user=mshu@ucmerced.edu
#SBATCH --mail-type=begin
#SBATCH --mail-type=end
#SBATCH --mem=4000
#SBATCH -p std.q
#SBATCH -t 24:00:00

/home/mshu/TASSEL_3/run_pipeline.pl -fork1 -Xms100G -Xmx200G -UMergeTaxaTagCountPlugin -w /home/mshu/UNEAK/ -c 1 -m 120000000 -endPlugin -runfork1