#!/bin/bash -l
#SBATCH -J S6_tbttomapinf
#SBATCH -o S6_tbttomapinf.out
#SBATCH --mail-user=mshu@ucmerced.edu
#SBATCH --mail-type=begin
#SBATCH --mail-type=end
#SBATCH --mem=4000
#SBATCH -p std.q
#SBATCH -t 24:00:00

/home/mshu/TASSEL_3/run_pipeline.pl -fork1 -Xms100G -Xmx200G -UTBTToMapInfoPlugin -w /home/mshu/UNEAK/ -endPlugin -runfork1