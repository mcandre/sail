# BUILDTIME REQUIREMENTS

* GNU or BSD [findutils](https://en.wikipedia.org/wiki/Find_(Unix))
* [Go](https://golang.org/) 1.23.2+
* [git](https://git-scm.com/) 2.46.1+
* [Python](https://www.python.org/) 3.12.1+
* POSIX compatible [sh](https://pubs.opengroup.org/onlinepubs/9699919799/utilities/sh.html)
* [Snyk](https://snyk.io/)
* [ShellCheck](https://hackage.haskell.org/package/ShellCheck)
* Provision additional dev tools with `./install`

## Recommended

* [ASDF](https://asdf-vm.com/) 0.10 (run `asdf reshim` after provisioning)
* [clang-format](https://clang.llvm.org/docs/ClangFormat.html)
* [clang-tidy](https://clang.llvm.org/extra/clang-tidy/)
* [cmake](https://cmake.org/)
* [cppcheck](http://cppcheck.sourceforge.net/)
* [cpplint](https://github.com/cpplint/cpplint)
* [direnv](https://direnv.net/) 2

# INSTALL

(Adjust git forks, clone URLs, remotes, HEAD pointer, and/or local directory name as needed.)

1. Clone the project to a local directory.

```console
$ git clone https://github.com/mcandre/sail.git ~/sail
```

2. Add .../sail/bin to `PATH`.

~/.zshrc:

```zsh
# ...
export PATH="$PATH:$HOME/sail/bin"
```

# UNINSTALL

1. Remove .../sail/bin from `PATH`.

~/.zshrc:

```zsh
# ...
```

2. Remove local clone directory.

```console
$ rm -rf ~/sail
```


# AUDIT

```console
$ ./build audit
```

# LINT

```console
$ ./build [lint]
```
