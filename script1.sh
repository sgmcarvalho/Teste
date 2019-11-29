#!/bin/bash

echo "Criando direttorios"

cd ~/

mkdir -p Projeto

mkdir Projeto/raw/

mkdir -p Projeto/input/

mkdir -p Projeto/ref/

mkdir -p Projeto/ref/star/

mkdir -p Projeto/processed/

mkdir -p Projeto/processed/prinseq/

mkdir -p Projeto/processed/atropos/

mkdir -p Projeto/aligned/

mkdir -p Projeto/aligned/star/

mkdir -p Projeto/output/

mkdir -p Projeto/output/cufflinks/

mkdir -p Projeto/output/cuffmerge/

mkdir -p Projeto/output/cuffquant/

mkdir -p Projeto/output/cuffdiff/

tree


echo "Copiar arquivos"

cp /tmp/*.fastq Projeto/raw/

echo "Download NCBI e mover"

wget --output-document=./Projeto/ref/genoma.fa.gz --quiet --timestamping ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/001/315/015/GCF_001315015.1_ASM131501v1/GCF_001315015.1_ASM131501v1_genomic.fna.gz

echo "Descompactando"
gunzip -c ./Projeto/ref/genoma.fa.gz > ./Projeto/ref/genoma.fa


echo "FIM"
