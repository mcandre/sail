# BUILDTIME REQUIREMENTS

* a UNIX environment with [coreutils](https://www.gnu.org/software/coreutils/) / [base](http://ftp.freebsd.org/pub/FreeBSD/releases/) / [macOS](https://www.apple.com/macos) / [WSL](https://learn.microsoft.com/en-us/windows/wsl/install) / etc.
* [GNU findutils](https://www.gnu.org/software/findutils/)
* [GNU grep](https://www.gnu.org/software/grep/)
* [vast](https://github.com/mcandre/vast) 0.0.1
* [ShellCheck](https://hackage.haskell.org/package/ShellCheck)
* [Go](https://golang.org/) 1.20.2+
* [Python](https://www.python.org/) 3.11.2+
* Provision additional dev tools with `./install`

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
