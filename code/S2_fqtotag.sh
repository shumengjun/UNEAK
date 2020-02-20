#!/bin/bash -l
#SBATCH -J S2_fqtotag
#SBATCH -o S2_fqtotag.out
#SBATCH --mail-user=mshu@ucmerced.edu
#SBATCH --mail-type=begin
#SBATCH --mail-type=end
#SBATCH --mem=4000
#SBATCH -p std.q
#SBATCH -t 24:00:00

/home/mshu/TASSEL_3/run_pipeline.pl -fork1 -Xms10G -Xmx100G -UFastqToTagCountPlugin -w /home/mshu/UNEAK/ -s 600000000 -e ApeKI -endPlugin -runfork1