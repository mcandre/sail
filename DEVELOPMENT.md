# BUILDTIME REQUIREMENTS

* [coreutils](https://www.gnu.org/software/coreutils/)
* [ShellCheck](https://hackage.haskell.org/package/ShellCheck)
* [vast](https://github.com/mcandre/vast)
* [Go](https://golang.org/) 1.20.2+ with `go install github.com/mcandre/accio/cmd/accio@v0.0.4` and `accio -install`

## Recommended

* [ASDF](https://asdf-vm.com/) 0.10
* [direnv](https://direnv.net/) 2

# BUILD: LINT + TEST

```console
$ vast
```

# LINT

```console
vast ilint
```

# TEST

```console
$ vast itest
```
