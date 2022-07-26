! tcl.f90
!
! Fortran 2018 interface bindings to Tcl 8.6:
!
!   https://www.tcl.tk/man/tcl8.6/TclLib/contents.html
!
! Author:  Philipp Engel
! Licence: ISC
module tcl
    use, intrinsic :: iso_c_binding
    use, intrinsic :: iso_fortran_env, only: i8 => int64, r8 => real64
    implicit none (type, external)
    private

    public :: tcl_alloc_stat_buf
    public :: tcl_append_element
    public :: tcl_append_element_
    public :: tcl_append_result
    public :: tcl_append_result_
    public :: tcl_append_to_obj
    public :: tcl_append_to_obj_
    public :: tcl_chdir
    public :: tcl_chdir_
    public :: tcl_concat_obj
    public :: tcl_convert_counted_element
    public :: tcl_convert_counted_element_
    public :: tcl_convert_element
    public :: tcl_convert_element_
    public :: tcl_create_child
    public :: tcl_create_interp
    public :: tcl_create_namespace
    public :: tcl_create_namespace_
    public :: tcl_create_obj_command
    public :: tcl_create_obj_command_
    public :: tcl_create_slave
    public :: tcl_create_slave_
    public :: tcl_decr_ref_count
    public :: tcl_delete_command
    public :: tcl_delete_command_
    public :: tcl_delete_interp
    public :: tcl_delete_namespace
    public :: tcl_dict_obj_done
    public :: tcl_dict_obj_first
    public :: tcl_dict_obj_first_
    public :: tcl_dict_obj_get
    public :: tcl_dict_obj_next
    public :: tcl_dict_obj_next_
    public :: tcl_dict_obj_put
    public :: tcl_dict_obj_put_key_list
    public :: tcl_dict_obj_remove
    public :: tcl_dict_obj_remove_key_list
    public :: tcl_dict_obj_size
    public :: tcl_duplicate_obj
    public :: tcl_errno_msg
    public :: tcl_errno_msg_
    public :: tcl_eval
    public :: tcl_eval_
    public :: tcl_eval_ex
    public :: tcl_eval_ex_
    public :: tcl_eval_file
    public :: tcl_eval_file_
    public :: tcl_eval_obj_ex
    public :: tcl_exit
    public :: tcl_expose_command
    public :: tcl_expose_command_
    public :: tcl_expr_boolean
    public :: tcl_expr_boolean_
    public :: tcl_expr_boolean_obj
    public :: tcl_expr_boolean_obj_
    public :: tcl_expr_double
    public :: tcl_expr_double_
    public :: tcl_expr_double_obj
    public :: tcl_expr_long
    public :: tcl_expr_long_
    public :: tcl_expr_long_obj
    public :: tcl_expr_obj
    public :: tcl_expr_string
    public :: tcl_expr_string_
    public :: tcl_find_executable
    public :: tcl_find_executable_
    public :: tcl_fs_access
    public :: tcl_fs_chdir
    public :: tcl_fs_convert_to_path_type
    public :: tcl_fs_copy_directory
    public :: tcl_fs_copy_directory_
    public :: tcl_fs_copy_file
    public :: tcl_fs_create_directory
    public :: tcl_fs_data
    public :: tcl_fs_delete_file
    public :: tcl_fs_equal_paths
    public :: tcl_fs_equal_paths_
    public :: tcl_fs_eval_file
    public :: tcl_fs_eval_file_ex
    public :: tcl_fs_eval_file_ex_
    public :: tcl_fs_file_attr_strings
    public :: tcl_fs_file_attrs_get
    public :: tcl_fs_file_attrs_set
    public :: tcl_fs_file_system_info
    public :: tcl_fs_get_cwd
    public :: tcl_fs_get_file_system_for_path
    public :: tcl_fs_get_internal_rep
    public :: tcl_fs_get_native_path
    public :: tcl_fs_get_native_path_
    public :: tcl_fs_get_normalized_path
    public :: tcl_fs_get_path_type
    public :: tcl_fs_get_translated_path
    public :: tcl_fs_get_translated_string_path
    public :: tcl_fs_get_translated_string_path_
    public :: tcl_fs_join_path
    public :: tcl_fs_join_to_path
    public :: tcl_fs_link
    public :: tcl_fs_list_volumes
    public :: tcl_fs_load_file
    public :: tcl_fs_load_file_
    public :: tcl_fs_lstat
    public :: tcl_fs_match_in_directory
    public :: tcl_fs_match_in_directory_
    public :: tcl_fs_new_native_path
    public :: tcl_fs_open_file_channel
    public :: tcl_fs_open_file_channel_
    public :: tcl_fs_path_separator
    public :: tcl_fs_register
    public :: tcl_fs_remove_directory
    public :: tcl_fs_remove_directory_
    public :: tcl_fs_rename_file
    public :: tcl_fs_split_path
    public :: tcl_fs_stat
    public :: tcl_fs_unload_file
    public :: tcl_fs_unregister
    public :: tcl_fs_utime
    public :: tcl_get_access_time_from_stat
    public :: tcl_get_byte_array_from_obj
    public :: tcl_get_block_size_from_stat
    public :: tcl_get_blocks_from_stat
    public :: tcl_get_boolean
    public :: tcl_get_boolean_
    public :: tcl_get_boolean_from_obj
    public :: tcl_get_boolean_from_obj_
    public :: tcl_get_change_time_from_stat
    public :: tcl_get_command_full_name
    public :: tcl_get_command_name
    public :: tcl_get_command_name_
    public :: tcl_get_device_type_from_stat
    public :: tcl_get_double
    public :: tcl_get_double_
    public :: tcl_get_double_from_obj
    public :: tcl_get_errno
    public :: tcl_get_error_line
    public :: tcl_get_fs_device_from_stat
    public :: tcl_get_fs_inode_from_stat
    public :: tcl_get_group_id_from_stat
    public :: tcl_get_host_name
    public :: tcl_get_host_name_
    public :: tcl_get_int
    public :: tcl_get_int_
    public :: tcl_get_int_from_obj
    public :: tcl_get_link_count_from_stat
    public :: tcl_get_long_from_obj
    public :: tcl_get_master
    public :: tcl_get_mode_from_stat
    public :: tcl_get_modification_time_from_stat
    public :: tcl_get_name_of_executable
    public :: tcl_get_name_of_executable_
    public :: tcl_get_obj_result
    public :: tcl_get_obj_type
    public :: tcl_get_obj_type_
    public :: tcl_get_path_type
    public :: tcl_get_path_type_
    public :: tcl_get_size_from_stat
    public :: tcl_get_string
    public :: tcl_get_string_
    public :: tcl_get_string_from_obj
    public :: tcl_get_string_from_obj_
    public :: tcl_get_string_result
    public :: tcl_get_string_result_
    public :: tcl_get_time
    public :: tcl_get_user_id_from_stat
    public :: tcl_get_var
    public :: tcl_get_var_
    public :: tcl_get_var2
    public :: tcl_get_var2_
    public :: tcl_get_version
    public :: tcl_hide_command
    public :: tcl_hide_command_
    public :: tcl_incr_ref_count
    public :: tcl_init
    public :: tcl_init_stubs_
    public :: tcl_interp_active
    public :: tcl_interp_active_
    public :: tcl_interp_deleted
    public :: tcl_interp_deleted_
    public :: tcl_is_safe
    public :: tcl_is_safe_
    public :: tcl_is_shared
    public :: tcl_is_shared_
    public :: tcl_link_var
    public :: tcl_link_var_
    public :: tcl_list_obj_append_element
    public :: tcl_list_obj_append_list
    public :: tcl_list_obj_get_elements
    public :: tcl_list_obj_index
    public :: tcl_list_obj_length
    public :: tcl_list_obj_replace
    public :: tcl_make_safe
    public :: tcl_new_byte_array_obj
    public :: tcl_new_dict_obj
    public :: tcl_new_double_obj
    public :: tcl_new_int_obj
    public :: tcl_new_list_obj
    public :: tcl_new_long_obj
    public :: tcl_new_obj
    public :: tcl_new_string_obj
    public :: tcl_new_string_obj_
    public :: tcl_new_wide_int_obj
    public :: tcl_pkg_provide
    public :: tcl_pkg_provide_
    public :: tcl_posix_error
    public :: tcl_posix_error_
    public :: tcl_preserve
    public :: tcl_release
    public :: tcl_scan_counted_element
    public :: tcl_scan_element
    public :: tcl_scan_element_
    public :: tcl_set_byte_array_obj
    public :: tcl_set_byte_array_length
    public :: tcl_set_boolean_obj
    public :: tcl_set_boolean_obj_
    public :: tcl_set_double_obj
    public :: tcl_set_int_obj
    public :: tcl_set_list_obj
    public :: tcl_set_long_obj
    public :: tcl_set_obj_result
    public :: tcl_set_string_obj
    public :: tcl_set_var
    public :: tcl_set_var_
    public :: tcl_set_var2
    public :: tcl_set_var2_
    public :: tcl_set_var2_ex
    public :: tcl_set_var2_ex_
    public :: tcl_sleep
    public :: tcl_string_case_match
    public :: tcl_string_case_match_
    public :: tcl_string_match
    public :: tcl_string_match_
    public :: tcl_unlink_var
    public :: tcl_unlink_var_
    public :: tcl_unset_var
    public :: tcl_unset_var_
    public :: tcl_unset_var2
    public :: tcl_unset_var2_
    public :: tcl_update_linked_var
    public :: tcl_update_linked_var_
    public :: tcl_up_var
    public :: tcl_up_var_
    public :: tcl_up_var2
    public :: tcl_up_var2_
    public :: tcl_wrong_num_args
    public :: tcl_wrong_num_args_
    public :: tcl_zlib_adler32
    public :: tcl_zlib_crc32
    public :: tcl_zlib_deflate
    public :: tcl_zlib_inflate
    public :: tcl_zlib_stream_get
    public :: tcl_zlib_stream_init

    private :: copy
    private :: c_f_str_ptr

    integer, parameter :: c_unsigned_int = c_int
    integer, parameter :: tcl_wide_int   = c_int64_t
    integer, parameter :: tcl_wide_uint  = c_int64_t

    character(len=*), parameter, public :: TCL_VERSION = '8.6'

    integer(kind=c_int), parameter, public :: TCL_ALPHA_RELEASE = 0
    integer(kind=c_int), parameter, public :: TCL_BETA_RELEASE  = 1
    integer(kind=c_int), parameter, public :: TCL_FINAL_RELEASE = 2

    integer(kind=c_int), parameter, public :: TCL_OK       = 0
    integer(kind=c_int), parameter, public :: TCL_ERROR    = 1
    integer(kind=c_int), parameter, public :: TCL_RETURN   = 2
    integer(kind=c_int), parameter, public :: TCL_BREAK    = 3
    integer(kind=c_int), parameter, public :: TCL_CONTINUE = 4

    integer(kind=c_int), parameter, public :: TCL_PATH_ABSOLUTE        = 0
    integer(kind=c_int), parameter, public :: TCL_PATH_RELATIVE        = 1
    integer(kind=c_int), parameter, public :: TCL_PATH_VOLUME_RELATIVE = 2

    integer(kind=c_int), parameter, public :: TCL_REG_BASIC    = int(o'00000') ! BREs (convenience).
    integer(kind=c_int), parameter, public :: TCL_REG_EXTENDED = int(o'00001') ! EREs.
    integer(kind=c_int), parameter, public :: TCL_REG_ADVF     = int(o'00002') ! Advanced features in EREs.
    integer(kind=c_int), parameter, public :: TCL_REG_ADVANCED = int(o'00003') ! AREs (which are also EREs).
    integer(kind=c_int), parameter, public :: TCL_REG_QUOTE    = int(o'00004') ! No special characters, none.
    integer(kind=c_int), parameter, public :: TCL_REG_NOCASE   = int(o'00010') ! Ignore case.
    integer(kind=c_int), parameter, public :: TCL_REG_NOSUB    = int(o'00020') ! Don't care about subexpressions.
    integer(kind=c_int), parameter, public :: TCL_REG_EXPANDED = int(o'00040') ! Expanded format, white space & comments.
    integer(kind=c_int), parameter, public :: TCL_REG_NLSTOP   = int(o'00100') ! \n doesn't match . or [^ ].
    integer(kind=c_int), parameter, public :: TCL_REG_NLANCH   = int(o'00200') ! ^ matches after \n, $ before.
    integer(kind=c_int), parameter, public :: TCL_REG_NEWLINE  = int(o'00300') ! Newlines are line terminators.
    integer(kind=c_int), parameter, public :: TCL_REG_CANMATCH = int(o'01000') ! Report details on partial/limited.

    integer(kind=c_int), parameter, public :: TCL_REG_NOTBOL = int(o'01') ! Beginning of string does not match ^.
    integer(kind=c_int), parameter, public :: TCL_REG_NOTEOL = int(o'02') ! End of string does not match $.

    integer(kind=c_int), parameter, public :: TCL_SUBST_COMMANDS    = int(o'01')
    integer(kind=c_int), parameter, public :: TCL_SUBST_VARIABLES   = int(o'02')
    integer(kind=c_int), parameter, public :: TCL_SUBST_BACKSLASHES = int(o'04')
    integer(kind=c_int), parameter, public :: TCL_SUBST_ALL         = int(o'07')

    integer(kind=c_int), parameter, public :: TCL_DONT_USE_BRACES = 1
    integer(kind=c_int), parameter, public :: TCL_DONT_QUOTE_HASH = 8

    integer(kind=c_int), parameter, public :: TCL_EXACT = 1

    integer(kind=c_int), parameter, public :: TCL_NO_EVAL       = int(z'010000')
    integer(kind=c_int), parameter, public :: TCL_EVAL_GLOBAL   = int(z'020000')
    integer(kind=c_int), parameter, public :: TCL_EVAL_DIRECT   = int(z'040000')
    integer(kind=c_int), parameter, public :: TCL_EVAL_INVOKE   = int(z'080000')
    integer(kind=c_int), parameter, public :: TCL_CANCEL_UNWIND = int(z'100000')
    integer(kind=c_int), parameter, public :: TCL_EVAL_NOERR    = int(z'200000')

    integer(kind=c_int), parameter, public :: TCL_GLOBAL_ONLY      = 1
    integer(kind=c_int), parameter, public :: TCL_NAMESPACE_ONLY   = 2
    integer(kind=c_int), parameter, public :: TCL_APPEND_VALUE     = 4
    integer(kind=c_int), parameter, public :: TCL_LIST_ELEMENT     = 8
    integer(kind=c_int), parameter, public :: TCL_TRACE_READS      = int(z'10')
    integer(kind=c_int), parameter, public :: TCL_TRACE_WRITES     = int(z'20')
    integer(kind=c_int), parameter, public :: TCL_TRACE_UNSETS     = int(z'40')
    integer(kind=c_int), parameter, public :: TCL_TRACE_DESTROYED  = int(z'80')
    integer(kind=c_int), parameter, public :: TCL_INTERP_DESTROYED = int(z'100')
    integer(kind=c_int), parameter, public :: TCL_LEAVE_ERR_MSG    = int(z'200')
    integer(kind=c_int), parameter, public :: TCL_TRACE_ARRAY      = int(z'800')

    integer(kind=c_int), parameter, public :: TCL_TRACE_OLD_STYLE = int(z'1000')

    integer(kind=c_int), parameter, public :: TCL_TRACE_RESULT_DYNAMIC = int(z'8000')
    integer(kind=c_int), parameter, public :: TCL_TRACE_RESULT_OBJECT  = int(z'10000')

    integer(kind=c_int), parameter, public :: TCL_ENSEMBLE_PREFIX = int(z'02')

    integer(kind=c_int), parameter, public :: TCL_TRACE_RENAME = int(z'2000')
    integer(kind=c_int), parameter, public :: TCL_TRACE_DELETE = int(z'4000')

    integer(kind=c_int), parameter, public :: TCL_ALLOW_INLINE_COMPILATION = int(z'20000')

    integer(kind=c_int), parameter, public :: TCL_LINK_INT       = 1
    integer(kind=c_int), parameter, public :: TCL_LINK_DOUBLE    = 2
    integer(kind=c_int), parameter, public :: TCL_LINK_BOOLEAN   = 3
    integer(kind=c_int), parameter, public :: TCL_LINK_STRING    = 4
    integer(kind=c_int), parameter, public :: TCL_LINK_WIDE_INT  = 5
    integer(kind=c_int), parameter, public :: TCL_LINK_CHAR      = 6
    integer(kind=c_int), parameter, public :: TCL_LINK_UCHAR     = 7
    integer(kind=c_int), parameter, public :: TCL_LINK_SHORT     = 8
    integer(kind=c_int), parameter, public :: TCL_LINK_USHORT    = 9
    integer(kind=c_int), parameter, public :: TCL_LINK_UINT      = 10
    integer(kind=c_int), parameter, public :: TCL_LINK_LONG      = 11
    integer(kind=c_int), parameter, public :: TCL_LINK_ULONG     = 12
    integer(kind=c_int), parameter, public :: TCL_LINK_FLOAT     = 13
    integer(kind=c_int), parameter, public :: TCL_LINK_WIDE_UINT = 14
    integer(kind=c_int), parameter, public :: TCL_LINK_READ_ONLY = int(z'80')

    integer(kind=c_int), parameter, public :: TCL_HASH_KEY_RANDOMIZE_HASH = int(z'1')
    integer(kind=c_int), parameter, public :: TCL_HASH_KEY_SYSTEM_HASH    = int(z'2')

    integer(kind=c_int), parameter, public :: TCL_STRING_KEYS      = 0
    integer(kind=c_int), parameter, public :: TCL_ONE_WORD_KEYS    = 1
    integer(kind=c_int), parameter, public :: TCL_CUSTOM_TYPE_KEYS = -2
    integer(kind=c_int), parameter, public :: TCL_CUSTOM_PTR_KEYS  = -1

    integer(kind=c_int), parameter, public :: TCL_DONT_WAIT     = shiftl(1, 1)
    integer(kind=c_int), parameter, public :: TCL_WINDOW_EVENTS = shiftl(1, 2)
    integer(kind=c_int), parameter, public :: TCL_FILE_EVENTS   = shiftl(1, 3)
    integer(kind=c_int), parameter, public :: TCL_TIMER_EVENTS  = shiftl(1, 4)
    integer(kind=c_int), parameter, public :: TCL_IDLE_EVENTS   = shiftl(1, 5)
    integer(kind=c_int), parameter, public :: TCL_ALL_EVENTS    = not(TCL_DONT_WAIT)

    integer(kind=c_int), parameter, public :: TCL_SERVICE_NONE = 0
    integer(kind=c_int), parameter, public :: TCL_SERVICE_ALL  = 1

    integer(kind=c_int), parameter, public :: TCL_READABLE  = shiftl(1, 1)
    integer(kind=c_int), parameter, public :: TCL_WRITABLE  = shiftl(1, 2)
    integer(kind=c_int), parameter, public :: TCL_EXCEPTION = shiftl(1, 3)

    integer(kind=c_int), parameter, public :: TCL_STDIN        = shiftl(1, 1)
    integer(kind=c_int), parameter, public :: TCL_STDOUT       = shiftl(1, 2)
    integer(kind=c_int), parameter, public :: TCL_STDERR       = shiftl(1, 3)
    integer(kind=c_int), parameter, public :: TCL_ENFORCE_MODE = shiftl(1, 4)

    integer(kind=c_int), parameter, public :: TCL_CLOSE_READ  = shiftl(1, 1)
    integer(kind=c_int), parameter, public :: TCL_CLOSE_WRITE = shiftl(1, 2)

    integer(kind=c_int), parameter, public :: TCL_CHANNEL_VERSION_1 = int(z'1')
    integer(kind=c_int), parameter, public :: TCL_CHANNEL_VERSION_2 = int(z'2')
    integer(kind=c_int), parameter, public :: TCL_CHANNEL_VERSION_3 = int(z'3')
    integer(kind=c_int), parameter, public :: TCL_CHANNEL_VERSION_4 = int(z'4')
    integer(kind=c_int), parameter, public :: TCL_CHANNEL_VERSION_5 = int(z'5')

    integer(kind=c_int), parameter, public :: TCL_CHANNEL_THREAD_INSERT = 0
    integer(kind=c_int), parameter, public :: TCL_CHANNEL_THREAD_REMOVE = 1

    integer(kind=c_int), parameter, public :: TCL_MODE_BLOCKING    = 0 ! Put channel into blocking mode.
    integer(kind=c_int), parameter, public :: TCL_MODE_NONBLOCKING = 1 ! Put channel into nonblocking mode.

    integer(kind=c_int), parameter, public :: TCL_GLOB_TYPE_BLOCK = shiftl(1, 0)
    integer(kind=c_int), parameter, public :: TCL_GLOB_TYPE_CHAR  = shiftl(1, 1)
    integer(kind=c_int), parameter, public :: TCL_GLOB_TYPE_DIR   = shiftl(1, 2)
    integer(kind=c_int), parameter, public :: TCL_GLOB_TYPE_PIPE  = shiftl(1, 3)
    integer(kind=c_int), parameter, public :: TCL_GLOB_TYPE_FILE  = shiftl(1, 4)
    integer(kind=c_int), parameter, public :: TCL_GLOB_TYPE_LINK  = shiftl(1, 5)
    integer(kind=c_int), parameter, public :: TCL_GLOB_TYPE_SOCK  = shiftl(1, 6)
    integer(kind=c_int), parameter, public :: TCL_GLOB_TYPE_MOUNT = shiftl(1, 7)

    integer(kind=c_int), parameter, public :: TCL_GLOB_PERM_RONLY  = shiftl(1, 0)
    integer(kind=c_int), parameter, public :: TCL_GLOB_PERM_HIDDEN = shiftl(1, 1)
    integer(kind=c_int), parameter, public :: TCL_GLOB_PERM_R      = shiftl(1, 2)
    integer(kind=c_int), parameter, public :: TCL_GLOB_PERM_W      = shiftl(1, 3)
    integer(kind=c_int), parameter, public :: TCL_GLOB_PERM_X      = shiftl(1, 4)

    integer(kind=c_int), parameter, public :: TCL_UNLOAD_DETACH_FROM_INTERPRETER = shiftl(1, 0)
    integer(kind=c_int), parameter, public :: TCL_UNLOAD_DETACH_FROM_PROCESS     = shiftl(1, 1)

    integer(kind=c_int), parameter, public :: TCL_CREATE_SYMBOLIC_LINK = int(z'01')
    integer(kind=c_int), parameter, public :: TCL_CREATE_HARD_LINK     = int(z'02')

    integer(kind=c_int), parameter, public :: TCL_TOKEN_WORD        = 1
    integer(kind=c_int), parameter, public :: TCL_TOKEN_SIMPLE_WORD = 2
    integer(kind=c_int), parameter, public :: TCL_TOKEN_TEXT        = 4
    integer(kind=c_int), parameter, public :: TCL_TOKEN_BS          = 8
    integer(kind=c_int), parameter, public :: TCL_TOKEN_COMMAND     = 16
    integer(kind=c_int), parameter, public :: TCL_TOKEN_VARIABLE    = 32
    integer(kind=c_int), parameter, public :: TCL_TOKEN_SUB_EXPR    = 64
    integer(kind=c_int), parameter, public :: TCL_TOKEN_OPERATOR    = 128
    integer(kind=c_int), parameter, public :: TCL_TOKEN_EXPAND_WORD = 256

    integer(kind=c_int), parameter, public :: TCL_PARSE_SUCCESS           = 0
    integer(kind=c_int), parameter, public :: TCL_PARSE_QUOTE_EXTRA       = 1
    integer(kind=c_int), parameter, public :: TCL_PARSE_BRACE_EXTRA       = 2
    integer(kind=c_int), parameter, public :: TCL_PARSE_MISSING_BRACE     = 3
    integer(kind=c_int), parameter, public :: TCL_PARSE_MISSING_BRACKET   = 4
    integer(kind=c_int), parameter, public :: TCL_PARSE_MISSING_PAREN     = 5
    integer(kind=c_int), parameter, public :: TCL_PARSE_MISSING_QUOTE     = 6
    integer(kind=c_int), parameter, public :: TCL_PARSE_MISSING_VAR_BRACE = 7
    integer(kind=c_int), parameter, public :: TCL_PARSE_SYNTAX            = 8
    integer(kind=c_int), parameter, public :: TCL_PARSE_BAD_NUMBER        = 9

    integer(kind=c_int), parameter, public :: TCL_ENCODING_START        = int(z'01')
    integer(kind=c_int), parameter, public :: TCL_ENCODING_END          = int(z'02')
    integer(kind=c_int), parameter, public :: TCL_ENCODING_STOPONERROR  = int(z'04')
    integer(kind=c_int), parameter, public :: TCL_ENCODING_NO_TERMINATE = int(z'08')
    integer(kind=c_int), parameter, public :: TCL_ENCODING_CHAR_LIMIT   = int(z'10')

    integer(kind=c_int), parameter, public :: TCL_CONVERT_MULTIBYTE = -1
    integer(kind=c_int), parameter, public :: TCL_CONVERT_SYNTAX    = -2
    integer(kind=c_int), parameter, public :: TCL_CONVERT_UNKNOWN   = -3
    integer(kind=c_int), parameter, public :: TCL_CONVERT_NOSPACE   = -4

    integer(kind=c_int), parameter, public :: TCL_LIMIT_COMMANDS = int(z'01')
    integer(kind=c_int), parameter, public :: TCL_LIMIT_TIME     = int(z'02')

    integer(kind=c_int), parameter, public :: TCL_ARGV_CONSTANT = 15
    integer(kind=c_int), parameter, public :: TCL_ARGV_INT      = 16
    integer(kind=c_int), parameter, public :: TCL_ARGV_STRING   = 17
    integer(kind=c_int), parameter, public :: TCL_ARGV_REST     = 18
    integer(kind=c_int), parameter, public :: TCL_ARGV_FLOAT    = 19
    integer(kind=c_int), parameter, public :: TCL_ARGV_FUNC     = 20
    integer(kind=c_int), parameter, public :: TCL_ARGV_GENFUNC  = 21
    integer(kind=c_int), parameter, public :: TCL_ARGV_HELP     = 22
    integer(kind=c_int), parameter, public :: TCL_ARGV_END      = 23

    integer(kind=c_int), parameter, public :: TCL_ZLIB_FORMAT_RAW  = 1
    integer(kind=c_int), parameter, public :: TCL_ZLIB_FORMAT_ZLIB = 2
    integer(kind=c_int), parameter, public :: TCL_ZLIB_FORMAT_GZIP = 4
    integer(kind=c_int), parameter, public :: TCL_ZLIB_FORMAT_AUTO = 8

    integer(kind=c_int), parameter, public :: TCL_ZLIB_STREAM_DEFLATE = 16
    integer(kind=c_int), parameter, public :: TCL_ZLIB_STREAM_INFLATE = 3

    integer(kind=c_int), parameter, public :: TCL_ZLIB_COMPRESS_NONE    = 0
    integer(kind=c_int), parameter, public :: TCL_ZLIB_COMPRESS_FAST    = 1
    integer(kind=c_int), parameter, public :: TCL_ZLIB_COMPRESS_BEST    = 9
    integer(kind=c_int), parameter, public :: TCL_ZLIB_COMPRESS_DEFAULT = -1

    integer(kind=c_int), parameter, public :: TCL_ZLIB_NO_FLUSH  = 0
    integer(kind=c_int), parameter, public :: TCL_ZLIB_FLUSH     = 2
    integer(kind=c_int), parameter, public :: TCL_ZLIB_FULLFLUSH = 3
    integer(kind=c_int), parameter, public :: TCL_ZLIB_FINALIZE  = 4

    integer(kind=c_int), parameter, public :: TCL_LOAD_GLOBAL = 1
    integer(kind=c_int), parameter, public :: TCL_LOAD_LAZY   = 2

    ! Tcl_DictSearch
    type, bind(c), public :: tcl_dict_search
        type(c_ptr)         :: next             ! Search position for underlying hash table.
        integer(kind=c_int) :: epoch            ! Epoch marker for dictionary being searched, or -1 if search has terminated.
        type(c_ptr)         :: dictionary_ptr   ! Reference to dictionary being searched.
    end type tcl_dict_search

    integer(kind=c_int), parameter, public :: TCL_DSTRING_STATIC_SIZE = 200

    ! Tcl_DString
    type, bind(c), public :: tcl_dstring
        type(c_ptr)            :: string
        integer(kind=c_int)    :: length
        integer(kind=c_int)    :: space_avl
        character(kind=c_char) :: static_space(TCL_DSTRING_STATIC_SIZE)
    end type tcl_dstring

    integer(kind=c_int), parameter, public :: TCL_SMALL_HASH_TABLE = 4

    ! Tcl_HashTable
    type, bind(c), public :: tcl_hash_table
        type(c_ptr)         :: buckets
        type(c_ptr)         :: static_buckets(TCL_SMALL_HASH_TABLE)
        integer(kind=c_int) :: num_buckets
        integer(kind=c_int) :: num_entries
        integer(kind=c_int) :: rebuild_size
        integer(kind=c_int) :: down_shift
        integer(kind=c_int) :: mask
        integer(kind=c_int) :: key_type
        type(c_funptr)      :: find_proc
        type(c_funptr)      :: create_proc
        type(c_ptr)         :: type_ptr
    end type tcl_hash_table

    ! Tcl_GlobTypeData
    type, bind(c), public :: tcl_glob_type_data
        integer(kind=c_int) :: type        ! Corresponds to bcdpfls as in 'find -t'.
        integer(kind=c_int) :: perm        ! Corresponds to file permissions.
        type(c_ptr)         :: mac_type    ! Acceptable Mac type.
        type(c_ptr)         :: mac_creator ! Acceptable Mac creator.
    end type tcl_glob_type_data

    ! Tcl_Interp
    type, bind(c), public :: tcl_interp
        type(c_ptr)         :: result
        type(c_funptr)      :: free_proc
        integer(kind=c_int) :: error_line
    end type tcl_interp

    ! Tcl_Time
    type, bind(c), public :: tcl_time
        integer(kind=c_long) :: sec
        integer(kind=c_long) :: usec
    end type tcl_time

    interface
        ! **********************************************************************
        ! FUNCTION INTERFACES
        ! **********************************************************************
        ! Tcl_StatBuf *Tcl_AllocStatBuf()
        function tcl_alloc_stat_buf() bind(c, name='Tcl_AllocStatBuf')
            import :: c_ptr
            implicit none
            type(c_ptr) :: tcl_alloc_stat_buf
        end function tcl_alloc_stat_buf

        ! int Tcl_Chdir(const char *dirName)
        function tcl_chdir_(dir_name) bind(c, name='Tcl_Chdir')
            import :: c_char, c_int
            implicit none
            character(kind=c_char), intent(in) :: dir_name
            integer(kind=c_int)                :: tcl_chdir_
        end function tcl_chdir_

        ! Tcl_Obj *Tcl_ConcatObj(int objc, Tcl_Obj *objv[])
        function tcl_concat_obj(objc, objv) bind(c, name='Tcl_ConcatObj')
            import :: c_int, c_ptr
            implicit none
            integer(kind=c_int), intent(in), value :: objc
            type(c_ptr),         intent(in)        :: objv(*)
            type(c_ptr)                            :: tcl_concat_obj
        end function tcl_concat_obj

        ! int Tcl_ConvertCountedElement(const char *src, int length, char *dst, int flags)
        function tcl_convert_counted_element_(src, length, dst, flags) bind(c, name='Tcl_ConvertCountedElement')
            import :: c_char, c_int
            implicit none
            character(kind=c_char), intent(in)        :: src
            integer(kind=c_int),    intent(in), value :: length
            character(kind=c_char), intent(in)        :: dst
            integer(kind=c_int),    intent(in), value :: flags
            integer(kind=c_int)                       :: tcl_convert_counted_element_
        end function tcl_convert_counted_element_

        ! int Tcl_ConvertElement(const char *src, char *dst, int flags)
        function tcl_convert_element_(src, dst, flags) bind(c, name='Tcl_ConvertElement')
            import :: c_char, c_int
            implicit none
            character(kind=c_char), intent(in)        :: src
            character(kind=c_char), intent(in)        :: dst
            integer(kind=c_int),    intent(in), value :: flags
            integer(kind=c_int)                       :: tcl_convert_element_
        end function tcl_convert_element_

        ! Tcl_HashEntry *Tcl_CreateHashEntry(Tcl_HashTable *tablePtr, const void *key, int *newPtr)

        ! Tcl_Interp *Tcl_CreateInterp()
        function tcl_create_interp() bind(c, name='Tcl_CreateInterp')
            import :: c_ptr
            implicit none
            type(c_ptr) :: tcl_create_interp
        end function tcl_create_interp

        ! Tcl_Namespace *Tcl_CreateNamespace(TclInterp *interp, char *name, ClientData clientData, Tcl_CmdDeleteProc *deleteProc)
        function tcl_create_namespace_(interp, name, client_data, delete_proc) bind(c, name='Tcl_CreateNamespace')
            import :: c_char, c_funptr, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: interp
            character(kind=c_char), intent(in)        :: name
            type(c_ptr),            intent(in), value :: client_data
            type(c_funptr),         intent(in), value :: delete_proc
            type(c_ptr)                               :: tcl_create_namespace_
        end function tcl_create_namespace_

        ! Tcl_Command Tcl_CreateObjCommand(TclInterp *interp, char *cmdName, Tcl_ObjCmdProc *proc, ClientData clientData, Tcl_CmdDeleteProc *deleteProc)
        function tcl_create_obj_command_(interp, cmd_name, proc, client_data, delete_proc) bind(c, name='Tcl_CreateObjCommand')
            import :: c_char, c_funptr, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: interp
            character(kind=c_char), intent(in)        :: cmd_name
            type(c_funptr),         intent(in), value :: proc
            type(c_ptr),            intent(in), value :: client_data
            type(c_funptr),         intent(in), value :: delete_proc
            type(c_ptr)                               :: tcl_create_obj_command_
        end function tcl_create_obj_command_

        ! Tcl_Interp *Tcl_CreateSlave(Tcl_Interp *interp, const char *name, int isSafe)
        function tcl_create_slave_(interp, name, is_safe) bind(c, name='Tcl_CreateSlave')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: interp
            character(kind=c_char), intent(in)        :: name
            integer(kind=c_int),    intent(in), value :: is_safe
            type(c_ptr)                               :: tcl_create_slave_
        end function tcl_create_slave_

        ! int Tcl_DeleteCommand(Tcl_Interp *interp, const char *cmdName)
        function tcl_delete_command_(interp, cmd_name) bind(c, name='Tcl_DeleteCommand')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: interp
            character(kind=c_char), intent(in)        :: cmd_name
            integer(kind=c_int)                       :: tcl_delete_command_
        end function tcl_delete_command_

        ! int Tcl_DictObjFirst(Tcl_Interp *interp, Tcl_Obj *dictPtr, Tcl_DictSearch *searchPtr, Tcl_Obj **keyPtrPtr, Tcl_Obj **valuePtrPtr, int *donePtr)
        function tcl_dict_obj_first_(interp, dict_ptr, search_ptr, key_ptr_ptr, value_ptr_ptr, &
                                     done_ptr) bind(c, name='Tcl_DictObjFirst')
            import :: c_int, c_ptr, tcl_dict_search
            implicit none
            type(c_ptr),           intent(in), value :: interp
            type(c_ptr),           intent(in), value :: dict_ptr
            type(tcl_dict_search), intent(in)        :: search_ptr
            type(c_ptr),           intent(out)       :: key_ptr_ptr
            type(c_ptr),           intent(out)       :: value_ptr_ptr
            integer(kind=c_int),   intent(out)       :: done_ptr
            integer(kind=c_int)                      :: tcl_dict_obj_first_
        end function tcl_dict_obj_first_

        ! int Tcl_DictObjGet(Tcl_Interp *interp, Tcl_Obj *dictPtr, Tcl_Obj *keyPtr, Tcl_Obj *valuePtrPtr)
        function tcl_dict_obj_get(interp, dict_ptr, key_ptr, value_ptr_ptr) bind(c, name='Tcl_DictObjGet')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: interp
            type(c_ptr), intent(in), value :: dict_ptr
            type(c_ptr), intent(in), value :: key_ptr
            type(c_ptr), intent(out)       :: value_ptr_ptr
            integer(kind=c_int)            :: tcl_dict_obj_get
        end function tcl_dict_obj_get

        ! int Tcl_DictObjPut(Tcl_Interp *interp, Tcl_Obj *dictPtr, Tcl_Obj *keyPtr, Tcl_Obj *valuePtr)
        function tcl_dict_obj_put(interp, dict_ptr, key_ptr, value_ptr) bind(c, name='Tcl_DictObjPut')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: interp
            type(c_ptr), intent(in), value :: dict_ptr
            type(c_ptr), intent(in), value :: key_ptr
            type(c_ptr), intent(in), value :: value_ptr
            integer(kind=c_int)            :: tcl_dict_obj_put
        end function tcl_dict_obj_put

        ! int Tcl_DictObjPutKeyList(Tcl_Interp *interp, Tcl_Obj *dictPtr, int keyc, Tcl_Obj *const *keyv, Tcl_Obj *valuePtr)
        function tcl_dict_obj_put_key_list(interp, dict_ptr, keyc, keyv, value_ptr) bind(c, name='Tcl_DictObjPutKeyList')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),         intent(in), value :: interp
            type(c_ptr),         intent(in), value :: dict_ptr
            integer(kind=c_int), intent(in), value :: keyc
            type(c_ptr),         intent(in)        :: keyv(*)
            type(c_ptr),         intent(in), value :: value_ptr
            integer(kind=c_int)                    :: tcl_dict_obj_put_key_list
        end function tcl_dict_obj_put_key_list

        ! int Tcl_DictObjRemove(Tcl_Interp *interp, Tcl_Obj *dictPtr, Tcl_Obj *keyPtr)
        function tcl_dict_obj_remove(interp, dict_ptr, key_ptr) bind(c, name='Tcl_DictObjRemove')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: interp
            type(c_ptr), intent(in), value :: dict_ptr
            type(c_ptr), intent(in), value :: key_ptr
            integer(kind=c_int)            :: tcl_dict_obj_remove
        end function tcl_dict_obj_remove

        ! int Tcl_DictObjRemoveKeyList(Tcl_Interp *interp, Tcl_Obj *dictPtr, int keyc, Tcl_Obj *const *keyv)
        function tcl_dict_obj_remove_key_list(interp, dict_ptr, keyc, keyv) bind(c, name='Tcl_DictObjRemoveKeyList')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),         intent(in), value :: interp
            type(c_ptr),         intent(in), value :: dict_ptr
            integer(kind=c_int), intent(in), value :: keyc
            type(c_ptr),         intent(in)        :: keyv(*)
            integer(kind=c_int)                    :: tcl_dict_obj_remove_key_list
        end function tcl_dict_obj_remove_key_list

        ! int Tcl_DictObjSize(Tcl_Interp *interp, Tcl_Obj *dictPtr, int *sizePtr)
        function tcl_dict_obj_size(interp, dict_ptr, size_ptr) bind(c, name='Tcl_DictObjSize')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),         intent(in), value :: interp
            type(c_ptr),         intent(in), value :: dict_ptr
            integer(kind=c_int), intent(out)       :: size_ptr
            integer(kind=c_int)                    :: tcl_dict_obj_size
        end function tcl_dict_obj_size

        ! Tcl_Obj *Tcl_DuplicateObj(Tcl_Obj *objPtr)
        function tcl_duplicate_obj(obj_ptr) bind(c, name='Tcl_DuplicateObj')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: obj_ptr
            type(c_ptr)                    :: tcl_duplicate_obj
        end function tcl_duplicate_obj

        ! const char *Tcl_ErrnoMsg(int errorCode)
        function tcl_errno_msg_(error_code) bind(c, name='Tcl_ErrnoMsg')
            import :: c_int, c_ptr
            implicit none
            integer(kind=c_int), intent(in), value :: error_code
            type(c_ptr)                            :: tcl_errno_msg_
        end function tcl_errno_msg_

        ! int Tcl_Eval(TclInterp *interp, const char *script)
        function tcl_eval_(interp, script) bind(c, name='Tcl_Eval')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: interp
            character(kind=c_char), intent(in)        :: script
            integer(kind=c_int)                       :: tcl_eval_
        end function tcl_eval_

        ! int Tcl_EvalEx(TclInterp *interp, const char *script, int numBytes, int flags)
        function tcl_eval_ex_(interp, script, num_bytes, flags) bind(c, name='Tcl_EvalEx')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: interp
            character(kind=c_char), intent(in)        :: script
            integer(kind=c_int),    intent(in), value :: num_bytes
            integer(kind=c_int),    intent(in), value :: flags
            integer(kind=c_int)                       :: tcl_eval_ex_
        end function tcl_eval_ex_

        ! int Tcl_EvalFile(TclInterp *interp, const char *fileName)
        function tcl_eval_file_(interp, file_name) bind(c, name='Tcl_EvalFile')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: interp
            character(kind=c_char), intent(in)        :: file_name
            integer(kind=c_int)                       :: tcl_eval_file_
        end function tcl_eval_file_

        ! int Tcl_EvalObjEx(TclInterp *interp, Tcl_Obj *objPtr, int flags)
        function tcl_eval_obj_ex(interp, obj_ptr, flags) bind(c, name='Tcl_EvalObjEx')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),         intent(in), value :: interp
            type(c_ptr),         intent(in), value :: obj_ptr
            integer(kind=c_int), intent(in), value :: flags
            integer(kind=c_int)                    :: tcl_eval_obj_ex
        end function tcl_eval_obj_ex

        ! int Tcl_ExposeCommand(Tcl_Interp *interp, const char *hiddenCmdName, const char *cmdName)
        function tcl_expose_command_(interp, hidden_cmd_name, cmd_name) bind(c, name='Tcl_ExposeCommand')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: interp
            character(kind=c_char), intent(in)        :: hidden_cmd_name
            character(kind=c_char), intent(in)        :: cmd_name
            integer(kind=c_int)                       :: tcl_expose_command_
        end function tcl_expose_command_

        ! int Tcl_ExprBoolean(Tcl_Interp *interp, const char *expr, int *booleanPtr)
        function tcl_expr_boolean_(interp, expr, boolean_ptr) bind(c, name='Tcl_ExprBoolean')
            import :: c_char,c_int, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: interp
            character(kind=c_char), intent(in)        :: expr
            integer(kind=c_int),    intent(out)       :: boolean_ptr
            integer(kind=c_int)                       :: tcl_expr_boolean_
        end function tcl_expr_boolean_

        ! int Tcl_ExprBooleanObj(Tcl_Interp *interp, Tcl_Obj *objPtr, int *booleanPtr)
        function tcl_expr_boolean_obj_(interp, obj_ptr, boolean_ptr) bind(c, name='Tcl_ExprBooleanObj')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),         intent(in), value :: interp
            type(c_ptr),         intent(in), value :: obj_ptr
            integer(kind=c_int), intent(out)       :: boolean_ptr
            integer(kind=c_int)                    :: tcl_expr_boolean_obj_
        end function tcl_expr_boolean_obj_

        ! int Tcl_ExprDouble(Tcl_Interp *interp, const char *expr, double *doublePtr)
        function tcl_expr_double_(interp, expr, double_ptr) bind(c, name='Tcl_ExprDouble')
            import :: c_char, c_double, c_int, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: interp
            character(kind=c_char), intent(in)        :: expr
            real(kind=c_double),    intent(out)       :: double_ptr
            integer(kind=c_int)                       :: tcl_expr_double_
        end function tcl_expr_double_

        ! int Tcl_ExprDoubleObj(Tcl_Interp *interp, Tcl_Obj *objPtr, double *doublePtr)
        function tcl_expr_double_obj(interp, obj_ptr, double_ptr) bind(c, name='Tcl_ExprDoubleObj')
            import :: c_double, c_int, c_ptr
            implicit none
            type(c_ptr),         intent(in), value :: interp
            type(c_ptr),         intent(in), value :: obj_ptr
            real(kind=c_double), intent(out)       :: double_ptr
            integer(kind=c_int)                    :: tcl_expr_double_obj
        end function tcl_expr_double_obj

        ! int Tcl_ExprLong(Tcl_Interp *interp, const char *expr, long *longPtr)
        function tcl_expr_long_(interp, expr, long_ptr) bind(c, name='Tcl_ExprLong')
            import :: c_char, c_int, c_long, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: interp
            character(kind=c_char), intent(in)        :: expr
            integer(kind=c_long),   intent(out)       :: long_ptr
            integer(kind=c_int)                       :: tcl_expr_long_
        end function tcl_expr_long_

        ! int Tcl_ExprLongObj(Tcl_Interp *interp, Tcl_Obj *objPtr, long *longPtr)
        function tcl_expr_long_obj(interp, obj_ptr, long_ptr) bind(c, name='Tcl_ExprLongObj')
            import :: c_int, c_long, c_ptr
            implicit none
            type(c_ptr),          intent(in), value :: interp
            type(c_ptr),          intent(in), value :: obj_ptr
            integer(kind=c_long), intent(out)       :: long_ptr
            integer(kind=c_int)                     :: tcl_expr_long_obj
        end function tcl_expr_long_obj

        ! int Tcl_ExprObj(TclInterp *interp, Tcl_Obj *objPtr, Tcl_Obj **resultPtrPtr)
        function tcl_expr_obj(interp, obj_ptr, result_ptr_ptr) bind(c, name='Tcl_ExprObj')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: interp
            type(c_ptr), intent(in), value :: obj_ptr
            type(c_ptr), intent(out)       :: result_ptr_ptr
            integer(kind=c_int)            :: tcl_expr_obj
        end function tcl_expr_obj

        ! int Tcl_ExprString(Tcl_Interp *interp, const char *expr)
        function tcl_expr_string_(interp, expr) bind(c, name='Tcl_ExprString')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: interp
            character(kind=c_char), intent(in)        :: expr
            integer(kind=c_int)                       :: tcl_expr_string_
        end function tcl_expr_string_

        ! Tcl_HashEntry *Tcl_FindHashEntry(Tcl_HashTable *tablePtr, const void *key)
        ! Tcl_HashEntry *Tcl_FirstHashEntry(Tcl_HashTable *tablePtr, Tcl_HashSearch *searchPtr)

        ! int Tcl_FSAccess(Tcl_Obj *pathPtr, int mode)
        function tcl_fs_access(path_ptr, mode) bind(c, name='Tcl_FSAccess')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),         intent(in), value :: path_ptr
            integer(kind=c_int), intent(in), value :: mode
            integer(kind=c_int)                    :: tcl_fs_access
        end function tcl_fs_access

        ! int Tcl_FSChdir(Tcl_Obj *pathPtr)
        function tcl_fs_chdir(path_ptr) bind(c, name='Tcl_FSChdir')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: path_ptr
            integer(kind=c_int)            :: tcl_fs_chdir
        end function tcl_fs_chdir

        ! int Tcl_FSConvertToPathType(Tcl_Interp *interp, Tcl_Obj *pathPtr)
        function tcl_fs_convert_to_path_type(interp, path_ptr) bind(c, name='Tcl_FSConvertToPathType')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: interp
            type(c_ptr), intent(in), value :: path_ptr
            integer(kind=c_int)            :: tcl_fs_convert_to_path_type
        end function tcl_fs_convert_to_path_type

        ! int Tcl_FSCopyFile(Tcl_Obj *srcPathPtr, Tcl_Obj *destPathPtr)
        function tcl_fs_copy_file(src_path_ptr, dest_path_ptr) bind(c, name='Tcl_FSCopyFile')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src_path_ptr
            type(c_ptr), intent(in), value :: dest_path_ptr
            integer(kind=c_int)            :: tcl_fs_copy_file
        end function tcl_fs_copy_file

        ! int Tcl_FSCopyDirectory(Tcl_Obj *srcPathPtr, Tcl_Obj *destPathPtr, Tcl_Obj **errorPtr)
        function tcl_fs_copy_directory_(src_path_ptr, dest_path_ptr, error_ptr) bind(c, name='Tcl_FSCopyDirectory')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src_path_ptr
            type(c_ptr), intent(in), value :: dest_path_ptr
            type(c_ptr), intent(out)       :: error_ptr
            integer(kind=c_int)            :: tcl_fs_copy_directory_
        end function tcl_fs_copy_directory_

        ! int Tcl_FSCreateDirectory(Tcl_Obj *pathPtr)
        function tcl_fs_create_directory(path_ptr) bind(c, name='Tcl_FSCreateDirectory')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: path_ptr
            integer(kind=c_int)            :: tcl_fs_create_directory
        end function tcl_fs_create_directory

        ! ClientData Tcl_FSData(const Tcl_Filesystem *fsPtr)
        function tcl_fs_data(fs_ptr) bind(c, name='Tcl_FSData')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: fs_ptr
            type(c_ptr)                    :: tcl_fs_data
        end function tcl_fs_data

        ! int Tcl_FSDeleteFile(Tcl_Obj *pathPtr)
        function tcl_fs_delete_file(path_ptr) bind(c, name='Tcl_FSDeleteFile')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: path_ptr
            integer(kind=c_int)            :: tcl_fs_delete_file
        end function tcl_fs_delete_file

        ! int Tcl_FSEqualPaths(Tcl_Obj *firstPtr, Tcl_Obj *secondPtr)
        function tcl_fs_equal_paths_(first_ptr, second_ptr) bind(c, name='Tcl_FSEqualPaths')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: first_ptr
            type(c_ptr), intent(in), value :: second_ptr
            integer(kind=c_int)            :: tcl_fs_equal_paths_
        end function tcl_fs_equal_paths_

        ! int Tcl_FSEvalFile(Tcl_Interp *interp, Tcl_Obj *pathPtr)
        function tcl_fs_eval_file(interp, path_ptr) bind(c, name='Tcl_FSEvalFile')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: interp
            type(c_ptr), intent(in), value :: path_ptr
            integer(kind=c_int)            :: tcl_fs_eval_file
        end function tcl_fs_eval_file

        ! int Tcl_FSEvalFileEx(Tcl_Interp *interp, Tcl_Obj *pathPtr, const char *encodingName)
        function tcl_fs_eval_file_ex_(interp, path_ptr, encoding_name) bind(c, name='Tcl_FSEvalFileEx')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: interp
            type(c_ptr),            intent(in), value :: path_ptr
            character(kind=c_char), intent(in)        :: encoding_name
            integer(kind=c_int)                       :: tcl_fs_eval_file_ex_
        end function tcl_fs_eval_file_ex_

        ! const char *const *Tcl_FSFileAttrStrings(Tcl_Obj *pathPtr, Tcl_Obj **objPtrRef)
        function tcl_fs_file_attr_strings(path_ptr, obj_ptr_ref) bind(c, name='Tcl_FSFileAttrStrings')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: path_ptr
            type(c_ptr), intent(out)       :: obj_ptr_ref
            type(c_ptr)                    :: tcl_fs_file_attr_strings
        end function tcl_fs_file_attr_strings

        ! int Tcl_FSFileAttrsGet(Tcl_Interp *interp, int index, Tcl_Obj *pathPtr, Tcl_Obj **objPtrRef)
        function tcl_fs_file_attrs_get(interp, index, path_ptr, obj_ptr_ref) bind(c, name='Tcl_FSFileAttrsGet')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),         intent(in), value :: interp
            integer(kind=c_int), intent(in), value :: index
            type(c_ptr),         intent(in), value :: path_ptr
            type(c_ptr),         intent(out)       :: obj_ptr_ref
            integer(kind=c_int)                    :: tcl_fs_file_attrs_get
        end function tcl_fs_file_attrs_get

        ! int Tcl_FSFileAttrsSet(Tcl_Interp *interp, int index, Tcl_Obj *pathPtr, Tcl_Obj *objPtr)
        function tcl_fs_file_attrs_set(interp, index, path_ptr, obj_ptr) bind(c, name='Tcl_FSFileAttrsSet')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),         intent(in), value :: interp
            integer(kind=c_int), intent(in), value :: index
            type(c_ptr),         intent(in), value :: path_ptr
            type(c_ptr),         intent(in), value :: obj_ptr
            integer(kind=c_int)                    :: tcl_fs_file_attrs_set
        end function tcl_fs_file_attrs_set

        ! Tcl_Obj *Tcl_FSFileSystemInfo(Tcl_Obj *pathPtr)
        function tcl_fs_file_system_info(path_ptr) bind(c, name='Tcl_FSFileSystemInfo')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: path_ptr
            type(c_ptr)                    :: tcl_fs_file_system_info
        end function tcl_fs_file_system_info

        ! Tcl_Obj *Tcl_FSGetCwd(Tcl_Interp *interp)
        function tcl_fs_get_cwd(interp) bind(c, name='Tcl_FSGetCwd')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: interp
            type(c_ptr)                    :: tcl_fs_get_cwd
        end function tcl_fs_get_cwd

        ! const Tcl_Filesystem *Tcl_FSGetFileSystemForPath(Tcl_Obj *pathPtr)
        function tcl_fs_get_file_system_for_path(path_ptr) bind(c, name='Tcl_FSGetFileSystemForPath')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: path_ptr
            type(c_ptr)                    :: tcl_fs_get_file_system_for_path
        end function tcl_fs_get_file_system_for_path

        ! ClientData Tcl_FSGetInternalRep(Tcl_Obj *pathPtr, const Tcl_Filesystem *fsPtr)
        function tcl_fs_get_internal_rep(path_ptr, fs_ptr) bind(c, name='Tcl_FSGetInternalRep')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: path_ptr
            type(c_ptr), intent(in), value :: fs_ptr
            type(c_ptr)                    :: tcl_fs_get_internal_rep
        end function tcl_fs_get_internal_rep

        ! const void *Tcl_FSGetNativePath(Tcl_Obj *pathPtr)
        function tcl_fs_get_native_path_(path_ptr) bind(c, name='Tcl_FSGetNativePath')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: path_ptr
            type(c_ptr)                    :: tcl_fs_get_native_path_
        end function tcl_fs_get_native_path_

        ! Tcl_Obj *Tcl_FSGetNormalizedPath(Tcl_Interp *interp, Tcl_Obj *pathPtr)
        function tcl_fs_get_normalized_path(interp, path_ptr) bind(c, name='Tcl_FSGetNormalizedPath')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: interp
            type(c_ptr), intent(in), value :: path_ptr
            type(c_ptr)                    :: tcl_fs_get_normalized_path
        end function tcl_fs_get_normalized_path

        ! Tcl_PathType Tcl_FSGetPathType(Tcl_Obj *pathPtr)
        function tcl_fs_get_path_type(path_ptr) bind(c, name='Tcl_FSGetPathType')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: path_ptr
            integer(kind=c_int)            :: tcl_fs_get_path_type
        end function tcl_fs_get_path_type

        ! Tcl_Obj *Tcl_FSGetTranslatedPath(Tcl_Interp *interp, Tcl_Obj *pathPtr)
        function tcl_fs_get_translated_path(interp, path_ptr) bind(c, name='Tcl_FSGetTranslatedPath')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: interp
            type(c_ptr), intent(in), value :: path_ptr
            type(c_ptr)                    :: tcl_fs_get_translated_path
        end function tcl_fs_get_translated_path

        ! const char *Tcl_FSGetTranslatedStringPath(Tcl_Interp *interp, Tcl_Obj *pathPtr)
        function tcl_fs_get_translated_string_path_(interp, path_ptr) bind(c, name='Tcl_FSGetTranslatedStringPath')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: interp
            type(c_ptr), intent(in), value :: path_ptr
            type(c_ptr)                    :: tcl_fs_get_translated_string_path_
        end function tcl_fs_get_translated_string_path_

        ! Tcl_Obj *Tcl_FSJoinPath(Tcl_Obj *listObj, int elements)
        function tcl_fs_join_path(list_obj, elements) bind(c, name='Tcl_FSJoinPath')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),         intent(in), value :: list_obj
            integer(kind=c_int), intent(in), value :: elements
            type(c_ptr)                            :: tcl_fs_join_path
        end function tcl_fs_join_path

        ! Tcl_Obj *Tcl_FSJoinToPath(Tcl_Obj *basePtr, int objc, const Tcl_Obj *objv[])
        function tcl_fs_join_to_path(base_ptr, objc, objv) bind(c, name='Tcl_FSJoinToPath')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),         intent(in), value :: base_ptr
            integer(kind=c_int), intent(in), value :: objc
            type(c_ptr),         intent(in)        :: objv(*)
            type(c_ptr)                            :: tcl_fs_join_to_path
        end function tcl_fs_join_to_path

        ! Tcl_Obj *Tcl_FSLink(Tcl_Obj *linkNamePtr, Tcl_Obj *toPtr, int linkAction)
        function tcl_fs_link(link_name_ptr, to_ptr, link_action) bind(c, name='Tcl_FSLink')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),         intent(in), value :: link_name_ptr
            type(c_ptr),         intent(in), value :: to_ptr
            integer(kind=c_int), intent(in), value :: link_action
            type(c_ptr)                            :: tcl_fs_link
        end function tcl_fs_link

        ! Tcl_Obj *Tcl_FSListVolumes()
        function tcl_fs_list_volumes() bind(c, name='Tcl_FSListVolumes')
            import :: c_ptr
            implicit none
            type(c_ptr) :: tcl_fs_list_volumes
        end function tcl_fs_list_volumes

        ! int Tcl_FSLoadFile(Tcl_Interp *interp, Tcl_Obj *pathPtr, const char *sym1, const char *sym2, Tcl_PackageInitProc **proc1Ptr, Tcl_PackageInitProc **proc2Ptr, Tcl_LoadHandle *loadHandlePtr, Tcl_FSUnloadFileProc **unloadProcPtr)
        function tcl_fs_load_file_(interp, path_ptr, sym1, sym2, proc1_ptr, proc2_ptr, &
                                   load_handle_ptr, unload_proc_ptr) bind(c, name='Tcl_FSLoadFile')
            import :: c_char, c_int, c_funptr, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: interp
            type(c_ptr),            intent(in), value :: path_ptr
            character(kind=c_char), intent(in)        :: sym1
            character(kind=c_char), intent(in)        :: sym2
            type(c_funptr),         intent(out)       :: proc1_ptr
            type(c_funptr),         intent(out)       :: proc2_ptr
            type(c_ptr),            intent(in), value :: load_handle_ptr
            type(c_funptr),         intent(out)       :: unload_proc_ptr
            integer(kind=c_int)                       :: tcl_fs_load_file_
        end function tcl_fs_load_file_

        ! int Tcl_FSLstat(Tcl_Obj *pathPtr, Tcl_StatBuf *statPtr)
        function tcl_fs_lstat(path_ptr, stat_ptr) bind(c, name='Tcl_FSLstat')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: path_ptr
            type(c_ptr), intent(in), value :: stat_ptr
            integer(kind=c_int)            :: tcl_fs_lstat
        end function tcl_fs_lstat

        ! int Tcl_FSMatchInDirectory(Tcl_Interp *interp, Tcl_Obj *resultPtr, Tcl_Obj *pathPtr, const char *pattern, Tcl_GlobTypeData *types)
        function tcl_fs_match_in_directory_(interp, result_ptr, path_ptr, pattern, types) bind(c, name='Tcl_FSMatchInDirectory')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: interp
            type(c_ptr),            intent(in), value :: result_ptr
            type(c_ptr),            intent(in), value :: path_ptr
            character(kind=c_char), intent(in)        :: pattern
            type(c_ptr),            intent(in), value :: types
            integer(kind=c_int)                       :: tcl_fs_match_in_directory_
        end function tcl_fs_match_in_directory_

        ! Tcl_Obj *Tcl_FSNewNativePath(const Tcl_Filesystem *fsPtr, ClientData clientData)
        function tcl_fs_new_native_path(fs_ptr, client_data) bind(c, name='Tcl_FSNewNativePath')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: fs_ptr
            type(c_ptr), intent(in), value :: client_data
            type(c_ptr)                    :: tcl_fs_new_native_path
        end function tcl_fs_new_native_path

        ! Tcl_Channel Tcl_FSOpenFileChannel(Tcl_Interp *interp, Tcl_Obj *pathPtr, const char *modeString, int permissions)
        function tcl_fs_open_file_channel_(interp, path_ptr, mode_string, permissions) bind(c, name='Tcl_FSOpenFileChannel')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: interp
            type(c_ptr),            intent(in), value :: path_ptr
            character(kind=c_char), intent(in)        :: mode_string
            integer(kind=c_int),    intent(in), value :: permissions
            type(c_ptr)                               :: tcl_fs_open_file_channel_
        end function tcl_fs_open_file_channel_

        ! Tcl_Obj *Tcl_FSPathSeparator(Tcl_Obj *pathPtr)
        function tcl_fs_path_separator(path_ptr) bind(c, name='Tcl_FSPathSeparator')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: path_ptr
            type(c_ptr)                    :: tcl_fs_path_separator
        end function tcl_fs_path_separator

        ! int Tcl_FSRegister(ClientData clientData, const Tcl_Filesystem *fsPtr)
        function tcl_fs_register(client_data, fs_ptr) bind(c, name='Tcl_FSRegister')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: client_data
            type(c_ptr), intent(in), value :: fs_ptr
            integer(kind=c_int)            :: tcl_fs_register
        end function tcl_fs_register

        ! int Tcl_FSRemoveDirectory(Tcl_Obj *pathPtr, int recursive, Tcl_Obj **errorPtr)
        function tcl_fs_remove_directory_(path_ptr, recursive, error_ptr) bind(c, name='Tcl_FSRemoveDirectory')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),         intent(in), value :: path_ptr
            integer(kind=c_int), intent(in), value :: recursive
            type(c_ptr),         intent(out)       :: error_ptr
            integer(kind=c_int)                    :: tcl_fs_remove_directory_
        end function tcl_fs_remove_directory_

        ! int Tcl_FSRenameFile(Tcl_Obj *srcPathPtr, Tcl_Obj *destPathPtr)
        function tcl_fs_rename_file(src_path_ptr, dest_path_ptr) bind(c, name='Tcl_FSRenameFile')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src_path_ptr
            type(c_ptr), intent(in), value :: dest_path_ptr
            integer(kind=c_int)            :: tcl_fs_rename_file
        end function tcl_fs_rename_file

        ! int Tcl_FSUnloadFile(Tcl_Interp *interp, Tcl_LoadHandle loadHandle)
        function tcl_fs_unload_file(interp, load_handle) bind(c, name='Tcl_FSUnloadFile')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: interp
            type(c_ptr), intent(in), value :: load_handle
            integer(kind=c_int)            :: tcl_fs_unload_file
        end function tcl_fs_unload_file

        ! int Tcl_FSUnregister(const Tcl_Filesystem *fsPtr)
        function tcl_fs_unregister(fs_ptr) bind(c, name='Tcl_FSUnregister')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: fs_ptr
            integer(kind=c_int)            :: tcl_fs_unregister
        end function tcl_fs_unregister

        ! Tcl_Obj *Tcl_FSSplitPath(Tcl_Obj *pathPtr, int *lenPtr)
        function tcl_fs_split_path(path_ptr, len_ptr) bind(c, name='Tcl_FSSplitPath')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),         intent(in), value :: path_ptr
            integer(kind=c_int), intent(out)       :: len_ptr
            type(c_ptr)                            :: tcl_fs_split_path
        end function tcl_fs_split_path

        ! int Tcl_FSStat(Tcl_Obj *pathPtr, Tcl_StatBuf *statPtr)
        function tcl_fs_stat(path_ptr, stat_ptr) bind(c, name='Tcl_FSStat')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: path_ptr
            type(c_ptr), intent(in), value :: stat_ptr
            integer(kind=c_int)            :: tcl_fs_stat
        end function tcl_fs_stat

        ! int Tcl_FSUtime(Tcl_Obj *pathPtr, utimbuf *tval)
        function tcl_fs_utime(path_ptr, tval) bind(c, name='Tcl_FSUtime')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: path_ptr
            type(c_ptr), intent(in), value :: tval
            integer(kind=c_int)            :: tcl_fs_utime
        end function tcl_fs_utime

        ! Tcl_WideInt Tcl_GetAccessTimeFromStat(Tcl_StatBuf *statPtr)
        function tcl_get_access_time_from_stat(stat_ptr) bind(c, name='Tcl_GetAccessTimeFromStat')
            import :: c_ptr, tcl_wide_int
            implicit none
            type(c_ptr), intent(in), value :: stat_ptr
            integer(kind=tcl_wide_int)     :: tcl_get_access_time_from_stat
        end function tcl_get_access_time_from_stat

        ! unsigned char *Tcl_GetByteArrayFromObj(Tcl_Obj *objPtr, int *lengthPtr)
        function tcl_get_byte_array_from_obj(obj_ptr, length_ptr) bind(c, name='Tcl_GetByteArrayFromObj')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),         intent(in), value :: obj_ptr
            integer(kind=c_int), intent(out)       :: length_ptr
            type(c_ptr)                            :: tcl_get_byte_array_from_obj
        end function tcl_get_byte_array_from_obj

        ! unsigned Tcl_GetBlockSizeFromStat(Tcl_StatBuf *statPtr)
        function tcl_get_block_size_from_stat(stat_ptr) bind(c, name='Tcl_GetBlockSizeFromStat')
            import :: c_ptr, c_unsigned_int
            implicit none
            type(c_ptr), intent(in), value :: stat_ptr
            integer(kind=c_unsigned_int)   :: tcl_get_block_size_from_stat
        end function tcl_get_block_size_from_stat

        ! Tcl_WideUInt Tcl_GetBlocksFromStat(Tcl_StatBuf *statPtr)
        function tcl_get_blocks_from_stat(stat_ptr) bind(c, name='Tcl_GetBlocksFromStat')
            import :: c_ptr, tcl_wide_uint
            implicit none
            type(c_ptr), intent(in), value :: stat_ptr
            integer(kind=tcl_wide_uint)    :: tcl_get_blocks_from_stat
        end function tcl_get_blocks_from_stat

        ! int Tcl_GetBoolean(TclInterp *interp, const char *src, int *bool_ptr)
        function tcl_get_boolean_(interp, src, bool_ptr) bind(c, name='Tcl_GetBoolean')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: interp
            character(kind=c_char), intent(in)        :: src
            integer(kind=c_int),    intent(out)       :: bool_ptr
            integer(kind=c_int)                       :: tcl_get_boolean_
        end function tcl_get_boolean_

        ! int Tcl_GetBooleanFromObj(TclInterp *interp, Tcl_Obj *objPtr, int *boolPtr)
        function tcl_get_boolean_from_obj_(interp, obj_ptr, bool_ptr) bind(c, name='Tcl_GetBooleanFromObj')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),         intent(in), value :: interp
            type(c_ptr),         intent(in), value :: obj_ptr
            integer(kind=c_int), intent(out)       :: bool_ptr
            integer(kind=c_int)                    :: tcl_get_boolean_from_obj_
        end function tcl_get_boolean_from_obj_

        ! Tcl_WideInt Tcl_GetChangeTimeFromStat(Tcl_StatBuf *statPtr)
        function tcl_get_change_time_from_stat(stat_ptr) bind(c, name='Tcl_GetChangeTimeFromStat')
            import :: c_ptr, tcl_wide_int
            implicit none
            type(c_ptr), intent(in), value :: stat_ptr
            integer(kind=tcl_wide_int)     :: tcl_get_change_time_from_stat
        end function tcl_get_change_time_from_stat

        ! const char *Tcl_GetCommandName(Tcl_Interp *interp, Tcl_Command token)
        function tcl_get_command_name_(interp, token) bind(c, name='Tcl_GetCommandName')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: interp
            type(c_ptr), intent(in), value :: token
            type(c_ptr)                    :: tcl_get_command_name_
        end function tcl_get_command_name_

        ! int Tcl_GetDeviceTypeFromStat(Tcl_StatBuf *statPtr)
        function tcl_get_device_type_from_stat(stat_ptr) bind(c, name='Tcl_GetDeviceTypeFromStat')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: stat_ptr
            integer(kind=c_int)            :: tcl_get_device_type_from_stat
        end function tcl_get_device_type_from_stat

        ! int Tcl_GetDouble(TclInterp *interp, const char *src, double *doube_ptr)
        function tcl_get_double_(interp, src, double_ptr) bind(c, name='Tcl_GetDouble')
            import :: c_char, c_double, c_int, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: interp
            character(kind=c_char), intent(in)        :: src
            real(kind=c_double),    intent(out)       :: double_ptr
            integer(kind=c_int)                       :: tcl_get_double_
        end function tcl_get_double_

        ! int Tcl_GetDoubleFromObj(TclInterp *interp, Tcl_Obj *objPtr, double *doublePtr)
        function tcl_get_double_from_obj(interp, obj_ptr, double_ptr) bind(c, name='Tcl_GetDoubleFromObj')
            import :: c_double, c_int, c_ptr
            implicit none
            type(c_ptr),         intent(in), value :: interp
            type(c_ptr),         intent(in), value :: obj_ptr
            real(kind=c_double), intent(out)       :: double_ptr
            integer(kind=c_int)                    :: tcl_get_double_from_obj
        end function tcl_get_double_from_obj

        ! int Tcl_GetErrno()
        function tcl_get_errno() bind(c, name='Tcl_GetErrno')
            import :: c_int
            implicit none
            integer(kind=c_int) :: tcl_get_errno
        end function tcl_get_errno

        ! int Tcl_GetErrorLine(Tcl_Interp *interp)
        function tcl_get_error_line(interp) bind(c, name='Tcl_GetErrorLine')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: interp
            integer(kind=c_int)            :: tcl_get_error_line
        end function tcl_get_error_line

        ! unsigned Tcl_GetFSDeviceFromStat(Tcl_StatBuf *statPtr)
        function tcl_get_fs_device_from_stat(stat_ptr) bind(c, name='Tcl_GetFSDeviceFromStat')
            import :: c_ptr, c_unsigned_int
            implicit none
            type(c_ptr), intent(in), value :: stat_ptr
            integer(kind=c_unsigned_int)   :: tcl_get_fs_device_from_stat
        end function tcl_get_fs_device_from_stat

        ! unsigned Tcl_GetFSInodeFromStat(Tcl_StatBuf *statPtr)
        function tcl_get_fs_inode_from_stat(stat_ptr) bind(c, name='Tcl_GetFSInodeFromStat')
            import :: c_ptr, c_unsigned_int
            implicit none
            type(c_ptr), intent(in), value :: stat_ptr
            integer(kind=c_unsigned_int)   :: tcl_get_fs_inode_from_stat
        end function tcl_get_fs_inode_from_stat

         ! int Tcl_GetGroupIdFromStat(Tcl_StatBuf *statPtr)
        function tcl_get_group_id_from_stat(stat_ptr) bind(c, name='Tcl_GetGroupIdFromStat')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: stat_ptr
            integer(kind=c_int)            :: tcl_get_group_id_from_stat
        end function tcl_get_group_id_from_stat

        ! char *Tcl_GetHostName()
        function tcl_get_host_name_() bind(c, name='Tcl_GetHostName')
            import :: c_ptr
            implicit none
            type(c_ptr) :: tcl_get_host_name_
        end function tcl_get_host_name_

        ! int Tcl_GetInt(TclInterp *interp, const char *src, int *int_ptr)
        function tcl_get_int_(interp, src, int_ptr) bind(c, name='Tcl_GetInt')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: interp
            character(kind=c_char), intent(in)        :: src
            integer(kind=c_int),    intent(out)       :: int_ptr
            integer(kind=c_int)                       :: tcl_get_int_
        end function tcl_get_int_

        ! int Tcl_GetIntFromObj(TclInterp *interp, Tcl_Obj *objPtr, int *intPtr)
        function tcl_get_int_from_obj(interp, obj_ptr, int_ptr) bind(c, name='Tcl_GetIntFromObj')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),         intent(in), value :: interp
            type(c_ptr),         intent(in), value :: obj_ptr
            integer(kind=c_int), intent(out)       :: int_ptr
            integer(kind=c_int)                    :: tcl_get_int_from_obj
        end function tcl_get_int_from_obj

        ! int Tcl_GetLongFromObj(TclInterp *interp, Tcl_Obj *objPtr, long *longPtr)
        function tcl_get_long_from_obj(interp, obj_ptr, long_ptr) bind(c, name='Tcl_GetLongFromObj')
            import :: c_int, c_long, c_ptr
            implicit none
            type(c_ptr),          intent(in), value :: interp
            type(c_ptr),          intent(in), value :: obj_ptr
            integer(kind=c_long), intent(out)       :: long_ptr
            integer(kind=c_int)                     :: tcl_get_long_from_obj
        end function tcl_get_long_from_obj

        ! int Tcl_GetLinkCountFromStat(Tcl_StatBuf *statPtr)
        function tcl_get_link_count_from_stat(stat_ptr) bind(c, name='Tcl_GetLinkCountFromStat')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: stat_ptr
            integer(kind=c_int)            :: tcl_get_link_count_from_stat
        end function tcl_get_link_count_from_stat

        ! Tcl_Interp *Tcl_GetMaster(Tcl_Interp *interp)
        function tcl_get_master(interp) bind(c, name='Tcl_GetMaster')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: interp
            type(c_ptr)                    :: tcl_get_master
        end function tcl_get_master

        ! unsigned Tcl_GetModeFromStat(Tcl_StatBuf *statPtr)
        function tcl_get_mode_from_stat(stat_ptr) bind(c, name='Tcl_GetModeFromStat')
            import :: c_ptr, c_unsigned_int
            implicit none
            type(c_ptr), intent(in), value :: stat_ptr
            integer(kind=c_unsigned_int)   :: tcl_get_mode_from_stat
        end function tcl_get_mode_from_stat

        ! Tcl_WideUInt Tcl_GetModificationTimeFromStat(Tcl_StatBuf *statPtr)
        function tcl_get_modification_time_from_stat(stat_ptr) bind(c, name='Tcl_GetModificationTimeFromStat')
            import :: c_ptr, tcl_wide_uint
            implicit none
            type(c_ptr), intent(in), value :: stat_ptr
            integer(kind=tcl_wide_uint)    :: tcl_get_modification_time_from_stat
        end function tcl_get_modification_time_from_stat

        ! const char *Tcl_GetNameOfExecutable()
        function tcl_get_name_of_executable_() bind(c, name='Tcl_GetNameOfExecutable')
            import :: c_ptr
            implicit none
            type(c_ptr) :: tcl_get_name_of_executable_
        end function tcl_get_name_of_executable_

        ! Tcl_Obj *Tcl_GetObjResult(TclInterp *interp)
        function tcl_get_obj_result(interp) bind(c, name='Tcl_GetObjResult')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: interp
            type(c_ptr)                    :: tcl_get_obj_result
        end function tcl_get_obj_result

        ! Tcl_ObjType *Tcl_GetObjType(const char *typeName)
        function tcl_get_obj_type_(type_name) bind(c, name='Tcl_GetObjType')
            import :: c_char, c_ptr
            implicit none
            character(kind=c_char), intent(in) :: type_name
            type(c_ptr)                        :: tcl_get_obj_type_
        end function tcl_get_obj_type_

        ! Tcl_PathType Tcl_GetPathType(const char *path)
        function tcl_get_path_type_(path) bind(c, name='Tcl_GetPathType')
            import :: c_char, c_int
            implicit none
            character(kind=c_char), intent(in) :: path
            integer(kind=c_int)                :: tcl_get_path_type_
        end function tcl_get_path_type_

        ! Tcl_WideUInt Tcl_GetSizeFromStat(Tcl_StatBuf *statPtr)
        function tcl_get_size_from_stat(stat_ptr) bind(c, name='Tcl_GetSizeFromStat')
            import :: c_ptr, tcl_wide_uint
            implicit none
            type(c_ptr), intent(in), value :: stat_ptr
            integer(kind=tcl_wide_uint)    :: tcl_get_size_from_stat
        end function tcl_get_size_from_stat

        ! char *Tcl_GetString(Tcl_Obj *objPtr)
        function tcl_get_string_(obj_ptr) bind(c, name='Tcl_GetString')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: obj_ptr
            type(c_ptr)                    :: tcl_get_string_
        end function tcl_get_string_

        ! char *Tcl_GetStringFromObj(Tcl_Obj *objPtr, int *lengthPtr)
        function tcl_get_string_from_obj_(obj_ptr, length_ptr) bind(c, name='Tcl_GetStringFromObj')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),         intent(in), value :: obj_ptr
            integer(kind=c_int), intent(out)       :: length_ptr
            type(c_ptr)                            :: tcl_get_string_from_obj_
        end function tcl_get_string_from_obj_

        ! const char *Tcl_GetStringResult(TclInterp *interp)
        function tcl_get_string_result_(interp) bind(c, name='Tcl_GetStringResult')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: interp
            type(c_ptr)                    :: tcl_get_string_result_
        end function tcl_get_string_result_

        ! int Tcl_GetUserIdFromStat(Tcl_StatBuf *statPtr)
        function tcl_get_user_id_from_stat(stat_ptr) bind(c, name='Tcl_GetUserIdFromStat')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: stat_ptr
            integer(kind=c_int)            :: tcl_get_user_id_from_stat
        end function tcl_get_user_id_from_stat

        ! const char *Tcl_GetVar(TclInterp *interp, const char *varName, int flags)
        function tcl_get_var_(interp, var_name, flags) bind(c, name='Tcl_GetVar')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: interp
            character(kind=c_char), intent(in)        :: var_name
            integer(kind=c_int),    intent(in), value :: flags
            type(c_ptr)                               :: tcl_get_var_
        end function tcl_get_var_

        ! const char *Tcl_GetVar2(TclInterp *interp, const char *name1, const char *name2, int flags)
        function tcl_get_var2_(interp, name1, name2, flags) bind(c, name='Tcl_GetVar2')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: interp
            character(kind=c_char), intent(in)        :: name1
            character(kind=c_char), intent(in)        :: name2
            integer(kind=c_int),    intent(in), value :: flags
            type(c_ptr)                               :: tcl_get_var2_
        end function tcl_get_var2_

        ! int Tcl_HideCommand(Tcl_Interp *interp, const char *cmdName, const char *hiddenCmdName)
        function tcl_hide_command_(interp, cmd_name, hidden_cmd_name) bind(c, name='Tcl_HideCommand')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: interp
            character(kind=c_char), intent(in)        :: cmd_name
            character(kind=c_char), intent(in)        :: hidden_cmd_name
            integer(kind=c_int)                       :: tcl_hide_command_
        end function tcl_hide_command_

        ! int Tcl_Init(TclInterp *interp)
        function tcl_init(interp) bind(c, name='Tcl_Init')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: interp
            integer(kind=c_int)            :: tcl_init
        end function tcl_init

        ! const char *Tcl_InitStubs(TclInterp *interp, const char *version, int exact)
        function tcl_init_stubs_(interp, version, exact) bind(c, name='Tcl_InitStubs')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: interp
            character(kind=c_char), intent(in)        :: version
            integer(kind=c_int),    intent(in), value :: exact
            type(c_ptr)                               :: tcl_init_stubs_
        end function tcl_init_stubs_

        ! int Tcl_InterpActive(TclInterp *interp)
        function tcl_interp_active_(interp) bind(c, name='Tcl_InterpActive')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: interp
            integer(kind=c_int)            :: tcl_interp_active_
        end function tcl_interp_active_

        ! int Tcl_IsSafe(Tcl_Interp *interp)
        function tcl_is_safe_(interp) bind(c, name='Tcl_IsSafe')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: interp
            integer(kind=c_int)            :: tcl_is_safe_
        end function tcl_is_safe_

        ! int Tcl_IsShared(Tcl_Obj *objPtr)
        function tcl_is_shared_(obj_ptr) bind(c, name='Tcl_IsShared')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: obj_ptr
            integer(kind=c_int)            :: tcl_is_shared_
        end function tcl_is_shared_

        ! int Tcl_InterpDeleted(TclInterp *interp)
        function tcl_interp_deleted_(interp) bind(c, name='Tcl_InterpDeleted')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: interp
            integer(kind=c_int)            :: tcl_interp_deleted_
        end function tcl_interp_deleted_

        ! int Tcl_LinkVar(Tcl_Interp *interp, const char *varName, char *addr, int type)
        function tcl_link_var_(interp, var_name, addr, type) bind(c, name='Tcl_LinkVar')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: interp
            character(kind=c_char), intent(in)        :: var_name
            type(c_ptr),            intent(in), value :: addr
            integer(kind=c_int),    intent(in), value :: type
            integer(kind=c_int)                       :: tcl_link_var_
        end function tcl_link_var_

        ! int Tcl_ListObjAppendElement(Tcl_Interp *interp, Tcl_Obj *listPtr, Tcl_Obj *objPtr)
        function tcl_list_obj_append_element(interp, list_ptr, obj_ptr) bind(c, name='Tcl_ListObjAppendElement')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),         intent(in), value :: interp
            type(c_ptr),         intent(in), value :: list_ptr
            type(c_ptr),         intent(in), value :: obj_ptr
            integer(kind=c_int)                    :: tcl_list_obj_append_element
        end function tcl_list_obj_append_element

        ! int Tcl_ListObjAppendList(Tcl_Interp *interp, Tcl_Obj *listPtr, Tcl_Obj *elemListPtr)
        function tcl_list_obj_append_list(interp, list_ptr, elem_list_ptr) bind(c, name='Tcl_ListObjAppendList')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),         intent(in), value :: interp
            type(c_ptr),         intent(in), value :: list_ptr
            type(c_ptr),         intent(in), value :: elem_list_ptr
            integer(kind=c_int)                    :: tcl_list_obj_append_list
        end function tcl_list_obj_append_list

        ! int Tcl_ListObjGetElements(Tcl_Interp *interp, Tcl_Obj *listPtr, int *objcPtr, Tcl_Obj ***objvPtr)
        function tcl_list_obj_get_elements(interp, list_ptr, objc_ptr, objv_ptr) bind(c, name='Tcl_ListObjGetElements')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),         intent(in), value :: interp
            type(c_ptr),         intent(in), value :: list_ptr
            integer(kind=c_int), intent(out)       :: objc_ptr
            type(c_ptr),         intent(out)       :: objv_ptr(*)
            integer(kind=c_int)                    :: tcl_list_obj_get_elements
        end function tcl_list_obj_get_elements

        ! int Tcl_ListObjIndex(Tcl_Interp *interp, Tcl_Obj *listPtr, int index, Tcl_Obj **objPtrPtr)
        function tcl_list_obj_index(interp, list_ptr, index, obj_ptr_ptr) bind(c, name='Tcl_ListObjIndex')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),         intent(in), value :: interp
            type(c_ptr),         intent(in), value :: list_ptr
            integer(kind=c_int), intent(in), value :: index
            type(c_ptr),         intent(in)        :: obj_ptr_ptr(*)
            integer(kind=c_int)                    :: tcl_list_obj_index
        end function tcl_list_obj_index

        ! int Tcl_ListObjLength(Tcl_Interp *interp, Tcl_Obj *listPtr, int *intPtr)
        function tcl_list_obj_length(interp, list_ptr, int_ptr) bind(c, name='Tcl_ListObjLength')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),         intent(in), value :: interp
            type(c_ptr),         intent(in), value :: list_ptr
            integer(kind=c_int), intent(out)       :: int_ptr
            integer(kind=c_int)                    :: tcl_list_obj_length
        end function tcl_list_obj_length

        ! int Tcl_ListObjReplace(Tcl_Interp *interp, Tcl_Obj *listPtr, int first, int count, int objc, Tcl_Obj *const objv[])
        function tcl_list_obj_replace(interp, list_ptr, first, count, objc, objv) bind(c, name='Tcl_ListObjReplace')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),         intent(in), value :: interp
            type(c_ptr),         intent(in), value :: list_ptr
            integer(kind=c_int), intent(in), value :: first
            integer(kind=c_int), intent(in), value :: count
            integer(kind=c_int), intent(in), value :: objc
            type(c_ptr),         intent(in)        :: objv
            integer(kind=c_int)                    :: tcl_list_obj_replace
        end function tcl_list_obj_replace

        ! int Tcl_MakeSafe(Tcl_Interp *interp)
        function tcl_make_safe(interp) bind(c, name='Tcl_MakeSafe')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: interp
            integer(kind=c_int)            :: tcl_make_safe
        end function tcl_make_safe

        ! Tcl_Obj *Tcl_NewDictObj()
        function tcl_new_dict_obj() bind(c, name='Tcl_NewDictObj')
            import :: c_ptr
            implicit none
            type(c_ptr) :: tcl_new_dict_obj
        end function tcl_new_dict_obj

        ! Tcl_Obj *Tcl_NewByteArrayObj(const unsigned char *bytes, int length)
        function tcl_new_byte_array_obj(bytes, length) bind(c, name='Tcl_NewByteArrayObj')
            import :: c_char, c_int, c_ptr
            implicit none
            character(kind=c_char), intent(in)        :: bytes
            integer(kind=c_int),    intent(in), value :: length
            type(c_ptr)                               :: tcl_new_byte_array_obj
        end function tcl_new_byte_array_obj

        ! Tcl_Obj *Tcl_NewDoubleObj(double *doubleValue)
        function tcl_new_double_obj(double_value) bind(c, name='Tcl_NewDoubleObj')
            import :: c_double, c_ptr
            implicit none
            real(kind=c_double), intent(in) :: double_value
            type(c_ptr)                     :: tcl_new_double_obj
        end function tcl_new_double_obj

        ! Tcl_Obj *Tcl_NewIntObj(int intValue)
        function tcl_new_int_obj(int_value) bind(c, name='Tcl_NewIntObj')
            import :: c_int, c_ptr
            implicit none
            integer(kind=c_int), intent(in) :: int_value
            type(c_ptr)                     :: tcl_new_int_obj
        end function tcl_new_int_obj

        ! Tcl_Obj *Tcl_NewListObj(int objc, Tcl_Obj *const objv[])
        function tcl_new_list_obj(objc, objv) bind(c, name='Tcl_NewListObj')
            import :: c_int, c_ptr
            implicit none
            integer(kind=c_int), intent(in), value :: objc
            type(c_ptr),         intent(in)        :: objv
            type(c_ptr)                            :: tcl_new_list_obj
        end function tcl_new_list_obj

        ! Tcl_Obj *Tcl_NewLongObj(long longValue)
        function tcl_new_long_obj(long_value) bind(c, name='Tcl_NewLongObj')
            import :: c_long, c_ptr
            implicit none
            integer(kind=c_long), intent(in) :: long_value
            type(c_ptr)                      :: tcl_new_long_obj
        end function tcl_new_long_obj

        ! Tcl_Obj *Tcl_NewObj()
        function tcl_new_obj() bind(c, name='Tcl_NewObj')
            import :: c_ptr
            implicit none
            type(c_ptr) :: tcl_new_obj
        end function tcl_new_obj

        ! Tcl_Obj *Tcl_NewStringObj(const char *bytes, int length)
        function tcl_new_string_obj_(bytes, length) bind(c, name='Tcl_NewStringObj')
            import :: c_char, c_int, c_ptr
            implicit none
            character(kind=c_char), intent(in)        :: bytes
            integer(kind=c_int),    intent(in), value :: length
            type(c_ptr)                               :: tcl_new_string_obj_
        end function tcl_new_string_obj_

        ! Tcl_Obj *Tcl_NewWideIntObj(Tcl_WideInt wideValue)
        function tcl_new_wide_int_obj(wide_value) bind(c, name='Tcl_NewWideIntObj')
            import :: c_ptr, tcl_wide_int
            implicit none
            integer(kind=tcl_wide_int), intent(in), value :: wide_value
            type(c_ptr)                                   :: tcl_new_wide_int_obj
        end function tcl_new_wide_int_obj

        ! Tcl_HashEntry *Tcl_NextHashEntry(Tcl_HashSearch *searchPtr)

        ! const char *Tcl_PosixError(TclInterp *interp)
        function tcl_posix_error_(interp) bind(c, name='Tcl_PosixError')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: interp
            type(c_ptr)                    :: tcl_posix_error_
        end function tcl_posix_error_

        ! int Tcl_PkgProvide(TclInterp *interp, const char *name, const char *version)
        function tcl_pkg_provide_(interp, name, version) bind(c, name='Tcl_PkgProvide')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: interp
            character(kind=c_char), intent(in)        :: name
            character(kind=c_char), intent(in)        :: version
            integer(kind=c_int)                       :: tcl_pkg_provide_
        end function tcl_pkg_provide_

        ! int Tcl_ScanCountedElement(const char *src, int length, int *flagsPtr)
        function tcl_scan_counted_element(src, length, flags_ptr) bind(c, name='Tcl_ScanCountedElement')
            import :: c_char, c_int
            implicit none
            character(kind=c_char), intent(in)        :: src
            integer(kind=c_int),    intent(in), value :: length
            integer(kind=c_int),    intent(out)       :: flags_ptr
            integer(kind=c_int)                       :: tcl_scan_counted_element
        end function tcl_scan_counted_element

        ! int Tcl_ScanElement(const char *src, int *flagsPtr)
        function tcl_scan_element_(src, flags_ptr) bind(c, name='Tcl_ScanElement')
            import :: c_char, c_int
            implicit none
            character(kind=c_char), intent(in)  :: src
            integer(kind=c_int),    intent(out) :: flags_ptr
            integer(kind=c_int)                 :: tcl_scan_element_
        end function tcl_scan_element_

        ! unsigned char *Tcl_SetByteArrayLength(Tcl_Obj *objPtr, int length)
        function tcl_set_byte_array_length(obj_ptr, length) bind(c, name='Tcl_SetByteArrayLength')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),         intent(in), value :: obj_ptr
            integer(kind=c_int), intent(in), value :: length
            type(c_ptr)                            :: tcl_set_byte_array_length
        end function tcl_set_byte_array_length

        ! const char *Tcl_SetVar(Tcl_Interp *interp, const char *varName, const char *newValue, int flags)
        function tcl_set_var_(interp, var_name, new_value, flags) bind(c, name='Tcl_SetVar')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: interp
            character(kind=c_char), intent(in)        :: var_name
            character(kind=c_char), intent(in)        :: new_value
            integer(kind=c_int),    intent(in), value :: flags
            type(c_ptr)                               :: tcl_set_var_
        end function tcl_set_var_

        ! const char *Tcl_SetVar2(Tcl_Interp *interp, const char *name1, const char *name2, const char *newValue, int flags)
        function tcl_set_var2_(interp, name1, name2, new_value, flags) bind(c, name='Tcl_SetVar2')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: interp
            character(kind=c_char), intent(in)        :: name1
            character(kind=c_char), intent(in)        :: name2
            character(kind=c_char), intent(in)        :: new_value
            integer(kind=c_int),    intent(in), value :: flags
            type(c_ptr)                               :: tcl_set_var2_
        end function tcl_set_var2_

        ! Tcl_Obj *Tcl_SetVar2Ex(Tcl_Interp *interp, const char *name1, const char *name2, Tcl_Obj *newValuePtr, int flags)
        function tcl_set_var2_ex_(interp, name1, name2, new_value_ptr, flags) bind(c, name='Tcl_SetVar2Ex')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: interp
            character(kind=c_char), intent(in)        :: name1
            character(kind=c_char), intent(in)        :: name2
            type(c_ptr),            intent(in), value :: new_value_ptr
            integer(kind=c_int),    intent(in), value :: flags
            type(c_ptr)                               :: tcl_set_var2_ex_
        end function tcl_set_var2_ex_

        ! int Tcl_StringMatch(const char *str, const char *pattern)
        function tcl_string_match_(str, pattern) bind(c, name='Tcl_StringMatch')
            import :: c_char, c_int
            implicit none
            character(kind=c_char), intent(in) :: str
            character(kind=c_char), intent(in) :: pattern
            integer(kind=c_int)                :: tcl_string_match_
        end function tcl_string_match_

        ! int Tcl_StringCaseMatch(const char *str, const char *pattern, int flags)
        function tcl_string_case_match_(str, pattern, flags) bind(c, name='Tcl_StringCaseMatch')
            import :: c_char, c_int
            implicit none
            character(kind=c_char), intent(in)        :: str
            character(kind=c_char), intent(in)        :: pattern
            integer(kind=c_int),    intent(in), value :: flags
            integer(kind=c_int)                       :: tcl_string_case_match_
        end function tcl_string_case_match_

        ! int Tcl_UnsetVar(Tcl_Interp *interp, const char *varName, int flags)
        function tcl_unset_var_(interp, var_name, flags) bind(c, name='Tcl_UnsetVar')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: interp
            character(kind=c_char), intent(in)        :: var_name
            integer(kind=c_int),    intent(in), value :: flags
            integer(kind=c_int)                       :: tcl_unset_var_
        end function tcl_unset_var_

        ! int Tcl_UnsetVar2(Tcl_Interp *interp, const char *name1, const char *name2, int flags)
        function tcl_unset_var2_(interp, name1, name2, flags) bind(c, name='Tcl_UnsetVar2')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: interp
            character(kind=c_char), intent(in)        :: name1
            character(kind=c_char), intent(in)        :: name2
            integer(kind=c_int),    intent(in), value :: flags
            integer(kind=c_int)                       :: tcl_unset_var2_
        end function tcl_unset_var2_

        ! int Tcl_UpVar(Tcl_Interp *interp, const char *frameName, const char *sourceName, const char *destName, int flags)
        function tcl_up_var_(interp, frame_name, source_name, dest_name, flags) bind(c, name='Tcl_UpVar')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: interp
            character(kind=c_char), intent(in)        :: frame_name
            character(kind=c_char), intent(in)        :: source_name
            character(kind=c_char), intent(in)        :: dest_name
            integer(kind=c_int),    intent(in), value :: flags
            integer(kind=c_int)                       :: tcl_up_var_
        end function tcl_up_var_

        ! int Tcl_UpVar2(Tcl_Interp *interp, const char *frameName, const char *name1, const char *name2, const char *destName, int flags)
        function tcl_up_var2_(interp, frame_name, name1, name2, dest_name, flags) bind(c, name='Tcl_UpVar2')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: interp
            character(kind=c_char), intent(in)        :: frame_name
            character(kind=c_char), intent(in)        :: name1
            character(kind=c_char), intent(in)        :: name2
            character(kind=c_char), intent(in)        :: dest_name
            integer(kind=c_int),    intent(in), value :: flags
            integer(kind=c_int)                       :: tcl_up_var2_
        end function tcl_up_var2_

        ! unsigned int Tcl_ZlibAdler32(int initValue, unsigned char *bytes, int length)
        function tcl_zlib_adler32(init_value, bytes, length) bind(c, name='Tcl_ZlibAdler32')
            import :: c_int, c_ptr
            implicit none
            integer(kind=c_int), intent(in), value :: init_value
            type(c_ptr),         intent(in), value :: bytes
            integer(kind=c_int), intent(in), value :: length
            integer(kind=c_int)                    :: tcl_zlib_adler32
        end function tcl_zlib_adler32

        ! unsigned int Tcl_ZlibCRC32(int initValue, unsigned char *bytes, int length)
        function tcl_zlib_crc32(init_value, bytes, length) bind(c, name='Tcl_ZlibCRC32')
            import :: c_int, c_ptr
            implicit none
            integer(kind=c_int), intent(in), value :: init_value
            type(c_ptr),         intent(in), value :: bytes
            integer(kind=c_int), intent(in), value :: length
            integer(kind=c_int)                    :: tcl_zlib_crc32
        end function tcl_zlib_crc32

        ! int Tcl_ZlibDeflate(Tcl_Interp *interp, int format, Tcl_Obj *dataObj, int level, Tcl_Obj *dictObj)
        function tcl_zlib_deflate(interp, format, data_obj, level, dict_obj) bind(c, name='Tcl_ZlibDeflate')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),         intent(in), value :: interp
            integer(kind=c_int), intent(in), value :: format
            type(c_ptr),         intent(in), value :: data_obj
            integer(kind=c_int), intent(in), value :: level
            type(c_ptr),         intent(in), value :: dict_obj
            integer(kind=c_int)                    :: tcl_zlib_deflate
        end function tcl_zlib_deflate

        ! int Tcl_ZlibInflate(Tcl_Interp *interp, int format, Tcl_Obj *dataObj, Tcl_Obj *dictObj)
        function tcl_zlib_inflate(interp, format, data_obj, dict_obj) bind(c, name='Tcl_ZlibInflate')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),         intent(in), value :: interp
            integer(kind=c_int), intent(in), value :: format
            type(c_ptr),         intent(in), value :: data_obj
            type(c_ptr),         intent(in), value :: dict_obj
            integer(kind=c_int)                    :: tcl_zlib_inflate
        end function tcl_zlib_inflate

        ! int Tcl_ZlibStreamChecksum(Tcl_ZlibStream zshandle)
        ! int Tcl_ZlibStreamClose(Tcl_ZlibStream zshandle)
        ! int Tcl_ZlibStreamEof(Tcl_ZlibStream zshandle)

        ! int Tcl_ZlibStreamGet(Tcl_ZlibStream zshandle, Tcl_Obj *data, int count)
        function tcl_zlib_stream_get(zhandle, data, count) bind(c, name='Tcl_ZlibStreamGet')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),         intent(in), value :: zhandle
            type(c_ptr),         intent(in), value :: data
            integer(kind=c_int), intent(in), value :: count
            integer(kind=c_int)                    :: tcl_zlib_stream_get
        end function tcl_zlib_stream_get

        ! Tcl_Obj *Tcl_ZlibStreamGetCommandName(Tcl_ZlibStream zshandle)

        ! int Tcl_ZlibStreamInit(Tcl_Interp *interp, int mode, int format, int level, Tcl_Obj *dictObj, Tcl_ZlibStream *zshandle)
        function tcl_zlib_stream_init(interp, mode, format, level, dict_obj, zhandle) bind(c, name='Tcl_ZlibStreamInit')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),         intent(in), value :: interp
            integer(kind=c_int), intent(in), value :: mode
            integer(kind=c_int), intent(in), value :: format
            integer(kind=c_int), intent(in), value :: level
            type(c_ptr),         intent(in), value :: dict_obj
            type(c_ptr),         intent(in), value :: zhandle
            integer(kind=c_int)                    :: tcl_zlib_stream_init
        end function tcl_zlib_stream_init

        ! int Tcl_ZlibStreamPut(Tcl_ZlibStream zshandle, Tcl_Obj *data, int flush)
        ! int Tcl_ZlibStreamReset(Tcl_ZlibStream zshandle)

        ! **********************************************************************
        ! SUBROUTINE INTERFACES
        ! **********************************************************************
        ! void Tcl_AppendElement(Tcl_Interp *interp, const char *element)
        subroutine tcl_append_element_(obj_ptr, element) bind(c, name='Tcl_AppendElement')
            import :: c_char, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: obj_ptr
            character(kind=c_char), intent(in)        :: element
        end subroutine tcl_append_element_

        ! void Tcl_AppendResult(TclInterp *interp, char *result, char *result, ..., (char *) NULL)
        subroutine tcl_append_result_(interp, result, null) bind(c, name='Tcl_AppendResult')
            import :: c_char, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: interp
            character(kind=c_char), intent(in)        :: result
            type(c_ptr),            intent(in), value :: null
        end subroutine tcl_append_result_

        ! void Tcl_AppendToObj(Tcl_Obj *objPtr, const char *bytes, int length)
        subroutine tcl_append_to_obj_(obj_ptr, bytes, length) bind(c, name='Tcl_AppendToObj')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: obj_ptr
            character(kind=c_char), intent(in)        :: bytes
            integer(kind=c_int),    intent(in), value :: length
        end subroutine tcl_append_to_obj_

        ! void Tcl_DecrRefCount(Tcl_Obj *objPtr)
        subroutine tcl_decr_ref_count(obj_ptr) bind(c, name='Tcl_DecrRefCount_')
           import :: c_ptr
           implicit none
           type(c_ptr), intent(in), value :: obj_ptr
        end subroutine tcl_decr_ref_count

        ! void Tcl_DeleteHashEntry(Tcl_HashEntry *entryPtr)
        ! void Tcl_DeleteHashTable(Tcl_HashTable *tablePtr)

        ! void Tcl_DeleteInterp(TclInterp *interp)
        subroutine tcl_delete_interp(interp) bind(c, name='Tcl_DeleteInterp')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: interp
        end subroutine tcl_delete_interp

        ! void Tcl_DeleteNamespace(Tcl_Namespace *nsPtr)
        subroutine tcl_delete_namespace(ns_ptr) bind(c, name='Tcl_DeleteNamespace')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: ns_ptr
        end subroutine tcl_delete_namespace

        ! void Tcl_DictObjDone(Tcl_DictSearch *searchPtr)
        subroutine tcl_dict_obj_done(search_ptr) bind(c, name='Tcl_DictObjDone')
            import :: tcl_dict_search
            implicit none
            type(tcl_dict_search), intent(in) :: search_ptr
        end subroutine tcl_dict_obj_done

        ! void Tcl_DictObjNext(Tcl_DictSearch *searchPtr, Tcl_Obj **keyPtrPtr, Tcl_Obj *valuePtrPtr, int *donePtr)
        subroutine tcl_dict_obj_next_(search_ptr, key_ptr_ptr, value_ptr_ptr, done_ptr) bind(c, name='Tcl_DictObjNext')
            import :: c_int, c_ptr, tcl_dict_search
            implicit none
            type(tcl_dict_search), intent(inout) :: search_ptr
            type(c_ptr),           intent(out)   :: key_ptr_ptr
            type(c_ptr),           intent(out)   :: value_ptr_ptr
            integer(kind=c_int),   intent(out)   :: done_ptr
        end subroutine tcl_dict_obj_next_

        ! void Tcl_Exit(int status)
        subroutine tcl_exit(status) bind(c, name='Tcl_Exit')
            import :: c_int
            implicit none
            integer(kind=c_int), intent(in), value :: status
        end subroutine tcl_exit

        ! void Tcl_FindExecutable(const char *argv0)
        subroutine tcl_find_executable_(argv0) bind(c, name='Tcl_FindExecutable')
            import :: c_char
            implicit none
            character(kind=c_char), intent(in) :: argv0
        end subroutine tcl_find_executable_

        ! void Tcl_GetCommandFullName(Tcl_Interp *interp, Tcl_Command token, Tcl_Obj *objPtr)
        subroutine tcl_get_command_full_name(interp, token, obj_ptr) bind(c, name='Tcl_GetCommandFullName')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: interp
            type(c_ptr), intent(in), value :: token
            type(c_ptr), intent(in), value :: obj_ptr
        end subroutine tcl_get_command_full_name

        ! void Tcl_GetTime(Tcl_Time *timeBuf)
        subroutine tcl_get_time(time_buf) bind(c, name='Tcl_GetTime')
            import :: tcl_time
            implicit none
            type(tcl_time), intent(out) :: time_buf
        end subroutine tcl_get_time

        ! void Tcl_GetVersion(int *major, int *minor, int *patchLevel, Tcl_ReleaseType *type)
        subroutine tcl_get_version(major, minor, patch_level, type) bind(c, name='Tcl_GetVersion')
            import :: c_int
            implicit none
            integer(kind=c_int), intent(out) :: major
            integer(kind=c_int), intent(out) :: minor
            integer(kind=c_int), intent(out) :: patch_level
            integer(kind=c_int), intent(out) :: type
        end subroutine tcl_get_version

        ! void Tcl_IncrRefCount(Tcl_Obj *objPtr)
        subroutine tcl_incr_ref_count(obj_ptr) bind(c, name='Tcl_IncrRefCount_')
           import :: c_ptr
           implicit none
           type(c_ptr), intent(in), value :: obj_ptr
        end subroutine tcl_incr_ref_count

        ! void Tcl_InitCustomHashTable(Tcl_HashTable *tablePtr, int keyType, const Tcl_HashKeyType *typePtr)
        ! void Tcl_InitHashTable(Tcl_HashTable *tablePtr, int keyType)
        ! void Tcl_InitObjHashTable(Tcl_HashTable *tablePtr)

        ! void Tcl_Preserve(ClientData clientData)
        subroutine tcl_preserve(client_data) bind(c, name='Tcl_Preserve')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: client_data
        end subroutine tcl_preserve

        ! void Tcl_Release(ClientData clientData)
        subroutine tcl_release(client_data) bind(c, name='Tcl_Release')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: client_data
        end subroutine tcl_release

        ! void Tcl_SetByteArrayObj(Tcl_Obj *objPtr, const unsigned char *bytes, int length)
        subroutine tcl_set_byte_array_obj(obj_ptr, bytes, length) bind(c, name='Tcl_SetByteArrayObj')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: obj_ptr
            character(kind=c_char), intent(in)        :: bytes
            integer(kind=c_int),    intent(in), value :: length
        end subroutine tcl_set_byte_array_obj

        ! void *Tcl_SetBooleanObj(Tcl_Obj *objPtr, int boolValue)
        subroutine tcl_set_boolean_obj_(obj_ptr, bool_value) bind(c, name='Tcl_SetBooleanObj')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),         intent(in), value :: obj_ptr
            integer(kind=c_int), intent(in), value :: bool_value
        end subroutine tcl_set_boolean_obj_

        ! void *Tcl_SetDoubleObj(Tcl_Obj *objPtr, double doubleValue)
        subroutine tcl_set_double_obj(obj_ptr, double_value) bind(c, name='Tcl_SetDoubleObj')
            import :: c_double, c_ptr
            implicit none
            type(c_ptr),         intent(in), value :: obj_ptr
            real(kind=c_double), intent(in), value :: double_value
        end subroutine tcl_set_double_obj

        ! void Tcl_SetIntObj(Tcl_Obj *objPtr, int intValue)
        subroutine tcl_set_int_obj(obj_ptr, int_value) bind(c, name='Tcl_SetIntObj')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),         intent(in), value :: obj_ptr
            integer(kind=c_int), intent(in), value :: int_value
        end subroutine tcl_set_int_obj

        ! void Tcl_SetListObj(Tcl_Obj *objPtr, int objc, Tcl_Obj *const objv[])
        subroutine tcl_set_list_obj(obj_ptr, objc, objv) bind(c, name='Tcl_SetListObj')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),         intent(in), value :: obj_ptr
            integer(kind=c_int), intent(in), value :: objc
            type(c_ptr),         intent(in)        :: objv(*)
        end subroutine tcl_set_list_obj

        ! void Tcl_SetLongObj(Tcl_Obj *objPtr, long longValue)
        subroutine tcl_set_long_obj(obj_ptr, long_value) bind(c, name='Tcl_SetLongObj')
            import :: c_long, c_ptr
            implicit none
            type(c_ptr),          intent(in), value :: obj_ptr
            integer(kind=c_long), intent(in), value :: long_value
        end subroutine tcl_set_long_obj

        ! void Tcl_SetStringObj(Tcl_Obj *objPtr, const char *bytes, int length)
        subroutine tcl_set_string_obj_(obj_ptr, bytes, length) bind(c, name='Tcl_SetStringObj')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: obj_ptr
            character(kind=c_char), intent(in)        :: bytes
            integer(kind=c_int),    intent(in), value :: length
        end subroutine tcl_set_string_obj_

        ! void Tcl_SetObjResult(TclInterp *interp, Tcl_Obj *objPtr)
        subroutine tcl_set_obj_result(interp, obj_ptr) bind(c, name='Tcl_SetObjResult')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: interp
            type(c_ptr), intent(in), value :: obj_ptr
        end subroutine tcl_set_obj_result

        ! void Tcl_Sleep(int ms)
        subroutine tcl_sleep(ms) bind(c, name='Tcl_Sleep')
            import :: c_int
            implicit none
            integer(kind=c_int), intent(in), value :: ms
        end subroutine tcl_sleep

        ! void Tcl_UnlinkVar(Tcl_Interp *interp, const char *varName)
        subroutine tcl_unlink_var_(interp, var_name) bind(c, name='Tcl_UnlinkVar')
            import :: c_char, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: interp
            character(kind=c_char), intent(in)        :: var_name
        end subroutine tcl_unlink_var_

        ! void Tcl_UpdateLinkedVar(Tcl_Interp *interp, const char *varName)
        subroutine tcl_update_linked_var_(interp, var_name) bind(c, name='Tcl_UpdateLinkedVar')
            import :: c_char, c_ptr
            implicit none
            type(c_ptr),            intent(in), value :: interp
            character(kind=c_char), intent(in)        :: var_name
        end subroutine tcl_update_linked_var_

        ! void Tcl_WrongNumArgs(TclInterp *interp, int objc, Tcl_Obj *objv[], const char *message)
        subroutine tcl_wrong_num_args_(interp, objc, objv, message) bind(c, name='Tcl_WrongNumArgs')
             import :: c_char, c_int, c_ptr
             implicit none
             type(c_ptr),            intent(in), value :: interp
             integer(kind=c_int),    intent(in), value :: objc
             type(c_ptr),            intent(in)        :: objv(*)
             character(kind=c_char), intent(in)        :: message
        end subroutine tcl_wrong_num_args_
    end interface

    interface
        function c_strlen(str) bind(c, name='strlen')
            import :: c_ptr, c_size_t
            implicit none
            type(c_ptr), intent(in), value :: str
            integer(c_size_t)              :: c_strlen
        end function c_strlen
    end interface
