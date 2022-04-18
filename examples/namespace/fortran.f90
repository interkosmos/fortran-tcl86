! fortran.f90
!
! Shared library that creates the Tcl extension `hello` in namespace
! `fortran`. Simply load the library `libfortran.so` from Tcl.
!
! Create the shared library libfortran.so:
!
!   $ gfortran -shared -fPIC -DUSE_TCL_STUBS -o libfortran.so \
!     -I/usr/local/include/tcl8.6/ -L/usr/local/lib/tcl8.6/ \
!     fortran.f90 libftcl86.a libftclstub86.a -ltclstub86
!
! Load the shared library and call the extension:
!
!   $ tclsh8.6
!   % load libfortran[ info sharedlibextension ]
!   % puts [ ::fortran::hello ]
!   Hello, from Fortran!
!
! Or, execute the provided Tcl script `script.tcl`:
!
!   $ tclsh8.3 ./script.tcl
!   Hello, from Fortran!
!
! Author:  Philipp Engel
! Licence: ISC
module fortran
    use, intrinsic :: iso_c_binding
    use :: tcl
    use :: tcl_stub
    implicit none (type, external)
    private

    character(len=*), parameter :: NAMESPACE = 'fortran'

    public :: hello_cmd
    public :: fortran_init
contains
    function hello_cmd(client_data, interp, objc, objv) bind(c)
        !! The extension `::fortran::hello` callable from Tcl.
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

    function fortran_init(interp) bind(c, name='Fortran_Init')
        !! Registers extension `::fortran::hello`.
        type(c_ptr), intent(in), value :: interp
        integer(kind=c_int)            :: fortran_init
        integer                        :: rc
        type(c_ptr)                    :: ptr

        fortran_init = TCL_ERROR

        ! #ifdef USE_TCL_STUBS
        ptr = tcl_init_stubs(interp, TCL_VERSION, 0)
        if (.not. c_associated(ptr)) return
        ! #endif

        ptr = tcl_create_namespace(interp, NAMESPACE)
        if (.not. c_associated(ptr)) return

        ptr = tcl_create_obj_command(interp, NAMESPACE // '::hello', c_funloc(hello_cmd))

        rc = tcl_pkg_provide(interp, 'Fortran', '1.0')
        if (rc == TCL_ERROR) return

        fortran_init = TCL_OK
    end function fortran_init
end module fortran
