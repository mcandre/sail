# BUILDTIME REQUIREMENTS

* a UNIX environment with [coreutils](https://www.gnu.org/software/coreutils/) / [base](http://ftp.freebsd.org/pub/FreeBSD/releases/), [macOS](https://www.apple.com/macos), [WSL](https://learn.microsoft.com/en-us/windows/wsl/install), etc.
* [findutils](https://www.gnu.org/software/findutils/)
* [vast](https://github.com/mcandre/vast)
* [ShellCheck](https://hackage.haskell.org/package/ShellCheck)
* [Go](https://golang.org/) 1.20.2+ with `go install github.com/mcandre/accio/cmd/accio@v0.0.4` and `accio -install`
* [Python](https://www.python.org/) 3.11.2+ with `pip[3] install --upgrade pip setuptools` and `pip[3] install -r requirements-dev.txt`

## Recommended

* [ASDF](https://asdf-vm.com/) 0.10
* [direnv](https://direnv.net/) 2

# BUILD: LINT + TEST

```console
$ vast [v-build]
```

# LINT

```console
vast v-lint
```

# TEST

```console
$ vast v-test
```
