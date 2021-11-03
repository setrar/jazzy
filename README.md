# jazzy
Toy project to play with [Euterpea](https://www.euterpea.com/)

## :o: [Install a local package](https://stackoverflow.com/questions/63770578/how-do-you-get-cabal-to-install-a-local-package) 

- [ ] Create a place where you usually put your code

```
mkdir ~/Developer && cd ~/Developer
```

- [ ] Clone the Euterpea2 project (already upgraded to `GHC 8.10.7`)

```
git clone git@github.com:setrar/Euterpea2.git
```

- [ ] Create a `cabal.project` file that will point to the local `Euterpea2` library

```yaml
packages: .
          ~/Developer/Euterpea2
```

## :a: Run the project

```
cabal run
```

## :b: Run the scripts

```
cabal run scripts/script.sh 
```

```
cabal run scripts/childSong6.sh 
```

## :ab: Run the `REPL` (i.e. the GHCi - Interactive)

Using `cabal` to catch the libraries, run:

```
cabal repl
```

* Execute the few lines below, without the prompt (prompt beind the string preceding the `>` character)

```
*MyLib> import Euterpea
*MyLib Euterpea> play $ c 3 qn
*MyLib Euterpea> play $ line [ c 3 qn, e 3 qn, g 3 qn ]
```

# References

https://cabal.readthedocs.io/en/3.6/cabal-commands.html#cabal-v2-run

