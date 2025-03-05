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

sail navigates the roiling seas of source code files, catching C/C++ headers and implementations for downstream processing. This is primarily of interest when linting large projects, when a static analyzer lacks built-in support for recursive file lookup.

# EXAMPLES

```console
$ sail examples
examples/cmd/hello/hello.c
examples/cmd/hello/hello.cpp
examples/square.cppm
examples/lib/fizzy.h

$ sail -print0 examples | xargs -0 -n 1 wc -l
       7 examples/cmd/hello/hello.c
       6 examples/cmd/hello/hello.cpp
       3 examples/square.cppm
       8 examples/lib/fizzy.h
```

sail can also restrict results to just C files, or just C++ files. This helps when working with linters that may only be relevant for one programming language or the other.

See `sail -help` for more detail.

# LICENSE

BSD-2-Clause

# RUNTIME REQUIREMENTS

* [GNU](https://www.gnu.org/)/[BSD](https://en.wikipedia.org/wiki/Berkeley_Software_Distribution) [findutils](https://en.wikipedia.org/wiki/Find_(Unix))
* POSIX compatible [sh](https://pubs.opengroup.org/onlinepubs/9699919799/utilities/sh.html)

## Recommended

* [clang-format](https://clang.llvm.org/docs/ClangFormat.html)
* [clang-tidy](https://clang.llvm.org/extra/clang-tidy/)
* [cmake](https://cmake.org/)
* [cppcheck](http://cppcheck.sourceforge.net/)
* [cpplint](https://github.com/cpplint/cpplint)

# INSTALL

For more information on installing or uninstalling sail, see [INSTALL.md](INSTALL.md).

# NOTES

sail examines the file extension to assess programming language; no effort is put into analyzing the contents for C/C++ grammar or syntactic validity.

Only modern, lowercase file extensions are reported by sail:

* C: `.h` (headers), `.c` (implementations)
* C++: `.hpp` (headers), `.cpp` (implementations), `.cppm` (modules)

If sail doesn't find your C/C++ file, then it may not strictly a C/C++ file (such as an Arduino programming language extension). More likely, the file is simply using a vintage file extension, which can play havoc with syntax highlighting and linting.

Only plain C, C++ source code files are reported by sail. The following related formats are ignored:

* C#: `.cs`
* CUDA: `.cu`
* Single Assignment C: `.sac`
* Objective C++: `.mhh`, `.mm`
* D: `.d`

However, some historical conventions for unusual C/C++ header extensions may be supported, see the patterns listed in [bin/sail](https://github.com/mcandre/sail/blob/master/bin/sail).

(sp)lint has not been sufficiently maintained as of this writing to parse C89/99 or later syntax. Any application written in C is generally advised to use a more modern linter.

Fortunately, C++ linters such as those listed above are able to handle both C and C++ code.

Unfortunately, file extensions are overloaded with conflicting meanings. For example, `*.h` can refer to a C header, or a C++ header, or an Objective C header. And `.m` can refer to an Objective C implementation or a MATLAB / Octave implementation. Sending the wrong file to the wrong linter will produce incorrect results. Likewise, your text editor will often get confused.

You can distinguish between these differing syntaxes by naming your headers with modern, convential file extensions.

* Objective C / Objective C++: `.mhh`

and your implementations:

* Objective C / Objective C++: `.mm`
* MATLAB / Octave: `.m`

Yet more fringe file extensions exist. For example, `.ino` files (Arduino extensions to C++), and `.inc` files (legacy headers used by a variety of different programming languages). These files may not process reliably when submitted to automated linters.

Avoid using spaces in files or folders, as this generally presents difficulties for build systems.

# CONTRIBUTING

For more details on developing sail itself, see [DEVELOPMENT.md](DEVELOPMENT.md).

# SEE ALSO

* [kirill](https://github.com/mcandre/kirill), a JSON file finder
* [rez](https://github.com/mcandre/rez), a C/C++ task runner
* [stank](https://github.com/mcandre/stank), a collection of POSIX-y shell linters
