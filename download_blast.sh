#! /usr/bin/sh

# Descargar la db en FASTA
wget https://ftp.ncbi.nlm.nih.gov/blast/db/FASTA/swissprot.gz

# Descomprimir el archivo
gzip -d -k swissprot.gz

# Descargar blast plus (en mi caso para macos)
wget https://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/LATEST/ncbi-blast-2.13.0+-x64-macosx.tar.gz

# Descromprimir blast+
tar -xvf ncbi-blast-2.13.0+-x64-macosx.tar.gz