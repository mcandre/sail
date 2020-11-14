# sail: Identify C/C++ source code files

```text
     _~
  _~ )_)_~
  )_))_))_)
  _!__!__!_
  \______t/
~~~~~~~~~~~~~
```

# ABOUT

sail navigates through large pools of source code files, reeling in headers and implementations of C and C++ code, for downstream processing by static analyzers.

# EXAMPLES

```console
$ sail examples
examples/hello.c
examples/fizzy.h
examples/fizzy.HPP
examples/hello.cpp
examples/hello.CXX
examples/fizzy.hxx
examples/hello.c++
examples/hello.cc
examples/fizzy.hh

$ sail examples | xargs vera++
examples/hello.cpp:1: no copyright notice found
```

See `sail -h` for more detail.

# RUNTIME REQUIREMENTS

* [coreutils](https://www.gnu.org/software/coreutils/)
* [findutils](https://www.gnu.org/software/findutils/)

## Recommended

* [cppcheck](http://cppcheck.sourceforge.net/)
* [cpplint](https://github.com/cpplint/cpplint)
* [vera++](https://bitbucket.org/verateam/vera/wiki/Home)

# NOTES

(sp)lint has not been sufficiently maintained as of this writing to parse C89/99 or later syntax. Any application written in C is generally advised to use a more modern linter.

Fortunately, C++ linters such as those listed above are able to handle both C and C++ code.

# CONTRIBUTING

For more details on developing sail itself, see [DEVELOPMENT.md](DEVELOPMENT.md).

# SEE ALSO

* [stank](https://github.com/mcandre/stank)
