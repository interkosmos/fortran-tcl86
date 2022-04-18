! config.f90
!
! Example program that reads settings from a configuration file in Tcl.
!
! Author:  Philipp Engel
! Licence: ISC
program main
    use, intrinsic :: iso_c_binding
    use, intrinsic :: iso_fortran_env, r8 => real64
    implicit none (type, external)

    character(len=*), parameter :: CONFIG_FILE = 'config.conf'

    type :: config_type
        character(len=1024) :: path
        integer             :: flag
        real(kind=r8)       :: pi
    end type config_type

    integer           :: rc
    type(config_type) :: config

    call read_config(CONFIG_FILE, config, rc)
    if (rc /= 0) stop

    print '("==== Configuration ====")'
    print '("Path: ", a)',    trim(config%path)
    print '("Flag: ", i0)',   config%flag
    print '("Pi..: ", f8.6)', config%pi
contains
    subroutine read_config(file_name, config, stat)
        use :: tcl
        character(len=*),  intent(in)            :: file_name
        type(config_type), intent(inout)         :: config
        integer,           intent(out), optional :: stat

        integer     :: rc
        logical     :: file_exists
        type(c_ptr) :: interp

        ! Check if configuration file exists.
        inquire (exist=file_exists, file=file_name)

        if (.not. file_exists) then
            print '("Error: Configuration file ", a, " not found")', file_name
            if (present(stat)) stat = -1
            return
        end if

        ! Create Tcl interpreter.
        interp = tcl_create_interp()

        if (.not. c_associated(interp)) then
            print '("Error: Tcl_CreateInterp() failed")'
            if (present(stat)) stat = -2
            return
        end if

        ! Run the configuration file.
        rc = tcl_eval_file(interp, file_name)

        if (rc /= TCL_OK) then
            print '("Error: Tcl_EvalFile() failed")'
            if (present(stat)) stat = -3
            return
        end if

        ! Read variables. Type and error checking could be done here.
        config%path = tcl_get_var(interp, 'path')
        rc = tcl_get_double(interp, tcl_get_var(interp, 'pi') , config%pi)
        rc = tcl_get_int(interp, tcl_get_var(interp, 'flag'), config%flag)

        ! Destroy Tcl interpreter.
        call tcl_delete_interp(interp)

        if (present(stat)) stat = 0
    end subroutine read_config
end program main
