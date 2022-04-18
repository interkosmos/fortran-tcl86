! tcl_stub.f90
!
! Outsourced wrapper procedures for Tcl Stubs, to avoid an unnecessary linking
! of library `libtclstub86`.
!
! Author:  Philipp Engel
! Licence: ISC
module tcl_stub
    use, intrinsic :: iso_c_binding
    use :: tcl
    implicit none (type, external)
    private

    public :: tcl_init_stubs
contains
    function tcl_init_stubs(interp, version, exact) result(ptr)
        type(c_ptr),      intent(in) :: interp
        character(len=*), intent(in) :: version
        integer,          intent(in) :: exact
        type(c_ptr)                  :: ptr

        ptr = tcl_init_stubs_(interp, version // c_null_char, exact)
    end function tcl_init_stubs
end module tcl_stub
