! re2c.f90
!
! Example program that shows a Tk window to convert temperature values from
! degrees Reaumur to degrees Celsius using a Tcl extension written in Fortran.
!
! Author:  Philipp Engel
! Licence: ISC
module tcl_ext
    use, intrinsic :: iso_c_binding
    use, intrinsic :: iso_fortran_env, only: r8 => real64
    use :: tcl
    implicit none (type, external)
    private

    public :: re2c
    public :: re2c_cmd
contains
    elemental function re2c(re) result(c)
        !! Converts temperature from degrees Reaumur to degrees Celsius.
        real(kind=r8), intent(in) :: re
        real(kind=r8)             :: c

        c = re * 5 / 4
    end function re2c

    function re2c_cmd(client_data, interp, objc, objv) bind(c)
        !! Provides the Tcl extension `re2c`.
        !!
        !! Converting a temperature value from Re to C in Tcl:
        !!
        !! ```
        !! % puts [re2c 30.0]
        !! 37.5
        !! ```
        type(c_ptr),         intent(in), value :: client_data
        type(c_ptr),         intent(in), value :: interp
        integer(kind=c_int), intent(in), value :: objc
        type(c_ptr),         intent(in)        :: objv(*)
        integer(kind=c_int)                    :: re2c_cmd
        integer                                :: rc
        real(kind=r8)                          :: re
        type(c_ptr)                            :: return_value

        re2c_cmd = TCL_ERROR

        ! Check if argument has been passed.
        if (objc < 2) then
            call tcl_wrong_num_args(interp, 1, objv, 're number')
            return
        end if

        ! Get passed temperature value in deg Re.
        rc = tcl_get_double_from_obj(interp, objv(2), re)
        if (rc /= TCL_OK) return

        ! Convert value and return temperature in deg C.
        return_value = tcl_new_double_obj(re2c(re))

        if (c_associated(return_value)) then
            call tcl_set_obj_result(interp, return_value)
        end if

        re2c_cmd = TCL_OK
    end function re2c_cmd
end module tcl_ext

program main
    use, intrinsic :: iso_c_binding
    use :: tcl
    use :: tcl_ext
    use :: tk
    implicit none (type, external)

    character(len=*), parameter :: SCRIPT_FILE = 'script.tcl'

    character(len=32) :: argv0
    integer           :: rc
    logical           :: file_exists
    type(c_ptr)       :: interp
    type(c_ptr)       :: ptr

    inquire (exist=file_exists, file=SCRIPT_FILE)
    if (.not. file_exists) stop 'Error: Tcl script not found'

    ! Set name of executable. Fills internal Tcl variable
    ! used by `info nameofexecutable`.
    call get_command_argument(0, argv0)
    call tcl_find_executable(trim(argv0))

    ! Create Tcl interpreter.
    interp = tcl_create_interp()

    if (.not. c_associated(interp)) then
        stop 'Error: Tcl_CreateInterp() failed'
    end if

    ! Initialise Tcl.
    if (tcl_init(interp) /= TCL_OK) then
        call tcl_delete_interp(interp)
        stop 'Error: Tcl_Init() failed'
    end if

    ! Initialise Tk.
    if (tk_init(interp) /= TCL_OK) then
        call tcl_delete_interp(interp)
        stop 'Error: Tk_Init() failed'
    end if

    ! Expose the Fortran function as command `re2c` to Tcl.
    ptr = tcl_create_obj_command(interp, 're2c', c_funloc(re2c_cmd))

    ! Run the Tcl/Tk script.
    rc = tcl_eval_file(interp, SCRIPT_FILE)

    ! Show the Tk window.
    call tk_main_loop()
    call tcl_exit(0)
end program main
