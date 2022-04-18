! hello.f90
!
! Shared library that creates the Tcl extension `hello`. Simply load the library
! `libhello.so` from Tcl.
!
! Create the shared library libhello.so:
!
!   $ gfortran -shared -fPIC -DUSE_TCL_STUBS -o libhello.so \
!     -I/usr/local/include/tcl8.6/ -L/usr/local/lib/tcl8.6/ \
!     hello.f90 libftcl86.a libftclstub86.a -ltclstub86
!
! Load the shared library and call the extension:
!
!   $ tclsh8.6
!   % load ./libhello[ info sharedlibextension ]
!   % puts [hello]
!   Hello, from Fortran!
!
! On Linux/Unix, you can load the shared library also by running:
!
!   % load ./libhello.so
!
! Or, execute the provided Tcl script `script.tcl`:
!
!   $ tclsh8.3 ./script.tcl
!   Hello, from Fortran!
!
! Author:  Philipp Engel
! Licence: ISC
module hello
    use, intrinsic :: iso_c_binding
    use :: tcl
    use :: tcl_stub
    implicit none (type, external)
    private

    public :: hello_cmd
    public :: hello_init
contains
    function hello_cmd(client_data, interp, objc, objv) bind(c)
        !! The extension `hello` callable from Tcl.
        type(c_ptr),         intent(in), value :: client_data
        type(c_ptr),         intent(in), value :: interp
        integer(kind=c_int), intent(in), value :: objc
        type(c_ptr),         intent(in)        :: objv(*)
        integer(kind=c_int)                    :: hello_cmd
        type(c_ptr)                            :: obj_ptr

        hello_cmd = TCL_ERROR

        obj_ptr = tcl_new_string_obj('Hello, from Fortran!')
        call tcl_set_obj_result(interp, obj_ptr)

        hello_cmd = TCL_OK
    end function hello_cmd

    function hello_init(interp) bind(c, name='Hello_Init')
        !! Registers extension `hello`.
        type(c_ptr), intent(in), value :: interp
        integer(kind=c_int)            :: hello_init
        integer                        :: rc
        type(c_ptr)                    :: ptr

        hello_init = TCL_ERROR

        ! In C, a pre-processor flag is used to isolate the Tcl_InitStubs call,
        ! in case the extension is compiled without the Tcl Stubs mechanism.
        ! It is necessary to add a compiler flag to run the pre-processor, for
        ! instance, -cpp for GNU Fortran, or -fpp for Intel Fortran. Just
        ! uncomment the #ifdef:
        !
        ! #ifdef USE_TCL_STUBS
        ptr = tcl_init_stubs(interp, TCL_VERSION, 0)
        if (.not. c_associated(ptr)) return
        ! #endif

        ptr = tcl_create_obj_command(interp, 'hello', c_funloc(hello_cmd))

        rc = tcl_pkg_provide(interp, 'Hello', '1.0')
        if (rc == TCL_ERROR) return

        hello_init = TCL_OK
    end function hello_init
end module hello
