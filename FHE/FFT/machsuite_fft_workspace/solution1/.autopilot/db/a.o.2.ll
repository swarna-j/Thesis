; ModuleID = '/home/jsk_027/Thesis/machsuite_fft_workspace/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fft.str = internal unnamed_addr constant [4 x i8] c"fft\00" ; [#uses=1 type=[4 x i8]*]
@.str2 = private unnamed_addr constant [6 x i8] c"inner\00", align 1 ; [#uses=3 type=[6 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [6 x i8] c"outer\00", align 1 ; [#uses=3 type=[6 x i8]*]

; [#uses=13]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @fft([1024 x double]* %real, [1024 x double]* %img, [512 x double]* %real_twid, [512 x double]* %img_twid) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x double]* %real) nounwind, !map !30
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x double]* %img) nounwind, !map !36
  call void (...)* @_ssdm_op_SpecBitsMap([512 x double]* %real_twid) nounwind, !map !40
  call void (...)* @_ssdm_op_SpecBitsMap([512 x double]* %img_twid) nounwind, !map !46
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @fft.str) nounwind
  call void @llvm.dbg.value(metadata !{[1024 x double]* %real}, i64 0, metadata !50), !dbg !54 ; [debug line = 3:17] [debug variable = real]
  call void @llvm.dbg.value(metadata !{[1024 x double]* %img}, i64 0, metadata !55), !dbg !56 ; [debug line = 3:36] [debug variable = img]
  call void @llvm.dbg.value(metadata !{[512 x double]* %real_twid}, i64 0, metadata !57), !dbg !61 ; [debug line = 3:54] [debug variable = real_twid]
  call void @llvm.dbg.value(metadata !{[512 x double]* %img_twid}, i64 0, metadata !62), !dbg !63 ; [debug line = 3:80] [debug variable = img_twid]
  br label %1, !dbg !64                           ; [debug line = 10:15]

