# UNEAK
Using UNEAK (*de novo*) pipeline to call SNPs with GBS raw data of 94 ponderosa pine (Pinus ponderosa)
## Software
- Version: TASSEL Version 3.0, UNEAK
-	Website: https://tassel.bitbucket.io/TasselArchived.html
-	Manual:	https://bytebucket.org/tasseladmin/tassel-5-source/wiki/docs/TasselPipelineUNEAK.pdf
## Input File
- [Raw fasta file](https://trace.ncbi.nlm.nih.gov/Traces/study/?acc=PRJNA527618&o=acc_s%3Aa) produced by GBS (Genotyping by sequencing) with restriction enzyme *Ape*KI
- Barcode information
## Output File
[VCF file](https://datadryad.org/stash/dataset/doi:10.5061/dryad.6fv8fb4)
## Step 1: create working directory
- Code: S1_crtDir.sh
- Plugin: -UCreatWorkingDirPlugin
- Output: Eight folders
## Step 2: fastq to tag count
- Code: S2_fqtotag.sh
- Input: barcode file and the raw fasta file
- Plugin: -UFastqToTagCountPlugin
- Output: 96 tag counts .cnt file
## Step 3: merge tag count
- Code: S3_mergetag.sh
- Input: 96 tag counts .cnt file 
-	Plugin: -UMergeTaxaTagCountPlugin
- Minimum count reads: 1
- Output: 1 merged all tag counts .cnt file
## Step 4: merged tag count to tag pairs
- Code: S4_tagctotagp.sh
- Input: 1 merged all tag counts .cnt file
-	Plugin: -UTagCountToTagPairPlugin
-	QS: 0.01
- Output: 1 tag pair .tps file
## Step 5: tag pairs to tbt
- Code: S5_tagptotbt.sh
- Input: 1 tag pair .tps file, 96 tag counts .cnt file from step 2
-	Plugin: -UTagPairToTBTPlugin
- Output: a tag by taxa .bin file
## Step 6: tbt to map info
- Code: S6_tbttomapinf.sh
- Input: 1 tag pair .tps file from step 4, a tag by taxa .bin file from step 5
-	Plugin: -UTBTToMapInfoPlugin
- Output: a map information .bin file
## Step 7: map info to hapmap
- Code: S7_mapinftohm.sh
- Input: a map information .bin file
- mnMAF: 0.01
-	minimum count reads: 1
-	minimum call rate: 0.1
-	maximum call rate: 1
-	Plugin: -UMapInfoToHapMapPlugin
- Output: a **.hmp** file, a **.hmc** file, a **.fas** file

## Step 8: change hapmap file to vcf file
- Code: hmptovcf_denovo.sh
- Input: a **.hmp** file
- Output: a **.vcf** file
•	hmptovcf_denovo.out
