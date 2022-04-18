# Tcl/Tk 8.6 for Fortran 2018
A work-in-progress Fortran 2018 ISO_C_BINDING interface library for
interoperability with Tcl/Tk 8.6. This library allows you

* to embed Tcl into Fortran,
* to create Tcl extensions in Fortran (with Tcl Stubs),
* to access (a subset of) the Tcl/Tk C API from Fortran,
* to use Tcl as an evaluatable configuration file format, and
* to add graphical user interfaces to Fortran programs.

There are some smaller differences to the original API:

* Procedure names have been converted from camel case to snake case (for
  example, `tcl_eval_ex()` in Fortran instead of `Tcl_EvalEx()` in C).
* Character strings passed to library procedures do not have to be
  null-terminated, as this step is done by Fortran wrappers.
* Types are converted to their Fortran counter-parts (such as `logical` instead
  of `c_int` for boolean values).
* Some procedure arguments have been made optional to avoid passing of
  `c_null_ptr`, `c_null_funptr`, and `0`.
* The interfaces called by the wrapper procedures contain a trailing underscore
  `_` in their name (for example, wrapper `tcl_eval()` appends a null character
  to the second argument, then calls Fortran interface `tcl_eval_()`).
* Functions and routines exposed to Tcl must have the `bind(c)` attribute.

See [COVERAGE](COVERAGE.md) for a table of the bound procedures.

## Fortran Libraries
| Library           | Description                                                        |
|-------------------|--------------------------------------------------------------------|
| `libftcl86.a`     | Bindings to Tcl (`libtcl86.a`)                                     |
| `libftclstub86.a` | Bindings to Tcl Stubs for extensions in Fortran (`libtclstub86.a`) |
| `libftk86.a`      | Bindings to Tk (`libtk86.a`)                                       |

## Build Instructions
Tcl 8.6 and Tk 8.6 with development headers have to be present. On FreeBSD,
install the packages with:

```
# pkg install lang/tcl86 x11-toolkits/tk86
```

You will also need a Fortran 2018 and a C compiler. Then, execute the provided
`Makefile` to build the static Fortran interface libraries `libftcl86.a`,
`libftclstub86.a`, and `libftk86.a`:

```
$ make
```

By default, `gcc` and `gfortran` are used for compilation, but you can override
the settings:

```
$ make CC=icc FC=ifort
```

## Linking Tcl & Tk
Linking depends on whether Fortran is called from Tcl or Tcl from Fortran.  To
build a Fortran program in `example.f90` that invokes the Tcl interpreter, link
against `libftcl86.a -ltcl86`:

```
$ gfortran -I/usr/local/include/tcl8.6/ -L/usr/local/lib/tcl8.6/ \
  -o example example.f90 libftcl86.a -ltcl86
$ ./example
```

The include and library search paths as well as the name of the Tcl 8.6 library
itself may have to be changed depending on your operating system (`-ltcl8.6`
instead of `-ltcl86` on Linux). Tcl/Tk can either be linked statically
(`libtcl86.a`, `libtk86.a`) or dynamically (`-ltcl86`, `-ltk86`).

To create a shared library `libexample.so` with Tcl extensions written in
Fortran, link against `libftcl86.a libftclstub86.a -ltclstub86`:

```
$ gfortran -DUSE_TCL_STUBS -fPIC -shared -o libexample.so \
  -I/usr/local/include/tcl8.6/ -L/usr/local/lib/tcl8.6/ \
  example.f90 libftcl86.a libftclstub86.a -ltclstub86
```

To access the Tk toolkit from Fortran, link against `libftk86.a libftcl86.a
-ltk86 -ltcl86`:

```
$ gfortran -DUSE_TK_STUBS -I/usr/local/include/tcl8.6/ -I/usr/local/include/tk8.6/ \
  -L/usr/local/lib/tcl8.6/ -L/usr/local/lib/tk8.6/ \
  -o example example.f90 libftk86.a libftcl86.a -ltk86 -ltcl86
$ ./example
```

Again, the include and library search paths for Tcl 8.6 and Tk 8.6, as well as
the names of the libraries depend on the operating system and may differ (for
instance, `-ltk8.6 -ltcl8.6` on Linux).

## Examples
The following example programs are provided:

* **config** – Uses Tcl as a configuration file format (run `config`).
* **dict** – Shows dictionary access (run `dict`).
* **eval** – Evaluates a script in the Tcl interpreter (run `eval`).
* **fs** – Tests Tcl file system API procedures (run `fs`).
* **library** – Creates a Tcl extension `hello` inside a shared library (run `script.tcl`).
* **link** – Demonstrates shared access to a variable between Tcl and Fortran (run `link`).
* **namespace** – Creates a Tcl extension `::fortran::hello` (with namespace) inside a shared library (run `script.tcl`).
* **re2c** – Shows a Tk window to convert temperature values by calling an extension written in Fortran (run `re2c`).

To build the examples, run:

```
$ make examples
```

Change to the directory of an example before executing it.

## Licence
ISC
