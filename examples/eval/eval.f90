! eval.f90
!
! Example program that evaluates a Tcl command and a Tcl script.
!
! Author:  Philipp Engel
! Licence: ISC
program main
    use, intrinsic :: iso_c_binding, only: c_associated, c_ptr
    use :: tcl
    implicit none (type, external)

    character(len=*), parameter :: SCRIPT_FILE = 'script.tcl'

    character(len=32) :: argv0
    integer           :: rc
    type(c_ptr)       :: interp
    type(c_ptr)       :: path

    ! Set name of executable.
    call get_command_argument(0, argv0)
    call tcl_find_executable(trim(argv0))

    ! Create Tcl interpreter.
    interp = tcl_create_interp()
    if (.not. c_associated(interp)) stop 'Error: Tcl_CreateInterp() failed'

    ! Evaluate string as Tcl command.
    rc = tcl_eval_ex(interp, 'puts "Hello, from Tcl!"')
    if (rc /= TCL_OK) print '("Error: Tcl_EvalEx failed")'

    ! Evaluate Tcl script from file.
    rc = tcl_eval_file(interp, SCRIPT_FILE)
    if (rc /= TCL_OK) print '("Error: Tcl_EvalFile failed")'

    ! Evaluate Tcl script using the file system API.
    path = tcl_new_string_obj(SCRIPT_FILE)
    call tcl_incr_ref_count(path)
    rc = tcl_fs_convert_to_path_type(interp, path)
    rc = tcl_fs_eval_file(interp, path)
    call tcl_decr_ref_count(path)

    ! Destroy Tcl interpreter and quit.
    call tcl_delete_interp(interp)
    call tcl_exit(0)
end program main
