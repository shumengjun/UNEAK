#!/bin/bash -l
#SBATCH -J S5_tagptotbt
#SBATCH -o S5_tagptotbt.out
#SBATCH --mail-user=mshu@ucmerced.edu
#SBATCH --mail-type=begin
#SBATCH --mail-type=end
#SBATCH --mem=200GB
#SBATCH -p std.q
#SBATCH -t 24:00:00

/home/mshu/TASSEL_3/run_pipeline.pl -fork1 -Xms100G -Xmx200G -UTagPairToTBTPlugin -w /qsb/mshu/UNEAK/ -endPlugin -runfork1