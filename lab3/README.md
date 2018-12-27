## Istruzioni per l'esecuzione

1. Compilare i file _esercizio1.l_ e _esercizio1.y_ con gli usuali comandi jflex e byaccj -J

``` bash
jflex esercizio1.l
byaccj -J esercizio1.y
```

2. Compilare tutti i file .java con javac

``` bash
javac *.java
```

3. Compilare il file _stackMachine.c_ con il comando gcc (verrà prodotto l'eseguibile _a.out_)

``` bash
gcc stackMachine.c
```

4. Eseguire il parsing del file .s, scrivendo l'output su un file

``` bash
java Parser < nomeFile.s > nomeFile.asm
```
5. Eseguire la stackMachine fornendo in input il file appena generato

``` bash
./a.out  nomeFile.asm
```
