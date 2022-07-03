# Actividad extra

##  Insulin from A to Z - Understanding a genetic disease with the help of Bioinformatics

Ejercicios: http://education.expasy.org/bioinformatique/Diabetes.html

---

### Activity 1: The insulin gene and the human genome

Usando "BLAT" buscar la secuencia:

```cagccgcagcctttgtgaaccaacacctgtgcggctcacacctggtggaagctctctacc```

![resultado](./assets/Screen%20Shot%202022-06-27%20at%2019.01.47.png)

Encontramos la secuencia en el cromosoma número 11 (chr11:2,160,851-2,160,910)

Ahora probamos con una secuencia aleatoria.

Primero probamos con:

- "ATGCCAGTATGCCGATATAAGCGGCGATATAGCAT" y no obtuvimos ninguna coincidencia

Después probamos con:

- "TCGATATTGACAGAAGGCACATTAGACATT" y encontramos una coincidencia

![coincidencia](./assets/Screen%20Shot%202022-07-03%20at%2011.00.46.png)

---

### Activity 2: Comparing DNA sequences - Diagnosing a rare genetic disease

Corrimos un alineamiento multiple entre las 8 secuencias y vemos que las secuencias 1 y 3 presentan la misma mutación conocida como c->t (R55C)

![alineamiento](./assets/Screen%20Shot%202022-07-03%20at%2011.27.19.png)

---

### Activity 3: DNA translation -> protein

Usamos translate para ver como se treducen las secuencias de nucleotidos a secuencias de aminoacidos.

1. aag acc cgc cgg gag 
2. aag acc tgc cgg gag 

Para 1
|  |  |  |  |  |
| - | - | - | - | - |
| aag | acc | cgc | cgg | gag |
| K   | T   | ***R***   | R   | E   |

Para 2
|  |  |  |  |  |
| - | - | - | - | - |
| aag | acc | tgc | cgg | gag |
| K   | T   | ***C***   | R   | E   |

Vemos que el cambio de c->t cambia de R (Arginine) a C (Cysteine)

Por otro lado una mutación de aag->aaa no produciría un cambio porque en ambos casos el aminoacido es el mismo (K - Lysine).

---

### Activity 5: Is insulin specific to humans?

Al correr un BLAST con la secuencia completa de aminoacidos de la insulina en humanos vemos que  se encuentran 196 hits.

![blast](./assets/Screen%20Shot%202022-07-03%20at%2012.07.09.png)