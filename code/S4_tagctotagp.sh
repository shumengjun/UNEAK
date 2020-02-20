#!/bin/bash -l
#SBATCH -J S4_tagctotagp
#SBATCH -o S4_tagctotagp.out
#SBATCH --mail-user=mshu@ucmerced.edu
#SBATCH --mail-type=begin
#SBATCH --mail-type=end
#SBATCH --mem=4000
#SBATCH -p std.q
#SBATCH -t 24:00:00

/home/mshu/TASSEL_3/run_pipeline.pl -fork1 -Xms100G -Xmx200G -UTagCountToTagPairPlugin -w /home/mshu/UNEAK/ -e 0.01 -endPlugin -runfork1