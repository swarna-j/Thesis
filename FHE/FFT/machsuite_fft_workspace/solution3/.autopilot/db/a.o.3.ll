; ModuleID = '/home/jsk_027/Thesis/machsuite_fft_workspace/solution3/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fft_str = internal unnamed_addr constant [4 x i8] c"fft\00" ; [#uses=1 type=[4 x i8]*]
@p_str4 = private unnamed_addr constant [6 x i8] c"inner\00", align 1 ; [#uses=3 type=[6 x i8]*]
@p_str3 = private unnamed_addr constant [6 x i8] c"outer\00", align 1 ; [#uses=3 type=[6 x i8]*]
@p_str2 = private unnamed_addr constant [12 x i8] c"RAM_1P_BRAM\00", align 1 ; [#uses=3 type=[12 x i8]*]
@p_str1 = private unnamed_addr constant [12 x i8] c"ROM_1P_BRAM\00", align 1 ; [#uses=1 type=[12 x i8]*]
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=30 type=[1 x i8]*]

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
declare i30 @llvm.part.select.i30(i30, i32, i32) nounwind readnone

; [#uses=13]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @fft([1024 x double]* %real, [1024 x double]* %img, [512 x double]* %real_twid, [512 x double]* %img_twid) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x double]* %real) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x double]* %img) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([512 x double]* %real_twid) nounwind, !map !17
  call void (...)* @_ssdm_op_SpecBitsMap([512 x double]* %img_twid) nounwind, !map !23
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @fft_str) nounwind
  call void @llvm.dbg.value(metadata !{[1024 x double]* %real}, i64 0, metadata !27), !dbg !39 ; [debug line = 3:17] [debug variable = real]
  call void @llvm.dbg.value(metadata !{[1024 x double]* %img}, i64 0, metadata !40), !dbg !41 ; [debug line = 3:36] [debug variable = img]
  call void @llvm.dbg.value(metadata !{[512 x double]* %real_twid}, i64 0, metadata !42), !dbg !46 ; [debug line = 3:54] [debug variable = real_twid]
  call void @llvm.dbg.value(metadata !{[512 x double]* %img_twid}, i64 0, metadata !47), !dbg !48 ; [debug line = 3:80] [debug variable = img_twid]
  call void (...)* @_ssdm_op_SpecMemCore([512 x double]* %img_twid, [1 x i8]* @p_str, [12 x i8]* @p_str1, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([512 x double]* %real_twid, [1 x i8]* @p_str, [12 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([1024 x double]* %img, [1 x i8]* @p_str, [12 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([1024 x double]* %real, [1 x i8]* @p_str, [12 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  br label %1, !dbg !49                           ; [debug line = 8:15]

; <label>:1                                       ; preds = %6, %0
  %odd = phi i30 [ 512, %0 ], [ %tmp_16, %6 ]     ; [#uses=3 type=i30]
  %log = phi i4 [ 0, %0 ], [ %log_1, %6 ]         ; [#uses=3 type=i4]
  %exitcond = icmp eq i4 %log, -6, !dbg !49       ; [#uses=1 type=i1] [debug line = 8:15]
  %log_1 = add i4 %log, 1, !dbg !52               ; [#uses=1 type=i4] [debug line = 8:35]
  br i1 %exitcond, label %7, label %2, !dbg !49   ; [debug line = 8:15]

; <label>:2                                       ; preds = %1
  %odd_cast = sext i30 %odd to i32, !dbg !49      ; [#uses=3 type=i32] [debug line = 8:15]
  %log_cast2_cast = zext i4 %log to i10, !dbg !49 ; [#uses=1 type=i10] [debug line = 8:15]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10)
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str3) nounwind, !dbg !53 ; [debug line = 8:52]
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @p_str3) nounwind, !dbg !53 ; [#uses=1 type=i32] [debug line = 8:52]
  call void @llvm.dbg.value(metadata !{i30 %odd}, i64 0, metadata !55), !dbg !57 ; [debug line = 9:19] [debug variable = odd]
  %tmp = trunc i30 %odd to i10                    ; [#uses=1 type=i10]
  %tmp_12 = xor i10 %tmp, -1, !dbg !59            ; [#uses=1 type=i10] [debug line = 11:13]
  br label %3, !dbg !57                           ; [debug line = 9:19]

; <label>:3                                       ; preds = %._crit_edge, %2
  %odd1 = phi i32 [ %odd_cast, %2 ], [ %odd_2, %._crit_edge ] ; [#uses=3 type=i32]
  %tmp_14 = call i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32 %odd1, i32 10, i32 31), !dbg !57 ; [#uses=1 type=i22] [debug line = 9:19]
  %icmp = icmp slt i22 %tmp_14, 1, !dbg !57       ; [#uses=1 type=i1] [debug line = 9:19]
  br i1 %icmp, label %4, label %6, !dbg !57       ; [debug line = 9:19]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind, !dbg !61 ; [debug line = 9:46]
  %tmp_13 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @p_str4) nounwind, !dbg !61 ; [#uses=1 type=i32] [debug line = 9:46]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 512, i32 1024, i32 768, [1 x i8]* @p_str) nounwind, !dbg !62 ; [debug line = 10:1]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !62 ; [debug line = 10:1]
  %tmp_15 = trunc i32 %odd1 to i10                ; [#uses=1 type=i10]
  %odd_1 = or i32 %odd1, %odd_cast, !dbg !63      ; [#uses=3 type=i32] [debug line = 10:13]
  call void @llvm.dbg.value(metadata !{i32 %odd_1}, i64 0, metadata !55), !dbg !63 ; [debug line = 10:13] [debug variable = odd]
  %even = xor i32 %odd_1, %odd_cast, !dbg !59     ; [#uses=1 type=i32] [debug line = 11:13]
  %even_cast = and i10 %tmp_15, %tmp_12, !dbg !59 ; [#uses=1 type=i10] [debug line = 11:13]
  call void @llvm.dbg.value(metadata !{i32 %even}, i64 0, metadata !64), !dbg !59 ; [debug line = 11:13] [debug variable = even]
  %tmp_2 = sext i32 %even to i64, !dbg !65        ; [#uses=2 type=i64] [debug line = 13:13]
  %real_addr = getelementptr [1024 x double]* %real, i64 0, i64 %tmp_2, !dbg !65 ; [#uses=2 type=double*] [debug line = 13:13]
  %real_load = load double* %real_addr, align 8, !dbg !65 ; [#uses=2 type=double] [debug line = 13:13]
  %tmp_3 = sext i32 %odd_1 to i64, !dbg !65       ; [#uses=2 type=i64] [debug line = 13:13]
  %real_addr_1 = getelementptr [1024 x double]* %real, i64 0, i64 %tmp_3, !dbg !65 ; [#uses=4 type=double*] [debug line = 13:13]
  %real_load_1 = load double* %real_addr_1, align 8, !dbg !65 ; [#uses=2 type=double] [debug line = 13:13]
  %temp = fadd double %real_load, %real_load_1, !dbg !65 ; [#uses=1 type=double] [debug line = 13:13]
  call void @llvm.dbg.value(metadata !{double %temp}, i64 0, metadata !66), !dbg !65 ; [debug line = 13:13] [debug variable = temp]
  %tmp_5 = fsub double %real_load, %real_load_1, !dbg !67 ; [#uses=1 type=double] [debug line = 14:13]
  store double %tmp_5, double* %real_addr_1, align 8, !dbg !67 ; [debug line = 14:13]
  store double %temp, double* %real_addr, align 8, !dbg !68 ; [debug line = 15:13]
  %img_addr = getelementptr [1024 x double]* %img, i64 0, i64 %tmp_2, !dbg !69 ; [#uses=2 type=double*] [debug line = 17:13]
  %img_load = load double* %img_addr, align 8, !dbg !69 ; [#uses=2 type=double] [debug line = 17:13]
  %img_addr_1 = getelementptr [1024 x double]* %img, i64 0, i64 %tmp_3, !dbg !69 ; [#uses=4 type=double*] [debug line = 17:13]
  %img_load_1 = load double* %img_addr_1, align 8, !dbg !69 ; [#uses=2 type=double] [debug line = 17:13]
  %temp_1 = fadd double %img_load, %img_load_1, !dbg !69 ; [#uses=1 type=double] [debug line = 17:13]
  call void @llvm.dbg.value(metadata !{double %temp_1}, i64 0, metadata !66), !dbg !69 ; [debug line = 17:13] [debug variable = temp]
  %tmp_7 = fsub double %img_load, %img_load_1, !dbg !70 ; [#uses=1 type=double] [debug line = 18:13]
  store double %tmp_7, double* %img_addr_1, align 8, !dbg !70 ; [debug line = 18:13]
  store double %temp_1, double* %img_addr, align 8, !dbg !71 ; [debug line = 19:13]
  %rootindex = shl i10 %even_cast, %log_cast2_cast, !dbg !72 ; [#uses=2 type=i10] [debug line = 21:13]
  call void @llvm.dbg.value(metadata !{i10 %rootindex}, i64 0, metadata !73), !dbg !72 ; [debug line = 21:13] [debug variable = rootindex]
  %tmp_9 = icmp eq i10 %rootindex, 0, !dbg !74    ; [#uses=1 type=i1] [debug line = 22:13]
  br i1 %tmp_9, label %._crit_edge, label %5, !dbg !74 ; [debug line = 22:13]

; <label>:5                                       ; preds = %4
  %tmp_s = zext i10 %rootindex to i64, !dbg !75   ; [#uses=2 type=i64] [debug line = 23:17]
  %real_twid_addr = getelementptr [512 x double]* %real_twid, i64 0, i64 %tmp_s, !dbg !75 ; [#uses=1 type=double*] [debug line = 23:17]
  %real_twid_load = load double* %real_twid_addr, align 8, !dbg !75 ; [#uses=2 type=double] [debug line = 23:17]
  %real_load_2 = load double* %real_addr_1, align 8, !dbg !75 ; [#uses=2 type=double] [debug line = 23:17]
  %tmp_1 = fmul double %real_twid_load, %real_load_2, !dbg !75 ; [#uses=1 type=double] [debug line = 23:17]
  %img_twid_addr = getelementptr [512 x double]* %img_twid, i64 0, i64 %tmp_s, !dbg !75 ; [#uses=1 type=double*] [debug line = 23:17]
  %img_twid_load = load double* %img_twid_addr, align 8, !dbg !75 ; [#uses=2 type=double] [debug line = 23:17]
  %img_load_2 = load double* %img_addr_1, align 8, !dbg !75 ; [#uses=2 type=double] [debug line = 23:17]
  %tmp_4 = fmul double %img_twid_load, %img_load_2, !dbg !75 ; [#uses=1 type=double] [debug line = 23:17]
  %temp_2 = fsub double %tmp_1, %tmp_4, !dbg !75  ; [#uses=1 type=double] [debug line = 23:17]
  call void @llvm.dbg.value(metadata !{double %temp_2}, i64 0, metadata !66), !dbg !75 ; [debug line = 23:17] [debug variable = temp]
  %tmp_6 = fmul double %real_twid_load, %img_load_2, !dbg !77 ; [#uses=1 type=double] [debug line = 25:17]
  %tmp_10 = fmul double %img_twid_load, %real_load_2, !dbg !77 ; [#uses=1 type=double] [debug line = 25:17]
  %tmp_11 = fadd double %tmp_6, %tmp_10, !dbg !77 ; [#uses=1 type=double] [debug line = 25:17]
  store double %tmp_11, double* %img_addr_1, align 8, !dbg !77 ; [debug line = 25:17]
  store double %temp_2, double* %real_addr_1, align 8, !dbg !78 ; [debug line = 27:17]
  br label %._crit_edge, !dbg !79                 ; [debug line = 28:13]

._crit_edge:                                      ; preds = %5, %4
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @p_str4, i32 %tmp_13) nounwind, !dbg !80 ; [#uses=0 type=i32] [debug line = 29:9]
  %odd_2 = add nsw i32 %odd_1, 1, !dbg !81        ; [#uses=1 type=i32] [debug line = 9:39]
  call void @llvm.dbg.value(metadata !{i32 %odd_2}, i64 0, metadata !55), !dbg !81 ; [debug line = 9:39] [debug variable = odd]
  br label %3, !dbg !81                           ; [debug line = 9:39]

; <label>:6                                       ; preds = %3
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @p_str3, i32 %tmp_8) nounwind, !dbg !82 ; [#uses=0 type=i32] [debug line = 30:5]
  %tmp_17 = call i29 @_ssdm_op_PartSelect.i29.i30.i32.i32(i30 %odd, i32 1, i32 29), !dbg !52 ; [#uses=1 type=i29] [debug line = 8:35]
  %tmp_16 = sext i29 %tmp_17 to i30, !dbg !52     ; [#uses=1 type=i30] [debug line = 8:35]
  call void @llvm.dbg.value(metadata !{i4 %log_1}, i64 0, metadata !83), !dbg !52 ; [debug line = 8:35] [debug variable = log]
  br label %1, !dbg !52                           ; [debug line = 8:35]

; <label>:7                                       ; preds = %1
  ret void, !dbg !84                              ; [debug line = 31:1]
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=4]
define weak void @_ssdm_op_SpecMemCore(...) {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecLoopTripCount(...) nounwind {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=4]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i29 @_ssdm_op_PartSelect.i29.i30.i32.i32(i30, i32, i32) nounwind readnone {
entry:
  %empty = call i30 @llvm.part.select.i30(i30 %0, i32 %1, i32 %2) ; [#uses=1 type=i30]
  %empty_7 = trunc i30 %empty to i29              ; [#uses=1 type=i29]
  ret i29 %empty_7
}

; [#uses=1]
define weak i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_8 = trunc i32 %empty to i22              ; [#uses=1 type=i22]
  ret i22 %empty_8
}

; [#uses=0]
declare i10 @_ssdm_op_PartSelect.i10.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i10 @_ssdm_op_PartSelect.i10.i30.i32.i32(i30, i32, i32) nounwind readnone

!opencl.kernels = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"double*", metadata !"double*", metadata !"double*", metadata !"double*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"real", metadata !"img", metadata !"real_twid", metadata !"img_twid"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 63, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"real", metadata !11, metadata !"double", i32 0, i32 63}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 1023, i32 1}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 63, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"img", metadata !11, metadata !"double", i32 0, i32 63}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 63, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"real_twid", metadata !21, metadata !"double", i32 0, i32 63}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 511, i32 1}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 63, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"img_twid", metadata !21, metadata !"double", i32 0, i32 63}
!27 = metadata !{i32 786689, metadata !28, metadata !"real", null, i32 3, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!28 = metadata !{i32 786478, i32 0, metadata !29, metadata !"fft", metadata !"fft", metadata !"", metadata !29, i32 3, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !34, i32 3} ; [ DW_TAG_subprogram ]
!29 = metadata !{i32 786473, metadata !"MachSuite/fft/strided/fft.c", metadata !"/home/jsk_027/Thesis", null} ; [ DW_TAG_file_type ]
!30 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!31 = metadata !{null, metadata !32, metadata !32, metadata !32, metadata !32}
!32 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ]
!33 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!34 = metadata !{metadata !35}
!35 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!36 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 65536, i64 64, i32 0, i32 0, metadata !33, metadata !37, i32 0, i32 0} ; [ DW_TAG_array_type ]
!37 = metadata !{metadata !38}
!38 = metadata !{i32 786465, i64 0, i64 1023}     ; [ DW_TAG_subrange_type ]
!39 = metadata !{i32 3, i32 17, metadata !28, null}
!40 = metadata !{i32 786689, metadata !28, metadata !"img", null, i32 3, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!41 = metadata !{i32 3, i32 36, metadata !28, null}
!42 = metadata !{i32 786689, metadata !28, metadata !"real_twid", null, i32 3, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!43 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32768, i64 64, i32 0, i32 0, metadata !33, metadata !44, i32 0, i32 0} ; [ DW_TAG_array_type ]
!44 = metadata !{metadata !45}
!45 = metadata !{i32 786465, i64 0, i64 511}      ; [ DW_TAG_subrange_type ]
!46 = metadata !{i32 3, i32 54, metadata !28, null}
!47 = metadata !{i32 786689, metadata !28, metadata !"img_twid", null, i32 3, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!48 = metadata !{i32 3, i32 80, metadata !28, null}
!49 = metadata !{i32 8, i32 15, metadata !50, null}
!50 = metadata !{i32 786443, metadata !51, i32 8, i32 11, metadata !29, i32 1} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 786443, metadata !28, i32 3, i32 97, metadata !29, i32 0} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 8, i32 35, metadata !50, null}
!53 = metadata !{i32 8, i32 52, metadata !54, null}
!54 = metadata !{i32 786443, metadata !50, i32 8, i32 51, metadata !29, i32 2} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 786688, metadata !51, metadata !"odd", metadata !29, i32 4, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!56 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!57 = metadata !{i32 9, i32 19, metadata !58, null}
!58 = metadata !{i32 786443, metadata !54, i32 9, i32 15, metadata !29, i32 3} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 11, i32 13, metadata !60, null}
!60 = metadata !{i32 786443, metadata !58, i32 9, i32 45, metadata !29, i32 4} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 9, i32 46, metadata !60, null}
!62 = metadata !{i32 10, i32 1, metadata !60, null}
!63 = metadata !{i32 10, i32 13, metadata !60, null}
!64 = metadata !{i32 786688, metadata !51, metadata !"even", metadata !29, i32 4, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!65 = metadata !{i32 13, i32 13, metadata !60, null}
!66 = metadata !{i32 786688, metadata !51, metadata !"temp", metadata !29, i32 5, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!67 = metadata !{i32 14, i32 13, metadata !60, null}
!68 = metadata !{i32 15, i32 13, metadata !60, null}
!69 = metadata !{i32 17, i32 13, metadata !60, null}
!70 = metadata !{i32 18, i32 13, metadata !60, null}
!71 = metadata !{i32 19, i32 13, metadata !60, null}
!72 = metadata !{i32 21, i32 13, metadata !60, null}
!73 = metadata !{i32 786688, metadata !51, metadata !"rootindex", metadata !29, i32 4, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!74 = metadata !{i32 22, i32 13, metadata !60, null}
!75 = metadata !{i32 23, i32 17, metadata !76, null}
!76 = metadata !{i32 786443, metadata !60, i32 22, i32 26, metadata !29, i32 5} ; [ DW_TAG_lexical_block ]
!77 = metadata !{i32 25, i32 17, metadata !76, null}
!78 = metadata !{i32 27, i32 17, metadata !76, null}
!79 = metadata !{i32 28, i32 13, metadata !76, null}
!80 = metadata !{i32 29, i32 9, metadata !60, null}
!81 = metadata !{i32 9, i32 39, metadata !58, null}
!82 = metadata !{i32 30, i32 5, metadata !54, null}
!83 = metadata !{i32 786688, metadata !51, metadata !"log", metadata !29, i32 4, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 31, i32 1, metadata !51, null}
