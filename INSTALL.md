# INSTALLATION REQUIREMENTS

* [bash](https://www.gnu.org/software/bash/) 4+
* [GNU](https://www.gnu.org/)/[BSD](https://en.wikipedia.org/wiki/Berkeley_Software_Distribution) [findutils](https://en.wikipedia.org/wiki/Find_(Unix))
* [git](https://git-scm.com/) 2.46.1+

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

For example, `$HOME/.bashrc` (bash):

```sh
# ...
export PATH="$PATH:$HOME/sail/bin"
```

# UNINSTALL

1. Remove .../sail/bin from `PATH`.

For example, `$HOME/.bashrc` (bash):

```sh
# ...
```

2. Remove local clone directory.

```console
$ rm -rf "$HOME/sail"
```
