# Ejercicio 6

Alzheimer y PSEN1

Location: 14q24.2
Phenotype: Alzheimer disease 3
Phenotype MIM number: 607822
Inheritance: AD
Phenotype mapping key: 3
Gene/Locus: PSEN1
Gene/Locus MIM number: 104311


## Trabajo con Bases de Datos Biológicas

### Punto A

>  A partir del gen o proteína de interés para ustedes dar su link a NCBI-Gene como una entrada de Entrez, por ej.: http://www.ncbi.nlm.nih.gov/gene/3630. Expliquen brevemente lo que hace la proteína y por qué la eligieron.

Trabajamos con la variante 1 de la proteína presenilina (PS-1) https://www.ncbi.nlm.nih.gov/gene/5663 que está relacionada con la enfermedad de Alzheimer (https://omim.org/entry/607822).

La presenilina-1 es una proteína que está codificada por el gen PSEN1 en el cromosoma 14. Es una de las 4 proteínas que forman la gamma secretasa que participa de la generación de beta-amiloide (​​Aβ) de la APP (Amyloid Precursor Protein).

La APP es una proteína que se expresa en distintos tejidos que se concentran en la sinapsis de las neuronas y según estudios recientes está implicada con la plasticidad neuronal y también como reguladora frente a la formación de sinapsis.

La beta amiloide es una molécula que es normalmente encontrada como componente de las placas de depósitos que se encuentran en el cerebro de pacientes con Alzheimer.


### Punto B

> ¿Cuántos genes / proteínas homólogas se conocen en otros organismos? Utilicen la información que está en la base de datos de HomoloGene y en la bases de datos Ensembl . Describan los resultados en ambas bases de datos, y en qué se diferencian. Mencionen sobre qué tan común creen son estos genes o proteínas y a qué grupos taxonómicos pertenecen (sólo en las bacterias, en los vertebrados, etc.)

Según ensembl hay 203 secuencias ortólogas que aparecen principalmente en primates, roedores, laurasiaterios y placentarios. Al buscar en HomoloGene vemos 14 especies (incluyendo homo sapiens).


### Punto C

> ¿Cuántos transcriptos y cuántas formas alternativas de splicing son conocidos para este gen / proteína? ¿Cuáles de estos splicing alternativos se expresan? ¿Tienen funciones alternativas? Buscar evidencia de esto en las base de datos de NCBI y en los transcriptos de Ensembl ¿Cómo el número de splicings alternativos diferente entre las dos bases de datos y cuál piensan que es más precisa y por qué?

Respuesta

### Punto D

> ¿Con cuántas otras proteínas interactúa el producto génico de su gen? ¿Existe un patrón o relación entre las interacciones? Mencione las interacciones interesantes o inusuales. Usted encontrará las interacciones de su gene/proteína tanto en la base de datos NCBI Gene como en la base de datos UniProt . Compare las dos tablas entre sí. ¿Hay proteínas que interactúan únicas para cada tabla?

Buscando en uniprot podemos ver la interacción proteína-proteína en distintas bases de datos.

Vemos 196 interacciones en BioGRID mientras que en NCBI aparecen más (265) porque incluye otras bases además de BioGrid.

También vimos las interacciones registradas en STRING (https://string-db.org/network/9606.ENSP00000326366) donde aparecen destacadas (predirected functional partners):
- NOTCH1
- APP
- NCSTN
- CTNNB1
- APH1A
- PSENEN
- APH1B
- TRAF6
- CDH1
- CTNND2


### Punto E

> Expliquen brevemente de qué componente celular forma parte su proteína (pista: se puede estudiar la información de Gene Ontology - GO), ¿A qué procesos biológicos pertenece (pista idem)? y ¿En qué función molecular trabaja esta proteína? Los términos ontológicos de genes los pueden encontrar tanto en NCBI Gene y en la base de datos UniProt como haciendo una búsqueda en AmiGO.

Componente celular:
- Forma parte de la gamma-secretasa (http://amigo.geneontology.org/amigo/term/GO:0070765)

Procesos biológicos:
- Smooth endoplasmic reticulum calcium ion homeostasis: incrementa la concentración de iones de calcio en el retículo endoplasmático
- Notch receptor processing, ligand-dependent
- Amyloid-beta formation: generación de beta-amiloide por escisión de la APP
- Positive regulation of amyloid fibril formation
- Astrocyte activation involved in immune response (célula encontrada en el sistema nervioso que participa en el almacenamiento de energía, la modulación de sinapsis y reparación de tejidos, entre otras cosas)

Función molecular - adhesión y comunicación celular
- Beta-catenin binding (β-catenin está involucrada en la adhesión celular y en transcripción genética)
- Growth factor receptor binding (intercellular signaling)
- Cadherin binding
- Endopeptidase activity
- Cell adhesion molecule binding
- Signaling receptor binding: binding de uno o más puntos especificos en una molecula receptora que se combina con alguna hormona, neurotransmisor, droga o mensajero intracelular para iniciar un cambio en el funcionamiento de una celula.

### Punto F

> Discutan brevemente en qué estructura o vías metabólicas específicas (pathways) estaría participando su gen / proteína? (Reactome, KEGG son algunas bases de datos de pathways).

- Notch signaling pathway: es un mecánismo de señalización intercelular conservado evolutivamente y escencial para el desarrollo embrionario adecuado.
- Alzheimer's disease (Pathway) (https://www.wikipathways.org/index.php/Pathway:WP5124)
- Wnt signaling

### Punto G

> Entrar en la base de datos de variantes genéticas dbSNP e intentar interpretar o encontrar info sobre alguna variante (reference SNP - rsXXXX) asociada con la patología investigada en su gen de interés. ¿Qué variante es? ¿Hay información sobre la frecuencia que tiene esta variante en la población? ¿Qué grupo étnico parece ser el más afectado?

En https://www.genecards.org/cgi-bin/carddisp.pl?gene=PSEN1#snp vimos que hay muchas variantes.

Algunas de las que miramos fueron:
- rs63750815 (https://www.ncbi.nlm.nih.gov/snp/rs63750815)
- rs1057518919 (https://www.ncbi.nlm.nih.gov/snp/rs1057518919)
- rs886050681 (https://www.ncbi.nlm.nih.gov/snp/rs886050681)

La mayoría de las que investigamos mantienen **la** relación con la enfermedad estudiada y no parecen tener otras implicancias que difieran entre sí. Hay muchas variantes con poca  o nula información sobre su frecuencia 

No encontramos nada particular entre las variantes y no parece haber diferencias significativas entre distintos grupos étnicos.

Más tarde vimos que la variante rs17125721 parecería tener una mayor frecuencia en la población europea que en el resto y según algunos estudios podría incrementar la predisposición a la enfermedad.