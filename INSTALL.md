# INSTALLATION REQUIREMENTS

* GNU or BSD [findutils](https://en.wikipedia.org/wiki/Find_(Unix))
* [git](https://git-scm.com/) 2.46.1+
* POSIX compatible [sh](https://pubs.opengroup.org/onlinepubs/9699919799/utilities/sh.html)

## Recommended

* [clang-format](https://clang.llvm.org/docs/ClangFormat.html)
* [clang-tidy](https://clang.llvm.org/extra/clang-tidy/)
* [cmake](https://cmake.org/)
* [cppcheck](http://cppcheck.sourceforge.net/)
* [cpplint](https://github.com/cpplint/cpplint)

# INSTALL

1. Clone the project to a local directory.

```console
$ git clone https://github.com/mcandre/sail.git "$HOME/sail"
```

2. Add .../sail/bin to `PATH`.

For example, `$HOME/.zshrc` (zsh):

```sh
# ...
export PATH="$PATH:$HOME/sail/bin"
```

# UNINSTALL

1. Remove .../sail/bin from `PATH`.

For example, `$HOME/.zshrc` (zsh):

```sh
# ...
```

2. Remove local clone directory.

```console
$ rm -rf "$HOME/sail"
```