; <label>:1                                       ; preds = %7, %0
  %odd = phi i31 [ 512, %0 ], [ %tmp.20, %7 ]     ; [#uses=4 type=i31]
  %log = phi i4 [ 0, %0 ], [ %log.1, %7 ]         ; [#uses=3 type=i4]
  %odd.cast = sext i31 %odd to i32, !dbg !64      ; [#uses=3 type=i32] [debug line = 10:15]
  %log.cast2.cast = zext i4 %log to i10, !dbg !64 ; [#uses=1 type=i10] [debug line = 10:15]
  %exitcond = icmp eq i4 %log, -6, !dbg !64       ; [#uses=1 type=i1] [debug line = 10:15]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10)
  br i1 %exitcond, label %9, label %2, !dbg !64   ; [debug line = 10:15]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @.str) nounwind, !dbg !67 ; [debug line = 10:52]
  %tmp.12 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @.str) nounwind, !dbg !67 ; [#uses=1 type=i32] [debug line = 10:52]
  call void @llvm.dbg.value(metadata !{i31 %odd}, i64 0, metadata !69), !dbg !70 ; [debug line = 11:19] [debug variable = odd]
  br label %3, !dbg !70                           ; [debug line = 11:19]

; <label>:3                                       ; preds = %._crit_edge, %2
  %odd1 = phi i32 [ %odd.cast, %2 ], [ %odd.2, %._crit_edge ] ; [#uses=3 type=i32]
  %tmp = icmp slt i32 %odd1, 1024, !dbg !70       ; [#uses=1 type=i1] [debug line = 11:19]
  br i1 %tmp, label %4, label %7, !dbg !70        ; [debug line = 11:19]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @.str2) nounwind, !dbg !72 ; [debug line = 11:46]
  %tmp.13 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @.str2) nounwind, !dbg !72 ; [#uses=1 type=i32] [debug line = 11:46]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 512, i32 1024, i32 768, [1 x i8]* @.str1) nounwind, !dbg !74 ; [debug line = 12:1]
  %tmp.14 = trunc i32 %odd1 to i10                ; [#uses=1 type=i10]
  %tmp.15 = trunc i31 %odd to i10                 ; [#uses=1 type=i10]
  %odd.1 = or i32 %odd1, %odd.cast, !dbg !75      ; [#uses=3 type=i32] [debug line = 12:13]
  call void @llvm.dbg.value(metadata !{i32 %odd.1}, i64 0, metadata !69), !dbg !75 ; [debug line = 12:13] [debug variable = odd]
  %tmp.16 = or i10 %tmp.14, %tmp.15               ; [#uses=1 type=i10]
  %tmp.17 = trunc i31 %odd to i10                 ; [#uses=1 type=i10]
  %even = xor i32 %odd.1, %odd.cast, !dbg !76     ; [#uses=1 type=i32] [debug line = 13:13]
  %even.cast = xor i10 %tmp.16, %tmp.17, !dbg !76 ; [#uses=1 type=i10] [debug line = 13:13]
  call void @llvm.dbg.value(metadata !{i32 %even}, i64 0, metadata !77), !dbg !76 ; [debug line = 13:13] [debug variable = even]
  %tmp.2 = sext i32 %even to i64, !dbg !78        ; [#uses=2 type=i64] [debug line = 15:13]
  %real.addr = getelementptr [1024 x double]* %real, i64 0, i64 %tmp.2, !dbg !78 ; [#uses=2 type=double*] [debug line = 15:13]
  %real.load = load double* %real.addr, align 8, !dbg !78 ; [#uses=2 type=double] [debug line = 15:13]
  %tmp.3 = sext i32 %odd.1 to i64, !dbg !78       ; [#uses=2 type=i64] [debug line = 15:13]
  %real.addr.1 = getelementptr [1024 x double]* %real, i64 0, i64 %tmp.3, !dbg !78 ; [#uses=4 type=double*] [debug line = 15:13]
  %real.load.1 = load double* %real.addr.1, align 8, !dbg !78 ; [#uses=2 type=double] [debug line = 15:13]
  %temp = fadd double %real.load, %real.load.1, !dbg !78 ; [#uses=1 type=double] [debug line = 15:13]
  call void @llvm.dbg.value(metadata !{double %temp}, i64 0, metadata !79), !dbg !78 ; [debug line = 15:13] [debug variable = temp]
  %tmp.5 = fsub double %real.load, %real.load.1, !dbg !80 ; [#uses=1 type=double] [debug line = 16:13]
  store double %tmp.5, double* %real.addr.1, align 8, !dbg !80 ; [debug line = 16:13]
  store double %temp, double* %real.addr, align 8, !dbg !81 ; [debug line = 17:13]
  %img.addr = getelementptr [1024 x double]* %img, i64 0, i64 %tmp.2, !dbg !82 ; [#uses=2 type=double*] [debug line = 19:13]
  %img.load = load double* %img.addr, align 8, !dbg !82 ; [#uses=2 type=double] [debug line = 19:13]
  %img.addr.1 = getelementptr [1024 x double]* %img, i64 0, i64 %tmp.3, !dbg !82 ; [#uses=4 type=double*] [debug line = 19:13]
  %img.load.1 = load double* %img.addr.1, align 8, !dbg !82 ; [#uses=2 type=double] [debug line = 19:13]
  %temp.1 = fadd double %img.load, %img.load.1, !dbg !82 ; [#uses=1 type=double] [debug line = 19:13]
  call void @llvm.dbg.value(metadata !{double %temp.1}, i64 0, metadata !79), !dbg !82 ; [debug line = 19:13] [debug variable = temp]
  %tmp.7 = fsub double %img.load, %img.load.1, !dbg !83 ; [#uses=1 type=double] [debug line = 20:13]
  store double %tmp.7, double* %img.addr.1, align 8, !dbg !83 ; [debug line = 20:13]
  store double %temp.1, double* %img.addr, align 8, !dbg !84 ; [debug line = 21:13]
  %rootindex = shl i10 %even.cast, %log.cast2.cast, !dbg !85 ; [#uses=2 type=i10] [debug line = 23:13]
  call void @llvm.dbg.value(metadata !{i10 %rootindex}, i64 0, metadata !86), !dbg !85 ; [debug line = 23:13] [debug variable = rootindex]
  %tmp.9 = icmp eq i10 %rootindex, 0, !dbg !87    ; [#uses=1 type=i1] [debug line = 24:13]
  br i1 %tmp.9, label %._crit_edge, label %5, !dbg !87 ; [debug line = 24:13]

; <label>:5                                       ; preds = %4
  %tmp. = zext i10 %rootindex to i64, !dbg !88    ; [#uses=2 type=i64] [debug line = 25:17]
  %real_twid.addr = getelementptr [512 x double]* %real_twid, i64 0, i64 %tmp., !dbg !88 ; [#uses=1 type=double*] [debug line = 25:17]
  %real_twid.load = load double* %real_twid.addr, align 8, !dbg !88 ; [#uses=2 type=double] [debug line = 25:17]
  %real.load.2 = load double* %real.addr.1, align 8, !dbg !88 ; [#uses=2 type=double] [debug line = 25:17]
  %tmp.1 = fmul double %real_twid.load, %real.load.2, !dbg !88 ; [#uses=1 type=double] [debug line = 25:17]
  %img_twid.addr = getelementptr [512 x double]* %img_twid, i64 0, i64 %tmp., !dbg !88 ; [#uses=1 type=double*] [debug line = 25:17]
  %img_twid.load = load double* %img_twid.addr, align 8, !dbg !88 ; [#uses=2 type=double] [debug line = 25:17]
  %img.load.2 = load double* %img.addr.1, align 8, !dbg !88 ; [#uses=2 type=double] [debug line = 25:17]
  %tmp.4 = fmul double %img_twid.load, %img.load.2, !dbg !88 ; [#uses=1 type=double] [debug line = 25:17]
  %temp.2 = fsub double %tmp.1, %tmp.4, !dbg !88  ; [#uses=1 type=double] [debug line = 25:17]
  call void @llvm.dbg.value(metadata !{double %temp.2}, i64 0, metadata !79), !dbg !88 ; [debug line = 25:17] [debug variable = temp]
  %tmp.6 = fmul double %real_twid.load, %img.load.2, !dbg !90 ; [#uses=1 type=double] [debug line = 27:17]
  %tmp.10 = fmul double %img_twid.load, %real.load.2, !dbg !90 ; [#uses=1 type=double] [debug line = 27:17]
  %tmp.11 = fadd double %tmp.6, %tmp.10, !dbg !90 ; [#uses=1 type=double] [debug line = 27:17]
  store double %tmp.11, double* %img.addr.1, align 8, !dbg !90 ; [debug line = 27:17]
  store double %temp.2, double* %real.addr.1, align 8, !dbg !91 ; [debug line = 29:17]
  br label %._crit_edge, !dbg !92                 ; [debug line = 30:13]

._crit_edge:                                      ; preds = %5, %4
  %6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @.str2, i32 %tmp.13) nounwind, !dbg !93 ; [#uses=0 type=i32] [debug line = 31:9]
  %odd.2 = add nsw i32 %odd.1, 1, !dbg !94        ; [#uses=1 type=i32] [debug line = 11:39]
  call void @llvm.dbg.value(metadata !{i32 %odd.2}, i64 0, metadata !69), !dbg !94 ; [debug line = 11:39] [debug variable = odd]
  br label %3, !dbg !94                           ; [debug line = 11:39]

; <label>:7                                       ; preds = %3
  %8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @.str, i32 %tmp.12) nounwind, !dbg !95 ; [#uses=0 type=i32] [debug line = 32:5]
  %tmp.18 = lshr i31 %odd, 1, !dbg !96            ; [#uses=1 type=i31] [debug line = 10:35]
  %tmp.19 = trunc i31 %tmp.18 to i30, !dbg !96    ; [#uses=1 type=i30] [debug line = 10:35]
  %tmp.20 = sext i30 %tmp.19 to i31, !dbg !96     ; [#uses=1 type=i31] [debug line = 10:35]
  %log.1 = add i4 %log, 1, !dbg !96               ; [#uses=1 type=i4] [debug line = 10:35]
  call void @llvm.dbg.value(metadata !{i4 %log.1}, i64 0, metadata !97), !dbg !96 ; [debug line = 10:35] [debug variable = log]
  br label %1, !dbg !96                           ; [debug line = 10:35]

; <label>:9                                       ; preds = %1
  ret void, !dbg !98                              ; [debug line = 33:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=2]
declare void @_ssdm_op_SpecLoopTripCount(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=4]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!23}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/jsk_027/Thesis/machsuite_fft_workspace/solution1/.autopilot/db/fft.pragma.2.c", metadata !"/home/jsk_027/Thesis", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !13} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fft", metadata !"fft", metadata !"", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 3} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"MachSuite/fft/strided/fft.c", metadata !"/home/jsk_027/Thesis", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !15, metadata !18, metadata !19, metadata !20}
!15 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !16, i32 320, metadata !17, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!16 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/jsk_027/Thesis", null} ; [ DW_TAG_file_type ]
!17 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !16, i32 318, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!18 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !16, i32 321, metadata !17, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!19 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !16, i32 322, metadata !17, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!20 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !21, i32 26, metadata !22, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!21 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/jsk_027/Thesis", null} ; [ DW_TAG_file_type ]
!22 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!23 = metadata !{null, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29}
!24 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1}
!25 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"double*", metadata !"double*", metadata !"double*", metadata !"double*"}
!27 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!28 = metadata !{metadata !"kernel_arg_name", metadata !"real", metadata !"img", metadata !"real_twid", metadata !"img_twid"}
!29 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 63, metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !"real", metadata !34, metadata !"double", i32 0, i32 63}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 1023, i32 1}
!36 = metadata !{metadata !37}
!37 = metadata !{i32 0, i32 63, metadata !38}
!38 = metadata !{metadata !39}
!39 = metadata !{metadata !"img", metadata !34, metadata !"double", i32 0, i32 63}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 63, metadata !42}
!42 = metadata !{metadata !43}
!43 = metadata !{metadata !"real_twid", metadata !44, metadata !"double", i32 0, i32 63}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 0, i32 511, i32 1}
!46 = metadata !{metadata !47}
!47 = metadata !{i32 0, i32 63, metadata !48}
!48 = metadata !{metadata !49}
!49 = metadata !{metadata !"img_twid", metadata !44, metadata !"double", i32 0, i32 63}
!50 = metadata !{i32 786689, metadata !5, metadata !"real", null, i32 3, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!51 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 65536, i64 64, i32 0, i32 0, metadata !10, metadata !52, i32 0, i32 0} ; [ DW_TAG_array_type ]
!52 = metadata !{metadata !53}
!53 = metadata !{i32 786465, i64 0, i64 1023}     ; [ DW_TAG_subrange_type ]
!54 = metadata !{i32 3, i32 17, metadata !5, null}
!55 = metadata !{i32 786689, metadata !5, metadata !"img", null, i32 3, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!56 = metadata !{i32 3, i32 36, metadata !5, null}
!57 = metadata !{i32 786689, metadata !5, metadata !"real_twid", null, i32 3, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!58 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32768, i64 64, i32 0, i32 0, metadata !10, metadata !59, i32 0, i32 0} ; [ DW_TAG_array_type ]
!59 = metadata !{metadata !60}
!60 = metadata !{i32 786465, i64 0, i64 511}      ; [ DW_TAG_subrange_type ]
!61 = metadata !{i32 3, i32 54, metadata !5, null}
!62 = metadata !{i32 786689, metadata !5, metadata !"img_twid", null, i32 3, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!63 = metadata !{i32 3, i32 80, metadata !5, null}
!64 = metadata !{i32 10, i32 15, metadata !65, null}
!65 = metadata !{i32 786443, metadata !66, i32 10, i32 11, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 786443, metadata !5, i32 3, i32 97, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 10, i32 52, metadata !68, null}
!68 = metadata !{i32 786443, metadata !65, i32 10, i32 51, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!69 = metadata !{i32 786688, metadata !66, metadata !"odd", metadata !6, i32 6, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!70 = metadata !{i32 11, i32 19, metadata !71, null}
!71 = metadata !{i32 786443, metadata !68, i32 11, i32 15, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 11, i32 46, metadata !73, null}
!73 = metadata !{i32 786443, metadata !71, i32 11, i32 45, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!74 = metadata !{i32 12, i32 1, metadata !73, null}
!75 = metadata !{i32 12, i32 13, metadata !73, null}
!76 = metadata !{i32 13, i32 13, metadata !73, null}
!77 = metadata !{i32 786688, metadata !66, metadata !"even", metadata !6, i32 6, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!78 = metadata !{i32 15, i32 13, metadata !73, null}
!79 = metadata !{i32 786688, metadata !66, metadata !"temp", metadata !6, i32 7, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!80 = metadata !{i32 16, i32 13, metadata !73, null}
!81 = metadata !{i32 17, i32 13, metadata !73, null}
!82 = metadata !{i32 19, i32 13, metadata !73, null}
!83 = metadata !{i32 20, i32 13, metadata !73, null}
!84 = metadata !{i32 21, i32 13, metadata !73, null}
!85 = metadata !{i32 23, i32 13, metadata !73, null}
!86 = metadata !{i32 786688, metadata !66, metadata !"rootindex", metadata !6, i32 6, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!87 = metadata !{i32 24, i32 13, metadata !73, null}
!88 = metadata !{i32 25, i32 17, metadata !89, null}
!89 = metadata !{i32 786443, metadata !73, i32 24, i32 26, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 27, i32 17, metadata !89, null}
!91 = metadata !{i32 29, i32 17, metadata !89, null}
!92 = metadata !{i32 30, i32 13, metadata !89, null}
!93 = metadata !{i32 31, i32 9, metadata !73, null}
!94 = metadata !{i32 11, i32 39, metadata !71, null}
!95 = metadata !{i32 32, i32 5, metadata !68, null}
!96 = metadata !{i32 10, i32 35, metadata !65, null}
!97 = metadata !{i32 786688, metadata !66, metadata !"log", metadata !6, i32 6, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!98 = metadata !{i32 33, i32 1, metadata !66, null}
