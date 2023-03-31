### 这些将记录使用lastz的代码

#!/bin/bash
#SBATCH -p amd_256
#SBATCH -N 1
#SBATCH -n 64
lastz L1_fimily.fasta[multiple] GCA_000208655.2_Dasnov3.0_genomic.fna --matchcount=1 --ambiguous=iupac --hspthresh=3000 --gapped --format=MAF --output=GCA_000208655.2_Dasnov3.0_genomic.maf
echo 'finished'

这段代码是用lastz进行多序列与全基因组进行比对，可以生成maf文件；

