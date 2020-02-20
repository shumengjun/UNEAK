#!/bin/bash -l
#SBATCH -J S1_crtDir
#SBATCH -o S1_crtDir.out
#SBATCH --mail-user=mshu@ucmerced.edu
#SBATCH --mail-type=begin
#SBATCH --mail-type=end
#SBATCH --mem=4000
#SBATCH -p std.q
#SBATCH -t 24:00:00

/home/mshu/TASSEL_3/run_pipeline.pl -fork1 -UCreatWorkingDirPlugin -w /home/mshu/UNEAK/ -endPlugin -runfork1