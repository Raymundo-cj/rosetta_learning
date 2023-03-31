## 这些代码将记录我基因蛋白质角度来对L1逆转录转座子的分析

### 1.数据的下载

1)借鉴微信公众号文章，实现全基因组数据下载

2)L1蛋白序列的下载

在ncbi上查询得到蛋白的序列号，构建一个TXT文件，利用下面网址
https://www.ncbi.nlm.nih.gov/sites/batchentrez
下载得到对应序列号的氨基酸序列

### 2.数据比对
1）首先根据之前的文献，知道了属于L1的20个ORF2蛋白的氨基酸序列
2）使用maf进行比对对齐

```
#!/bin/bash
mafft --maxiterate 1000 --localpair L1_protein_20.fasta >L1_protein_mf.fasta
```
2）使用hmmbuild构建hmm模型

```
#!/bin/bash
hmmbuild L1_fimily_mf.hmm L1_protein_mf.fasta（对齐后的序列）
```
3）使用hsearch进行序列搜索

```
#!/bin/bash
hmmsearch --domtblout WRKY_hmm_out.txt --cut_tc WRKY.hmm Arabidopsis_thaliana.TAIR10.pep.all.fa
```
