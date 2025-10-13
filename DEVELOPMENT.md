# BUILDTIME REQUIREMENTS

* [bash](https://www.gnu.org/software/bash/) 4+
* [GNU](https://www.gnu.org/)/[BSD](https://en.wikipedia.org/wiki/Berkeley_Software_Distribution) [findutils](https://en.wikipedia.org/wiki/Find_(Unix))
* [Go](https://golang.org/) 1.24.6+
* [git](https://git-scm.com/) 2.46.1+
* [POSIX](https://pubs.opengroup.org/onlinepubs/9799919799/) compatible [make](https://en.wikipedia.org/wiki/Make_(software))
* [Python](https://www.python.org/) 3.13.7+
* [Rust](https://www.rust-lang.org/) 1.87.0+
* [Snyk](https://snyk.io/)
* [ShellCheck](https://www.shellcheck.net/) 0.10.0+
* Provision additional dev tools with `make -f install.mk [-j 4]`

## Recommended

* [ASDF](https://asdf-vm.com/) 0.10 (run `asdf reshim` after provisioning)
* [clang-format](https://clang.llvm.org/docs/ClangFormat.html)
* [clang-tidy](https://clang.llvm.org/extra/clang-tidy/)
* [cmake](https://cmake.org/)
* [cppcheck](http://cppcheck.sourceforge.net/)
* [cpplint](https://github.com/cpplint/cpplint)
* [direnv](https://direnv.net/) 2
* [GNU](https://www.gnu.org/)/[BSD](https://en.wikipedia.org/wiki/Berkeley_Software_Distribution) [make](https://en.wikipedia.org/wiki/Make_(software))

# AUDIT

```console
$ make audit
```

# LINT

```console
$ make lint
```

# TEST

```console
$ make [test]
```