contains
    ! **************************************************************************
    ! PUBLIC WRAPPER FUNCTIONS
    ! **************************************************************************
    function tcl_chdir(dir_name) result(rc)
        character(len=*), intent(in) :: dir_name
        integer                      :: rc

        rc = tcl_chdir_(dir_name // c_null_char)
    end function tcl_chdir

    function tcl_convert_counted_element(src, length, dst, flags) result(rc)
        character(len=*), intent(in)           :: src
        integer,          intent(in)           :: length
        character(len=*), intent(in)           :: dst
        integer,          intent(in), optional :: flags
        integer                                :: rc

        if (present(flags)) then
            rc = tcl_convert_counted_element_(src // c_null_char, length, dst // c_null_char, flags)
        else
            rc = tcl_convert_counted_element_(src // c_null_char, length, dst // c_null_char, 0)
        end if
    end function tcl_convert_counted_element

    function tcl_convert_element(src, dst, flags) result(rc)
        character(len=*), intent(in)           :: src
        character(len=*), intent(in)           :: dst
        integer,          intent(in), optional :: flags
        integer                                :: rc

        if (present(flags)) then
            rc = tcl_convert_element_(src // c_null_char, dst // c_null_char, flags)
        else
            rc = tcl_convert_element_(src // c_null_char, dst // c_null_char, 0)
        end if
    end function tcl_convert_element

    function tcl_create_child(interp, name, is_safe) result(ptr)
        !! Deprecated.
        type(c_ptr),      intent(in) :: interp
        character(len=*), intent(in) :: name
        logical,          intent(in) :: is_safe
        type(c_ptr)                  :: ptr

        ptr = tcl_create_slave(interp, name, is_safe)
    end function tcl_create_child

    function tcl_create_namespace(interp, name, client_data, delete_proc) result(ptr)
        type(c_ptr),      intent(in)           :: interp
        character(len=*), intent(in)           :: name
        type(c_ptr),      intent(in), optional :: client_data
        type(c_funptr),   intent(in), optional :: delete_proc
        type(c_ptr)                            :: ptr

        if (present(client_data) .and. present(delete_proc)) then
            ptr = tcl_create_namespace_(interp, name // c_null_char, client_data, delete_proc)
        else if (present(client_data)) then
            ptr = tcl_create_namespace_(interp, name // c_null_char, client_data, c_null_funptr)
        else if (present(delete_proc)) then
            ptr = tcl_create_namespace_(interp, name // c_null_char, c_null_ptr, delete_proc)
        else
            ptr = tcl_create_namespace_(interp, name // c_null_char, c_null_ptr, c_null_funptr)
        end if
    end function tcl_create_namespace

    function tcl_create_slave(interp, name, is_safe) result(ptr)
        type(c_ptr),      intent(in) :: interp
        character(len=*), intent(in) :: name
        logical,          intent(in) :: is_safe
        type(c_ptr)                  :: ptr

        if (is_safe) then
            ptr = tcl_create_slave_(interp, name // c_null_char, 1)
        else
            ptr = tcl_create_slave_(interp, name // c_null_char, 0)
        end if
    end function tcl_create_slave

    function tcl_create_obj_command(interp, cmd_name, proc, client_data, delete_proc) result(ptr)
        type(c_ptr),      intent(in)           :: interp
        character(len=*), intent(in)           :: cmd_name
        type(c_funptr),   intent(in)           :: proc
        type(c_ptr),      intent(in), optional :: client_data
        type(c_funptr),   intent(in), optional :: delete_proc
        type(c_ptr)                            :: ptr

        if (present(client_data) .and. present(delete_proc)) then
            ptr = tcl_create_obj_command_(interp, cmd_name // c_null_char, proc, client_data, delete_proc)
        else if (present(client_data)) then
            ptr = tcl_create_obj_command_(interp, cmd_name // c_null_char, proc, client_data, c_null_funptr)
        else if (present(delete_proc)) then
            ptr = tcl_create_obj_command_(interp, cmd_name // c_null_char, proc, c_null_ptr, delete_proc)
        else
            ptr = tcl_create_obj_command_(interp, cmd_name // c_null_char, proc, c_null_ptr, c_null_funptr)
        end if
    end function tcl_create_obj_command

    function tcl_delete_command(interp, cmd_name) result(rc)
        type(c_ptr),      intent(in) :: interp
        character(len=*), intent(in) :: cmd_name
        integer                      :: rc

        rc = tcl_delete_command_(interp, cmd_name // c_null_char)
    end function tcl_delete_command

    function tcl_dict_obj_first(interp, dict_ptr, search, key_ptr, value_ptr, done) result(rc)
        type(c_ptr),           intent(in)    :: interp
        type(c_ptr),           intent(in)    :: dict_ptr
        type(tcl_dict_search), intent(inout) :: search
        type(c_ptr),           intent(out)   :: key_ptr
        type(c_ptr),           intent(out)   :: value_ptr
        logical,               intent(out)   :: done
        integer                              :: rc
        integer                              :: i

        rc = tcl_dict_obj_first_(interp, dict_ptr, search, key_ptr, value_ptr, i)
        done = (i /= 0)
    end function tcl_dict_obj_first

    function tcl_errno_msg(error_code) result(str)
        integer, intent(in), optional :: error_code
        character(len=:), allocatable :: str
        type(c_ptr)                   :: ptr

        if (present(error_code)) then
            ptr = tcl_errno_msg_(error_code)
        else
            ptr = tcl_errno_msg_(tcl_get_errno())
        end if

        call c_f_str_ptr(ptr, str)
        if (.not. allocated(str)) str = ''
    end function tcl_errno_msg

    function tcl_eval(interp, script) result(rc)
        type(c_ptr),      intent(in) :: interp
        character(len=*), intent(in) :: script
        integer                      :: rc

        rc = tcl_eval_(interp, script // c_null_char)
    end function tcl_eval

    function tcl_eval_ex(interp, script, num_bytes, flags) result(rc)
        type(c_ptr),      intent(in)           :: interp
        character(len=*), intent(in)           :: script
        integer,          intent(in), optional :: num_bytes
        integer,          intent(in), optional :: flags
        integer                                :: rc

        if (present(num_bytes) .and. present(flags)) then
            rc = tcl_eval_ex_(interp, script, num_bytes, flags)
        else if (present(num_bytes)) then
            rc = tcl_eval_ex_(interp, script, num_bytes, 0)
        else if (present(flags)) then
            rc = tcl_eval_ex_(interp, script, len(script), flags)
        else
            rc = tcl_eval_ex_(interp, script, len(script), 0)
        end if
    end function tcl_eval_ex

    function tcl_eval_file(interp, file_name) result(rc)
        type(c_ptr),      intent(in) :: interp
        character(len=*), intent(in) :: file_name
        integer                      :: rc

        rc = tcl_eval_file_(interp, file_name // c_null_char)
    end function tcl_eval_file

    function tcl_expr_boolean(interp, expr, boolean) result(rc)
        type(c_ptr),      intent(in)  :: interp
        character(len=*), intent(in)  :: expr
        logical,          intent(out) :: boolean
        integer                       :: rc
        integer                       :: i

        rc = tcl_expr_boolean_(interp, expr // c_null_char, i)
        boolean = (i /= 0)
    end function tcl_expr_boolean

    function tcl_expr_boolean_obj(interp, obj_ptr, boolean) result(rc)
        type(c_ptr), intent(in)  :: interp
        type(c_ptr), intent(in)  :: obj_ptr
        logical,     intent(out) :: boolean
        integer                  :: rc
        integer                  :: i

        rc = tcl_expr_boolean_obj_(interp, obj_ptr, i)
        boolean = (i /= 0)
    end function tcl_expr_boolean_obj

    function tcl_expr_double(interp, expr, double) result(rc)
        type(c_ptr),      intent(in)  :: interp
        character(len=*), intent(in)  :: expr
        real(kind=r8),    intent(out) :: double
        integer                       :: rc

        rc = tcl_expr_double_(interp, expr // c_null_char, double)
    end function tcl_expr_double

    function tcl_expr_long(interp, expr, long) result(rc)
        type(c_ptr),      intent(in)  :: interp
        character(len=*), intent(in)  :: expr
        integer(kind=i8), intent(out) :: long
        integer                       :: rc

        rc = tcl_expr_long_(interp, expr // c_null_char, long)
    end function tcl_expr_long

    function tcl_expr_string(interp, expr) result(rc)
        type(c_ptr),      intent(in) :: interp
        character(len=*), intent(in) :: expr
        integer                      :: rc

        rc = tcl_expr_string_(interp, expr // c_null_char)
    end function tcl_expr_string

    function tcl_expose_command(interp, hidden_cmd_name, cmd_name) result(rc)
        type(c_ptr),      intent(in) :: interp
        character(len=*), intent(in) :: hidden_cmd_name
        character(len=*), intent(in) :: cmd_name
        integer                      :: rc

        rc = tcl_expose_command_(interp, hidden_cmd_name // c_null_char, cmd_name // c_null_char)
    end function tcl_expose_command

    function tcl_fs_copy_directory(src_path_ptr, dest_path_ptr, error_ptr) result(rc)
        type(c_ptr), intent(in)            :: src_path_ptr
        type(c_ptr), intent(in)            :: dest_path_ptr
        type(c_ptr), intent(out), optional :: error_ptr
        integer                            :: rc
        type(c_ptr)                        :: ptr

        rc = tcl_fs_copy_directory_(src_path_ptr, dest_path_ptr, ptr)
        if (present(error_ptr)) error_ptr = ptr
    end function tcl_fs_copy_directory

    function tcl_fs_equal_paths(first_ptr, second_ptr) result(equal)
        type(c_ptr), intent(in) :: first_ptr
        type(c_ptr), intent(in) :: second_ptr
        logical                 :: equal
        integer                 :: i

        i = tcl_fs_equal_paths_(first_ptr, second_ptr)
        equal = (i == 1)
    end function tcl_fs_equal_paths

    function tcl_fs_eval_file_ex(interp, path_ptr, encoding_name) result(rc)
        type(c_ptr),      intent(in) :: interp
        type(c_ptr),      intent(in) :: path_ptr
        character(len=*), intent(in) :: encoding_name
        integer                      :: rc

        rc = tcl_fs_eval_file_ex_(interp, path_ptr, encoding_name // c_null_char)
    end function tcl_fs_eval_file_ex

    function tcl_fs_get_native_path(path_ptr) result(str)
        type(c_ptr), intent(in)       :: path_ptr
        character(len=:), allocatable :: str
        type(c_ptr)                   :: ptr

        ptr = tcl_fs_get_native_path_(path_ptr)
        call c_f_str_ptr(ptr, str)
        if (.not. allocated(str)) str = ''
    end function tcl_fs_get_native_path

    function tcl_fs_get_translated_string_path(interp, path_ptr) result(str)
        type(c_ptr), intent(in)        :: interp
        type(c_ptr), intent(in)        :: path_ptr
        character(len=:), allocatable  :: str
        type(c_ptr)                    :: ptr

        ptr = tcl_fs_get_translated_string_path_(interp, path_ptr)
        call c_f_str_ptr(ptr, str)
        if (.not. allocated(str)) str = ''
    end function tcl_fs_get_translated_string_path

    function tcl_fs_load_file(interp, path_ptr, sym1, sym2, proc1_ptr, proc2_ptr, load_handle_ptr, unload_proc_ptr) result(rc)
        type(c_ptr),      intent(in)  :: interp
        type(c_ptr),      intent(in)  :: path_ptr
        character(len=*), intent(in)  :: sym1
        character(len=*), intent(in)  :: sym2
        type(c_funptr),   intent(out) :: proc1_ptr
        type(c_funptr),   intent(out) :: proc2_ptr
        type(c_ptr),      intent(out) :: load_handle_ptr
        type(c_funptr),   intent(out) :: unload_proc_ptr
        integer                       :: rc

        rc = tcl_fs_load_file_(interp, path_ptr, sym1 // c_null_char, sym2 // c_null_char, &
                               proc1_ptr, proc2_ptr, load_handle_ptr, unload_proc_ptr)
    end function tcl_fs_load_file

    function tcl_fs_match_in_directory(interp, result_ptr, path_ptr, pattern, types) result(rc)
        type(c_ptr),                      intent(in)           :: interp
        type(c_ptr),                      intent(out)          :: result_ptr
        type(c_ptr),                      intent(in)           :: path_ptr
        character(len=*),                 intent(in)           :: pattern
        type(tcl_glob_type_data), target, intent(in), optional :: types
        integer                                                :: rc

        if (present(types)) then
            rc = tcl_fs_match_in_directory_(interp, result_ptr, path_ptr, &
                                            pattern // c_null_char, c_loc(types))
        else
            rc = tcl_fs_match_in_directory_(interp, result_ptr, path_ptr, &
                                            pattern // c_null_char, c_null_ptr)
        end if
    end function tcl_fs_match_in_directory

    function tcl_fs_open_file_channel(interp, path_ptr, mode_string, permissions) result(ptr)
        type(c_ptr),      intent(in) :: interp
        type(c_ptr),      intent(in) :: path_ptr
        character(len=*), intent(in) :: mode_string
        integer,          intent(in) :: permissions
        type(c_ptr)                  :: ptr

        ptr = tcl_fs_open_file_channel_(interp, path_ptr, mode_string // c_null_char, permissions)
    end function tcl_fs_open_file_channel

    function tcl_fs_remove_directory(path_ptr, recursive, error_ptr) result(rc)
        type(c_ptr), intent(in)            :: path_ptr
        logical,     intent(in)            :: recursive
        type(c_ptr), intent(out), optional :: error_ptr
        integer                            :: rc
        type(c_ptr)                        :: ptr

        if (recursive) then
            rc = tcl_fs_remove_directory_(path_ptr, 1, ptr)
        else
            rc = tcl_fs_remove_directory_(path_ptr, 0, ptr)
        end if

        if (present(error_ptr)) error_ptr = ptr
    end function tcl_fs_remove_directory

    function tcl_get_boolean(interp, src, bool_value) result(rc)
        type(c_ptr),      intent(in)  :: interp
        character(len=*), intent(in)  :: src
        logical,          intent(out) :: bool_value
        integer                       :: rc
        integer                       :: i

        rc = tcl_get_boolean_(interp, src // c_null_char, i)
        if (rc /= TCL_OK) return
        bool_value = (i /= 0)
    end function tcl_get_boolean

    function tcl_get_boolean_from_obj(interp, obj_ptr, bool_value) result(rc)
        type(c_ptr),      intent(in)  :: interp
        type(c_ptr),      intent(in)  :: obj_ptr
        logical,          intent(out) :: bool_value
        integer                       :: rc
        integer                       :: i

        rc = tcl_get_boolean_from_obj_(interp, obj_ptr, i)
        if (rc /= TCL_OK) return
        bool_value = (i /= 0)
    end function tcl_get_boolean_from_obj

    function tcl_get_command_name(interp, token) result(str)
        type(c_ptr), intent(in)       :: interp
        type(c_ptr), intent(in)       :: token
        character(len=:), allocatable :: str
        type(c_ptr)                   :: ptr

        ptr = tcl_get_command_name_(interp, token)
        call c_f_str_ptr(ptr, str)
        if (.not. allocated(str)) str = ''
    end function tcl_get_command_name

    function tcl_get_double(interp, src, double_value) result(rc)
        type(c_ptr),      intent(in)  :: interp
        character(len=*), intent(in)  :: src
        real(kind=r8),    intent(out) :: double_value
        integer                       :: rc

        rc = tcl_get_double_(interp, src // c_null_char, double_value)
    end function tcl_get_double

    function tcl_get_host_name() result(str)
        character(len=:), allocatable :: str
        type(c_ptr)                   :: ptr
        ptr = tcl_get_host_name_()
        call c_f_str_ptr(ptr, str)
        if (.not. allocated(str)) str = ''
    end function tcl_get_host_name

    function tcl_get_int(interp, src, int_value) result(rc)
        type(c_ptr),      intent(in)  :: interp
        character(len=*), intent(in)  :: src
        integer,          intent(out) :: int_value
        integer                       :: rc

        rc = tcl_get_int_(interp, src // c_null_char, int_value)
    end function tcl_get_int

    function tcl_get_name_of_executable() result(str)
        character(len=:), allocatable :: str
        type(c_ptr)                   :: ptr

        ptr = tcl_get_name_of_executable_()
        call c_f_str_ptr(ptr, str)
        if (.not. allocated(str)) str = ''
    end function tcl_get_name_of_executable

    function tcl_get_obj_type(type_name) result(ptr)
        character(len=*), intent(in) :: type_name
        type(c_ptr)                  :: ptr

        ptr = tcl_get_obj_type_(type_name // c_null_char)
    end function tcl_get_obj_type

    function tcl_get_path_type(path) result(type)
        character(len=*), intent(in) :: path
        integer                      :: type

        type = tcl_get_path_type_(path // c_null_char)
    end function tcl_get_path_type

    function tcl_get_string(obj_ptr) result(str)
        type(c_ptr), intent(in)       :: obj_ptr
        character(len=:), allocatable :: str
        type(c_ptr)                   :: ptr

        if (c_associated(obj_ptr)) ptr = tcl_get_string_(obj_ptr)
        call c_f_str_ptr(ptr, str)
        if (.not. allocated(str)) str = ''
    end function tcl_get_string

    function tcl_get_string_from_obj(obj_ptr, length) result(str)
        type(c_ptr), intent(in)            :: obj_ptr
        integer,     intent(out), optional :: length
        character(len=:), allocatable      :: str
        integer                            :: n
        type(c_ptr)                        :: ptr

        n = 0
        if (c_associated(obj_ptr)) ptr = tcl_get_string_from_obj_(obj_ptr, n)
        if (present(length)) length = n
        call c_f_str_ptr(ptr, str)
        if (.not. allocated(str)) str = ''
    end function tcl_get_string_from_obj

    function tcl_get_string_result(interp) result(str)
        type(c_ptr), intent(in)       :: interp
        character(len=:), allocatable :: str
        type(c_ptr)                   :: ptr

        ptr = tcl_get_string_result_(interp)
        call c_f_str_ptr(ptr, str)
        if (.not. allocated(str)) str = ''
    end function tcl_get_string_result

    function tcl_get_var(interp, var_name, flags) result(str)
        type(c_ptr),      intent(in)           :: interp
        character(len=*), intent(in)           :: var_name
        integer,          intent(in), optional :: flags
        character(len=:), allocatable          :: str
        type(c_ptr)                            :: ptr

        if (present(flags)) then
            ptr = tcl_get_var_(interp, var_name // c_null_char, flags)
        else
            ptr = tcl_get_var_(interp, var_name // c_null_char, 0)
        end if

        call c_f_str_ptr(ptr, str)
        if (.not. allocated(str)) str = ''
    end function tcl_get_var

    function tcl_get_var2(interp, name1, name2, flags) result(str)
        type(c_ptr),      intent(in)           :: interp
        character(len=*), intent(in)           :: name1
        character(len=*), intent(in)           :: name2
        integer,          intent(in), optional :: flags
        character(len=:), allocatable          :: str
        type(c_ptr)                            :: ptr

        if (present(flags)) then
            ptr = tcl_get_var2_(interp, name1 // c_null_char, name2 // c_null_char, flags)
        else
            ptr = tcl_get_var2_(interp, name1 // c_null_char, name2 // c_null_char, 0)
        end if

        call c_f_str_ptr(ptr, str)
        if (.not. allocated(str)) str = ''
    end function tcl_get_var2

    function tcl_hide_command(interp, cmd_name, hidden_cmd_name) result(rc)
        type(c_ptr),      intent(in) :: interp
        character(len=*), intent(in) :: cmd_name
        character(len=*), intent(in) :: hidden_cmd_name
        integer                      :: rc

        rc = tcl_hide_command_(interp, cmd_name // c_null_char, hidden_cmd_name // c_null_char)
    end function tcl_hide_command

    function tcl_interp_active(interp) result(active)
        type(c_ptr), intent(in) :: interp
        logical                 :: active

        active = .false.
        if (tcl_interp_active_(interp) /= 0) active = .true.
    end function tcl_interp_active

    function tcl_interp_deleted(interp) result(deleted)
        type(c_ptr), intent(in) :: interp
        logical                 :: deleted

        deleted = .false.
        if (tcl_interp_deleted_(interp) /= 0) deleted = .true.
    end function tcl_interp_deleted

    function tcl_is_safe(interp) result(is_safe)
        type(c_ptr), intent(in) :: interp
        logical                 :: is_safe
        integer                 :: i

        i = tcl_is_safe_(interp)
        is_safe = (i /= 0)
    end function tcl_is_safe

    function tcl_is_shared(interp) result(is_shared)
        type(c_ptr), intent(in) :: interp
        logical                 :: is_shared
        integer                 :: i

        i = tcl_is_safe_(interp)
        is_shared = (i /= 0)
    end function tcl_is_shared

    function tcl_new_string_obj(bytes, length) result(ptr)
        character(len=*), intent(in)           :: bytes
        integer,          intent(in), optional :: length
        type(c_ptr)                            :: ptr

        if (present(length)) then
            ptr = tcl_new_string_obj_(bytes, length)
        else
            ptr = tcl_new_string_obj_(bytes, len(bytes))
        end if
    end function tcl_new_string_obj

    function tcl_posix_error(interp) result(str)
        type(c_ptr), intent(in)       :: interp
        character(len=:), allocatable :: str
        type(c_ptr)                   :: ptr

        ptr = tcl_posix_error_(interp)
        call c_f_str_ptr(ptr, str)
        if (.not. allocated(str)) str = ''
    end function tcl_posix_error

    function tcl_pkg_provide(interp, name, version) result(rc)
        type(c_ptr),      intent(in) :: interp
        character(len=*), intent(in) :: name
        character(len=*), intent(in) :: version
        integer                      :: rc

        rc = tcl_pkg_provide_(interp, name // c_null_char, version // c_null_char)
    end function tcl_pkg_provide

    function tcl_scan_element(src, flags) result(rc)
        character(len=*), intent(in)  :: src
        integer,          intent(out) :: flags
        integer                       :: rc

        rc = tcl_scan_element_(src // c_null_char, flags)
    end function tcl_scan_element

    function tcl_set_var(interp, var_name, new_value, flags) result(ptr)
        type(c_ptr),      intent(in)           :: interp
        character(len=*), intent(in)           :: var_name
        character(len=*), intent(in)           :: new_value
        integer,          intent(in), optional :: flags
        type(c_ptr)                            :: ptr

        if (present(flags)) then
            ptr = tcl_set_var_(interp, var_name // c_null_char, new_value // c_null_char, flags)
        else
            ptr = tcl_set_var_(interp, var_name // c_null_char, new_value // c_null_char, 0)
        end if
    end function tcl_set_var

    function tcl_set_var2(interp, name1, name2, new_value, flags) result(ptr)
        type(c_ptr),      intent(in)           :: interp
        character(len=*), intent(in)           :: name1
        character(len=*), intent(in)           :: name2
        character(len=*), intent(in)           :: new_value
        integer,          intent(in), optional :: flags
        type(c_ptr)                            :: ptr

        if (present(flags)) then
            ptr = tcl_set_var2_(interp, name1 // c_null_char, name2 // c_null_char, &
                                new_value // c_null_char, flags)
        else
            ptr = tcl_set_var2_(interp, name1 // c_null_char, name2 // c_null_char, &
                                new_value // c_null_char, 0)
        end if
    end function tcl_set_var2

    function tcl_set_var2_ex(interp, name1, name2, new_value_ptr, flags) result(ptr)
        type(c_ptr),      intent(in)           :: interp
        character(len=*), intent(in)           :: name1
        character(len=*), intent(in)           :: name2
        type(c_ptr),      intent(in)           :: new_value_ptr
        integer,          intent(in), optional :: flags
        type(c_ptr)                            :: ptr

        if (present(flags)) then
            ptr = tcl_set_var2_ex_(interp, name1 // c_null_char, name2 // c_null_char, new_value_ptr, flags)
        else
            ptr = tcl_set_var2_ex_(interp, name1 // c_null_char, name2 // c_null_char, new_value_ptr, 0)
        end if
    end function tcl_set_var2_ex

    function tcl_string_match(str, pattern) result(match)
        character(len=*), intent(in) :: str
        character(len=*), intent(in) :: pattern
        logical                      :: match
        integer                      :: i

        i = tcl_string_match_(str // c_null_char, pattern // c_null_char)
        match = (i /= 0)
    end function tcl_string_match

    function tcl_string_case_match(str, pattern, flags) result(match)
        character(len=*), intent(in) :: str
        character(len=*), intent(in) :: pattern
        integer,          intent(in) :: flags
        logical                      :: match
        integer                      :: i

        i = tcl_string_case_match_(str // c_null_char, pattern // c_null_char, flags)
        match = (i /= 0)
    end function tcl_string_case_match

    function tcl_link_var(interp, var_name, addr, type) result(rc)
        type(c_ptr),      intent(in) :: interp
        character(len=*), intent(in) :: var_name
        type(c_ptr),      intent(in) :: addr
        integer,          intent(in) :: type
        integer                      :: rc

        rc = tcl_link_var_(interp, var_name // c_null_char, addr, type)
    end function tcl_link_var

    function tcl_unset_var(interp, var_name, flags) result(rc)
        type(c_ptr),      intent(in)           :: interp
        character(len=*), intent(in)           :: var_name
        integer,          intent(in), optional :: flags
        integer                                :: rc

        if (present(flags)) then
            rc = tcl_unset_var_(interp, var_name // c_null_char, flags)
        else
            rc = tcl_unset_var_(interp, var_name // c_null_char, 0)
        end if
    end function tcl_unset_var

    function tcl_unset_var2(interp, name1, name2, flags) result(rc)
        type(c_ptr),      intent(in)           :: interp
        character(len=*), intent(in)           :: name1
        character(len=*), intent(in)           :: name2
        integer,          intent(in), optional :: flags
        integer                                :: rc

        if (present(flags)) then
            rc = tcl_unset_var2_(interp, name1 // c_null_char, name2 // c_null_char, flags)
        else
            rc = tcl_unset_var2_(interp, name1 // c_null_char, name2 // c_null_char, 0)
        end if
    end function tcl_unset_var2

    function tcl_up_var(interp, frame_name, source_name, dest_name, flags) result(rc)
        type(c_ptr),      intent(in)           :: interp
        character(len=*), intent(in)           :: frame_name
        character(len=*), intent(in)           :: source_name
        character(len=*), intent(in)           :: dest_name
        integer,          intent(in), optional :: flags
        integer                                :: rc

        if (present(flags)) then
            rc = tcl_up_var_(interp, frame_name // c_null_char, source_name // c_null_char, &
                             dest_name // c_null_char, flags)
        else
            rc = tcl_up_var_(interp, frame_name // c_null_char, source_name // c_null_char, &
                             dest_name // c_null_char, 0)
        end if
    end function tcl_up_var

    function tcl_up_var2(interp, frame_name, name1, name2, dest_name, flags) result(rc)
        type(c_ptr),      intent(in)          :: interp
        character(len=*), intent(in)          :: frame_name
        character(len=*), intent(in)          :: name1
        character(len=*), intent(in)          :: name2
        character(len=*), intent(in)          :: dest_name
        integer,          intent(in), optional:: flags
        integer                               :: rc

        if (present(flags)) then
            rc = tcl_up_var2_(interp, frame_name // c_null_char, name1 // c_null_char, &
                              name2 // c_null_char, dest_name // c_null_char, flags)
        else
            rc = tcl_up_var2_(interp, frame_name // c_null_char, name1 // c_null_char, &
                              name2 // c_null_char, dest_name // c_null_char, 0)
        end if
    end function tcl_up_var2

    ! **************************************************************************
    ! PUBLIC WRAPPER SUBROUTINES
    ! **************************************************************************
    subroutine tcl_append_element(obj_ptr, element)
        type(c_ptr),      intent(in) :: obj_ptr
        character(len=*), intent(in) :: element

        call tcl_append_element_(obj_ptr, element // c_null_char)
    end subroutine tcl_append_element

    subroutine tcl_append_result(interp, result)
        type(c_ptr),      intent(in) :: interp
        character(len=*), intent(in) :: result

        call tcl_append_result_(interp, result // c_null_char, c_null_ptr)
    end subroutine tcl_append_result

    subroutine tcl_append_to_obj(obj_ptr, bytes, length)
        type(c_ptr),      intent(in)           :: obj_ptr
        character(len=*), intent(in)           :: bytes
        integer,          intent(in), optional :: length

        if (present(length)) then
            call tcl_append_to_obj_(obj_ptr, bytes, length)
        else
            call tcl_append_to_obj_(obj_ptr, bytes, len(bytes))
        end if
    end subroutine tcl_append_to_obj

    subroutine tcl_dict_obj_next(search_ptr, key_ptr, value_ptr, done)
        type(tcl_dict_search), intent(inout) :: search_ptr
        type(c_ptr),           intent(out)   :: key_ptr
        type(c_ptr),           intent(out)   :: value_ptr
        logical,               intent(out)   :: done
        integer                              :: i

        call tcl_dict_obj_next_(search_ptr, key_ptr, value_ptr, i)
        done = (i /= 0)
    end subroutine tcl_dict_obj_next

    subroutine tcl_find_executable(argv0)
        character(len=*), intent(in) :: argv0

        call tcl_find_executable_(argv0 // c_null_char)
    end subroutine tcl_find_executable

    subroutine tcl_set_boolean_obj(obj_ptr, bool_value)
        type(c_ptr), intent(in) :: obj_ptr
        logical,     intent(in) :: bool_value
        integer                 :: i

        i = 0
        if (bool_value) i = 1
        call tcl_set_boolean_obj_(obj_ptr, i)
    end subroutine tcl_set_boolean_obj

    subroutine tcl_set_string_obj(obj_ptr, bytes, length)
        type(c_ptr),      intent(in)           :: obj_ptr
        character(len=*), intent(in)           :: bytes
        integer,          intent(in), optional :: length

        if (present(length)) then
            call tcl_set_string_obj_(obj_ptr, bytes, length)
        else
            call tcl_set_string_obj_(obj_ptr, bytes, len(bytes))
        end if
    end subroutine tcl_set_string_obj

    subroutine tcl_unlink_var(interp, var_name)
        type(c_ptr),      intent(in) :: interp
        character(len=*), intent(in) :: var_name

        call tcl_unlink_var_(interp, var_name // c_null_char)
    end subroutine tcl_unlink_var

    subroutine tcl_update_linked_var(interp, var_name)
        type(c_ptr),      intent(in) :: interp
        character(len=*), intent(in) :: var_name

        call tcl_update_linked_var_(interp, var_name // c_null_char)
    end subroutine tcl_update_linked_var

    subroutine tcl_wrong_num_args(interp, objc, objv, message)
        type(c_ptr),      intent(in) :: interp
        integer,          intent(in) :: objc
        type(c_ptr),      intent(in) :: objv(*)
        character(len=*), intent(in) :: message

        call tcl_wrong_num_args_(interp, objc, objv, message // c_null_char)
    end subroutine tcl_wrong_num_args

    ! **************************************************************************
    ! PRIVATE PROCEDURES
    ! **************************************************************************
    pure function copy(a)
        character, intent(in)  :: a(:)
        character(len=size(a)) :: copy
        integer(kind=i8)       :: i

        do i = 1, size(a)
            copy(i:i) = a(i)
        end do
    end function copy

    subroutine c_f_str_ptr(c_str, f_str)
        !! Utility routine that copies a C string, passed as a C pointer, to a
        !! Fortran string. On error, `f_str` is not allocated.
        type(c_ptr),                   intent(in)  :: c_str
        character(len=:), allocatable, intent(out) :: f_str
        character(kind=c_char), pointer            :: ptrs(:)
        integer(kind=i8)                           :: sz

        if (.not. c_associated(c_str)) return
        sz = c_strlen(c_str)
        if (sz < 0) return
        call c_f_pointer(c_str, ptrs, [ sz ])
        allocate (character(len=sz) :: f_str)
        f_str = copy(ptrs)
    end subroutine c_f_str_ptr
end module tcl
