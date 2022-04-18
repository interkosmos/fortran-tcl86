.POSIX:

# ==============================================================================
# COMPILERS AND ARCHIVER
# ==============================================================================
CC = gcc
FC = gfortran
AR = ar

# ==============================================================================
# COMPILER, LINKER, AND ARCHIVER FLAGS
# ==============================================================================
CFLAGS  = -Wall
FFLAGS  = -Wall -Wno-unused-dummy-argument -std=f2018 -fmax-errors=1
ARFLAGS = rcs
LDFLAGS = -I/usr/local/include/tcl8.6/ -I/usr/local/include/tk8.6/ \
          -L/usr/local/lib/tcl8.6/ -L/usr/local/lib/tk8.6/

# ==============================================================================
# TCL AND TK LIBRARIES TO LINK
# ==============================================================================
LIBTCL86     = -ltcl86
LIBTCLSTUB86 = -ltclstub86
LIBTK86      = -ltk86

# ==============================================================================
# FORTRAN LIBRARIES
# ==============================================================================
LIBFTCL86     = libftcl86.a
LIBFTCLSTUB86 = libftclstub86.a
LIBFTK86      = libftk86.a

# ==============================================================================
# EXAMPLE PROGRAMS AND LIBRARIES
# ==============================================================================
CONFIG    = examples/config/config
DICT      = examples/dict/dict
EVAL      = examples/eval/eval
FS        = examples/fs/fs
LIBRARY   = examples/library/libhello.so
LINK      = examples/link/link
NAMESPACE = examples/namespace/libfortran.so
RE2C      = examples/re2c/re2c

.PHONY: all clean examples tcl tk

all:      $(LIBFTCL86) $(LIBFTCLSTUB86) $(LIBFTK86)
tcl:      $(LIBFTCL86) $(LIBFTCLSTUB86)
tk:       $(LIBFTCL86) $(LIBFTCLSTUB86) $(LIBFTK86)
examples: $(CONFIG) $(DICT) $(EVAL) $(FS) $(LIBRARY) $(LINK) $(NAMESPACE) $(RE2C)

# ==============================================================================
# INTERFACE LIBRARIES
# ==============================================================================
$(LIBFTCL86):
	$(FC) -fPIC $(CFLAGS) $(LDFLAGS) -c src/macro.c
	$(FC) -fPIC $(FFLAGS) -c src/tcl.f90
	$(AR) $(ARFLAGS) $(LIBFTCL86) macro.o tcl.o

$(LIBFTCLSTUB86):
	$(FC) -fPIC $(FFLAGS) -c src/tcl_stub.f90
	$(AR) $(ARFLAGS) $(LIBFTCLSTUB86) tcl_stub.o

$(LIBFTK86):
	$(FC) -fPIC $(FFLAGS) -c src/tk.f90
	$(AR) $(ARFLAGS) $(LIBFTK86) tk.o

# ==============================================================================
# EXAMPLES
# ==============================================================================
$(CONFIG): $(LIBFTCL86)
	$(FC) $(FFLAGS) $(LDFLAGS) -o $(CONFIG) examples/config/config.f90 $(LIBFTCL86) $(LIBTCL86)

$(DICT): $(LIBFTCL86)
	$(FC) $(FFLAGS) $(LDFLAGS) -o $(DICT) examples/dict/dict.f90 $(LIBFTCL86) $(LIBTCL86)

$(EVAL): $(LIBFTCL86)
	$(FC) $(FFLAGS) $(LDFLAGS) -o $(EVAL) examples/eval/eval.f90 $(LIBFTCL86) $(LIBTCL86)

$(FS): $(LIBFTCL86)
	$(FC) $(FFLAGS) $(LDFLAGS) -o $(FS) examples/fs/fs.f90 $(LIBFTCL86) $(LIBTCL86)

$(LIBRARY): $(LIBFTCL86) $(LIBFTCLSTUB86)
	$(FC) -DUSE_TCL_STUBS -shared -fPIC $(FFLAGS) $(LDFLAGS) -o $(LIBRARY) examples/library/hello.f90 $(LIBFTCL86) $(LIBFTCLSTUB86) $(LIBTCLSTUB86)

$(LINK): $(LIBFTCL86)
	$(FC) $(FFLAGS) $(LDFLAGS) -o $(LINK) examples/link/link.f90 $(LIBFTCL86) $(LIBTCL86)

$(NAMESPACE): $(LIBFTCL86) $(LIBFTCLSTUB86)
	$(FC) -DUSE_TCL_STUBS -shared -fPIC $(FFLAGS) $(LDFLAGS) -o $(NAMESPACE) examples/namespace/fortran.f90 $(LIBFTCL86) $(LIBFTCLSTUB86) $(LIBTCLSTUB86)

$(RE2C): $(LIBFTCL86) $(LIBFTK86)
	$(FC) -DUSE_TK_STUBS $(FFLAGS) $(LDFLAGS) -o $(RE2C) examples/re2c/re2c.f90 $(LIBFTCL86) $(LIBFTK86) $(LIBTCL86) $(LIBTK86)

# ==============================================================================
# CLEAN-UP
# ==============================================================================
clean:
	if [ `ls -1 *.mod 2>/dev/null | wc -l` -gt 0 ]; then rm *.mod; fi
	if [ `ls -1 *.o 2>/dev/null | wc -l` -gt 0 ]; then rm *.o; fi
	if [ -e $(LIBFTCL86) ]; then rm $(LIBFTCL86); fi
	if [ -e $(LIBFTCLSTUB86) ]; then rm $(LIBFTCLSTUB86); fi
	if [ -e $(LIBFTK86) ]; then rm $(LIBFTK86); fi
	if [ -e $(CONFIG) ]; then rm $(CONFIG); fi
	if [ -e $(DICT) ]; then rm $(DICT); fi
	if [ -e $(EVAL) ]; then rm $(EVAL); fi
	if [ -e $(FS) ]; then rm $(FS); fi
	if [ -e $(LIBRARY) ]; then rm $(LIBRARY); fi
	if [ -e $(LINK) ]; then rm $(LINK); fi
	if [ -e $(NAMESPACE) ]; then rm $(NAMESPACE); fi
	if [ -e $(RE2C) ]; then rm $(RE2C); fi
