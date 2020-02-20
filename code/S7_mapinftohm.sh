#!/bin/bash -l
#SBATCH -J S7_mapinftohm
#SBATCH -o S7_mapinftohm.out
#SBATCH --mail-user=mshu@ucmerced.edu
#SBATCH --mail-type=begin
#SBATCH --mail-type=end
#SBATCH --mem=4000
#SBATCH -p std.q
#SBATCH -t 24:00:00

/home/mshu/TASSEL_3/run_pipeline.pl -fork1 -Xms100G -Xmx200G -UMapInfoToHapMapPlugin -w /home/mshu/UNEAK/ -mnMAF 0.01 -mxMAF 0.5 -mnC 0.1 -mxC 1 -endPlugin -runfork1