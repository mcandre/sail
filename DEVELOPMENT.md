# BUILDTIME REQUIREMENTS

* [checkbashisms](https://sourceforge.net/projects/checkbaskisms/)
* [ShellCheck](https://hackage.haskell.org/package/ShellCheck)
* [shfmt](https://github.com/mvdan/sh) (`go install github.com/mvdan/sh/shfmt`)
* [stank](https://github.com/mcandre/stank)
* [vast](https://github.com/mcandre/vast)

## Recommended

* [ASDF](https://asdf-vm.com/) 0.10

# BUILD: LINT + TEST

```console
$ vast
```

# LINT

```console
vast lint
```

# TEST

```console
$ vast itest
```
