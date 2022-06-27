# TP Bioinformática

## Integrantes

* Agustina Nahas (149.702-9)
* Juan Ignacio Cuiule (158.938-6)

---

## Enunciado:

[TP Bioinformatica-2022 - Parte 1.pdf](./TP%20Bioinformatica-2022%20-%20Parte%201.pdf)


## Desarrollo

Desarrollo de la primera parte del trabajo práctico de Bioinformática 1C2022.

### Gen elegido (PSEN1)

Partiendo de la enfermedad de Alzheimer y buscandola en [omim.org](https://www.omim.org/) llegamos al gen `PSEN1`. Buscamos el gen en el `ncbi` llegando a: https://www.ncbi.nlm.nih.gov/gene/5663. Decidimos trabajar con la primera variante https://www.ncbi.nlm.nih.gov/nuccore/NM_000021.4

### Ejercicio 1 - Procesamiento de secuencias.

Input:
- `sequence-psen1.gb` con la secuencia de mARN de la variante 1 (`NM_000021.4`) en formato Genbank.

Output:
- `sequence-psen1.fasta` traducción directa de formato Genbank a formato FASTA del archivo de entrada.
- `psen1-orfs.fasta` con las secuencias de los ORFs encontrados en la secuencia de mARN de la variante 1 (`NM_000021.4`).

Se ejecuta corriendo `perl ex1.pm`

### Ejercicio 2 - BLAST (local)

Un requisito previo es correr el script `download_blast.sh` para descargar la base de datos swissprot y blastplus.

Input:
- `psen1-orfs.fasta`

Output:
- Archivos que están dentro de `out-blast` con el resultado del BLAST de la secuencia de cada ORF encontrado.

Se ejecuta corriendo:

`BLASTPLUSDIR=$(pwd)/ncbi-blast-2.13.0+/bin perl ex2.local.pm`

### Ejercicio 3 - MSA

Viendo resultado del BLAST para el orf 3 (`psen1-orfs-3-blast.bls`) y tomando 5 resultados del blast local (que están en archivos formato fasta dentro de la carpeta `msa-in`) se realiza un MSA con el programa `clustalw` y se guarda en `out-msa`.

Se ejectuta corriendo:

`perl ex3.pm`

### Ejercicio 4 - Blast output

Toma el archivo salida del ejercicio 2 y recibe un patrón con el cual va a buscar hits.

Por ejemplo:

`perl ex4.pm ./out-blast/psen1-orfs-3-blast.bls "Macaco"`

Esto genera una carpeta dentro de `out-4` con el patron que contiene las secuencias fasta de los hits.

### Ejercicio 5 - EMBOSS

Usa los programas `getorf` y `patmatmotifs` de EMBOSS para encontrar los orfs y hacer un análisis de dominio.

ej:
`perl ex5.pm "./sequence-psen1.fasta"`