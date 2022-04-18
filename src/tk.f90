! tk.f90
!
! Fortran 2018 interface bindings to Tk 8.6:
!
!   https://www.tcl.tk/man/tcl8.6/TkLib/contents.html
!
! Author:  Philipp Engel
! Licence: ISC
module tk
    use, intrinsic :: iso_c_binding
    use, intrinsic :: iso_fortran_env, only: i8 => int64, r8 => real64
    use :: tcl
    implicit none (type, external)
    private

    public :: tk_init
    public :: tk_main_loop

    interface
        ! int Tk_Init(TclInterp *interp)
        function tk_init(interp) bind(c, name='Tk_Init')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: interp
            integer(kind=c_int)            :: tk_init
        end function tk_init

        ! void Tk_MainLoop()
        subroutine tk_main_loop() bind(c, name='Tk_MainLoop')
        end subroutine tk_main_loop
    end interface
end module tk
