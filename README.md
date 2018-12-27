# Linguaggi e Computabilità Unimib 2018/2019
Esercizi di laboratorio del corso Linguaggi e Computabilità Unimib 2018/2019.

Gli esercizi proposti sono relativi all'utilizzo di lexer e parser, nello specifico jflex e byaccj.
___
#### Installazione
Entrambi sono facilemente reperibili dai siti ufficiali e nelle repositories di molte distro linux.

Esempio di installazione su Ubuntu:

``` bash
sudo apt install jflex
sudo apt install byacc-j
```
___
#### Esecuzione
Per la compilazione ed esecuzione degli esercizi usare i seguenti comandi:

``` bash
jflex esercizio.l
byaccj -J esercizio.y
javac *.java
java Parser
```
Per leggere l'input da un file invece che da tastiera:

``` bash
java Parser < fileInput.txt
```

Per scrivere l'output su file:

``` bash
java Parser > fileOutput.txt
```
