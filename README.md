# jazzy
Toy project to play with Euterpea

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

# References

