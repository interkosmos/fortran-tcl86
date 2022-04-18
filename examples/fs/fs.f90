! fs.f90
!
! Example program that tests the Tcl file system API.
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
    type(c_ptr)       :: obj, info, list, stat, vol
    type(c_ptr)       :: path1, path2, path3, path4
    type(tcl_time)    :: t

    ! Set name of executable.
    call get_command_argument(0, argv0)
    call tcl_find_executable(trim(argv0))

    ! Create Tcl interpreter.
    interp = tcl_create_interp()
    if (.not. c_associated(interp)) call fail('Tcl_CreateInterp')

    ! Print current time.
    call tcl_get_time(t)
    print '("Time: ", i0, ".", i0, " sec")', t%sec, t%usec

    ! Print host name and executable name.
    print '("Tcl_GetHostName: ", a)',         tcl_get_host_name()
    print '("Tcl_GetNameOfExecutable: ", a)', tcl_get_name_of_executable()

    ! Print interpreter status.
    print '("Tcl_InterpActive: ", l)',  tcl_interp_active(interp)
    print '("Tcl_InterpDeleted: ", l)', tcl_interp_deleted(interp)

    ! Print current working directory.
    obj = tcl_fs_get_cwd(interp)
    print '("Tcl_FSGetCwd: ", a)', tcl_get_string_from_obj(obj)

    ! Print volumes.
    vol = tcl_fs_list_volumes()
    print '("Tcl_FSListVolumes: ", a)', tcl_get_string_from_obj(vol)

    ! Create string objects.
    path1 = tcl_new_string_obj('test1')
    call tcl_incr_ref_count(path1)

    path2 = tcl_new_string_obj('test2')
    call tcl_incr_ref_count(path2)

    ! Create list of paths.
    list = tcl_new_list_obj(2, [ path1, path2 ])
    print '("Tcl_NewListObj: ", a)', tcl_get_string_from_obj(list)

    rc = tcl_list_obj_length(interp, list, n)
    print '("Tcl_ListObjLength: ", i0)', n

    ! Join paths.
    path3 = tcl_fs_join_path(list, 2)
    call tcl_incr_ref_count(path3)

    print '("Tcl_FSJoinPath: ", a)', tcl_get_string_from_obj(path3)

    ! Path to string.
    print '("Tcl_FSGetNativePath: ", a)', tcl_fs_get_native_path(path3)
    print '("Tcl_FSGetTranslatedStringPath: ", a)', tcl_fs_get_translated_string_path(interp, path3)

    ! Split joined path.
    path4 = tcl_fs_split_path(path3, n)
    print '("Tcl_FSSplitPath: ", a)', tcl_get_string_from_obj(path4)

    ! Convert objects to paths.
    if (tcl_fs_convert_to_path_type(interp, path1) /= TCL_OK) call fail('Tcl_FSConvertToPathType')
    if (tcl_fs_convert_to_path_type(interp, path2) /= TCL_OK) call fail('Tcl_FSConvertToPathType')

    ! Paths equal?
    print '("Tcl_FSEqualPaths: ", l)', tcl_fs_equal_paths(path1, path2)

    ! Create directory.
    if (tcl_fs_create_directory(path1) /= TCL_OK) call fail('Tcl_FSCreateDirectory')

    ! Copy directory.
    if (tcl_fs_copy_directory(path1, path2) /= TCL_OK) call fail('Tcl_FSCopyDirectory')

    ! Remove directories.
    if (tcl_fs_remove_directory(path1, recursive=.false.) /= TCL_OK) call fail('Tcl_FSRemoveDirectory')
    if (tcl_fs_remove_directory(path2, recursive=.true. ) /= TCL_OK) call fail('Tcl_FSRemoveDirectory')

    ! Create file.
    call touch(tcl_get_string_from_obj(path1), rc)
    if (rc /= 0) print '("Error: file creation failed")'

    ! Rename file.
    if (tcl_fs_rename_file(path1, path2) /= TCL_OK) call fail('Tcl_FSRenameFile')

    ! Copy file.
    if (tcl_fs_copy_file(path2, path1) /= TCL_OK) call fail('Tcl_FSCopyFile')

    ! Allocate state buffer (because of the platform-dependent type & size).
    stat = tcl_alloc_stat_buf()
    if (.not. c_associated(stat)) call fail('Tcl_AllocStatBuf')

    ! Print file system info.
    info = tcl_fs_file_system_info(path1)
    print '("Tcl_FSFileSystemInfo: ", a)', tcl_get_string_from_obj(info)

    ! Get file state.
    if (tcl_fs_stat(path1, stat) /= TCL_OK) call fail('Tcl_FSStat')
    print '("Tcl_GetAccessTimeFromStat: ", i0)',       tcl_get_access_time_from_stat(stat)
    print '("Tcl_GetModificationTimeFromStat: ", i0)', tcl_get_modification_time_from_stat(stat)
    print '("Tcl_GetChangeTimeFromStat: ", i0)',       tcl_get_change_time_from_stat(stat)
    print '("Tcl_GetDeviceTypeFromStat: ", i0)',       tcl_get_device_type_from_stat(stat)
    print '("Tcl_GetUserIdFromStat: ", i0)',           tcl_get_user_id_from_stat(stat)
    print '("Tcl_GetGroupIdFromStat: ", i0)',          tcl_get_group_id_from_stat(stat)
    print '("Tcl_GetModeFromStat: ", o0)',             tcl_get_mode_from_stat(stat) ! octal output
    print '("Tcl_GetSizeFromStat: ", i0)',             tcl_get_size_from_stat(stat)

    ! Delete files.
    if (tcl_fs_delete_file(path1) /= TCL_OK) call fail('Tcl_FSDeleteFile')
    if (tcl_fs_delete_file(path2) /= TCL_OK) call fail('Tcl_FSDeleteFile')

    call tcl_decr_ref_count(path3)
    call tcl_decr_ref_count(path2)
    call tcl_decr_ref_count(path1)

    ! Destroy Tcl interpreter and quit.
    call tcl_delete_interp(interp)
    call tcl_exit(0)
contains
    subroutine fail(proc_name)
        character(len=*), intent(in) :: proc_name
        integer                      :: errno

        errno = tcl_get_errno()

        if (errno /= 0) then
            print '("Error: ", a, " failed (", a, ")")', proc_name, tcl_errno_msg(errno)
            print '("POSIX: ", a)', tcl_posix_error(interp)
        else
            print '("Error: ", a, " failed")', proc_name
        end if

        call tcl_delete_interp(interp)
        call tcl_exit(0)
    end subroutine fail

    subroutine touch(file_name, stat)
        character(len=*), intent(in)            :: file_name
        integer,          intent(out), optional :: stat
        integer                                 :: file_unit, rc

        open (action='write', file=file_name, iostat=rc, newunit=file_unit)
        if (present(stat)) stat = rc
        close (file_unit)
    end subroutine touch
end program main
