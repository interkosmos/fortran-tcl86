! dict.f90
!
! Example program that demonstrates dictonary access.
!
! Author:  Philipp Engel
! Licence: ISC
program main
    use, intrinsic :: iso_c_binding, only: c_associated, c_ptr
    use :: tcl
    implicit none (type, external)

    character(len=32) :: argv0
    integer           :: n, rc
    type(c_ptr)       :: interp
    type(c_ptr)       :: dict, key, val

    ! Set name of executable.
    call get_command_argument(0, argv0)
    call tcl_find_executable(trim(argv0))

    ! Create Tcl interpreter.
    interp = tcl_create_interp()
    if (.not. c_associated(interp)) stop 'Error: Tcl_CreateInterp() failed'

    ! Create new dictonary.
    dict = tcl_new_dict_obj()

    key = tcl_new_string_obj('foo')
    val = tcl_new_string_obj('bar')

    call tcl_incr_ref_count(key)

    rc = tcl_dict_obj_put(interp, dict, key, val)
    rc = tcl_dict_obj_get(interp, dict, key, val)
    rc = tcl_dict_obj_size(interp, dict, n)

    print '("Size: ", i0)', n
    print '("Key: ", a, " Value: ", a)', tcl_get_string_from_obj(key), &
                                         tcl_get_string_from_obj(val)

    rc = tcl_dict_obj_remove(interp, dict, key)
    rc = tcl_dict_obj_get(interp, dict, key, val)
    rc = tcl_dict_obj_size(interp, dict, n)

    print '("Size: ", i0)', n
    print '("Key: ", a, " Value: ", a)', tcl_get_string_from_obj(key), &
                                         tcl_get_string_from_obj(val)

    call tcl_decr_ref_count(key)

    ! Destroy Tcl interpreter and quit.
    call tcl_delete_interp(interp)
    call tcl_exit(0)
end program main
