! link.f90
!
! Example program that links a Tcl variable with a Fortran variable.
!
! Author:  Philipp Engel
! Licence: ISC
program main
    use, intrinsic :: iso_c_binding
    use :: tcl
    implicit none (type, external)

    character(len=*), parameter :: SCRIPT_FILE = 'script.tcl'

    character(len=32) :: argv0
    integer           :: rc
    type(c_ptr)       :: interp

    ! Variable to link.
    integer(kind=c_long), target :: x

    ! Set name of executable.
    call get_command_argument(0, argv0)
    call tcl_find_executable(trim(argv0))

    ! Create Tcl interpreter.
    interp = tcl_create_interp()
    if (.not. c_associated(interp)) stop 'Error: Tcl_CreateInterp() failed'

    ! Evaluate Tcl script from file.
    rc = tcl_eval_file(interp, SCRIPT_FILE)
    if (rc /= TCL_OK) print '("Error: Tcl_EvalFile failed")'

    ! Create shared variable.
    print '("--- Tcl:")'
    rc = tcl_eval_ex(interp, 'puts $x')
    if (rc /= TCL_OK) print '("Error: Tcl_EvalEx failed")'

    x = 0
    rc = tcl_link_var(interp, 'x', c_loc(x), TCL_LINK_LONG)
    if (rc /= TCL_OK) print '("Error: Tcl_LinkVar failed")'

    print '("--- Fortran:", /, i0)', x
    print '("--- Tcl:")'
    rc = tcl_eval_ex(interp, 'puts $x; set x 420; puts $x')
    if (rc /= TCL_OK) print '("Error: Tcl_EvalEx failed")'
    print '("--- Fortran:", /, i0)', x

    ! Destroy Tcl interpreter and quit.
    call tcl_delete_interp(interp)
    call tcl_exit(0)
end program main
