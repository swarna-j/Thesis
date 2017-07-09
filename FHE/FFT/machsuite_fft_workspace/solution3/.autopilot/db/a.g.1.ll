; ModuleID = '/home/jsk_027/Thesis/machsuite_fft_workspace/solution3/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fft.str = internal unnamed_addr constant [4 x i8] c"fft\00" ; [#uses=1 type=[4 x i8]*]
@.str4 = private unnamed_addr constant [6 x i8] c"inner\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str3 = private unnamed_addr constant [6 x i8] c"outer\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str2 = private unnamed_addr constant [12 x i8] c"RAM_1P_BRAM\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str1 = private unnamed_addr constant [12 x i8] c"ROM_1P_BRAM\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=14]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @fft(double* %real, double* %img, double* %real_twid, double* %img_twid) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @fft.str) nounwind
  call void @llvm.dbg.value(metadata !{double* %real}, i64 0, metadata !30), !dbg !31 ; [debug line = 3:17] [debug variable = real]
  call void @llvm.dbg.value(metadata !{double* %img}, i64 0, metadata !32), !dbg !33 ; [debug line = 3:36] [debug variable = img]
  call void @llvm.dbg.value(metadata !{double* %real_twid}, i64 0, metadata !34), !dbg !35 ; [debug line = 3:54] [debug variable = real_twid]
  call void @llvm.dbg.value(metadata !{double* %img_twid}, i64 0, metadata !36), !dbg !37 ; [debug line = 3:80] [debug variable = img_twid]
  call void (...)* @_ssdm_SpecArrayDimSize(double* %img, i32 1024) nounwind, !dbg !38 ; [debug line = 3:98]
  call void (...)* @_ssdm_SpecArrayDimSize(double* %real_twid, i32 512) nounwind, !dbg !40 ; [debug line = 3:131]
  call void (...)* @_ssdm_SpecArrayDimSize(double* %real, i32 1024) nounwind, !dbg !41 ; [debug line = 3:172]
  call void (...)* @_ssdm_SpecArrayDimSize(double* %img_twid, i32 512) nounwind, !dbg !42 ; [debug line = 3:206]
  call void (...)* @_ssdm_op_SpecResource(double* %img_twid, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !43 ; [debug line = 4:1]
  call void (...)* @_ssdm_op_SpecResource(double* %real_twid, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !43 ; [debug line = 4:1]
  call void (...)* @_ssdm_op_SpecResource(double* %img, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !43 ; [debug line = 4:1]
  call void (...)* @_ssdm_op_SpecResource(double* %real, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !43 ; [debug line = 4:1]
  br label %1, !dbg !44                           ; [debug line = 8:15]

; <label>:1                                       ; preds = %6, %0
  %odd = phi i32 [ 512, %0 ], [ %span, %6 ]       ; [#uses=4 type=i32]
  %log = phi i32 [ 0, %0 ], [ %log.1, %6 ]        ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %log, 10, !dbg !44      ; [#uses=1 type=i1] [debug line = 8:15]
  br i1 %exitcond, label %7, label %2, !dbg !44   ; [debug line = 8:15]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !46 ; [debug line = 8:52]
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !46 ; [#uses=1 type=i32] [debug line = 8:52]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 10, i32 5, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !48 ; [debug line = 9:1]
  call void @llvm.dbg.value(metadata !{i32 %odd}, i64 0, metadata !49), !dbg !50 ; [debug line = 9:19] [debug variable = odd]
  br label %3, !dbg !50                           ; [debug line = 9:19]

; <label>:3                                       ; preds = %._crit_edge, %2
  %odd1 = phi i32 [ %odd, %2 ], [ %odd.3, %._crit_edge ] ; [#uses=2 type=i32]
  %tmp = icmp slt i32 %odd1, 1024, !dbg !50       ; [#uses=1 type=i1] [debug line = 9:19]
  br i1 %tmp, label %4, label %6, !dbg !50        ; [debug line = 9:19]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !52 ; [debug line = 9:46]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !52 ; [#uses=1 type=i32] [debug line = 9:46]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 512, i32 1024, i32 768, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !54 ; [debug line = 10:1]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !54 ; [debug line = 10:1]
  %odd.2 = or i32 %odd1, %odd, !dbg !55           ; [#uses=3 type=i32] [debug line = 10:13]
  call void @llvm.dbg.value(metadata !{i32 %odd.2}, i64 0, metadata !49), !dbg !55 ; [debug line = 10:13] [debug variable = odd]
  %even = xor i32 %odd.2, %odd, !dbg !56          ; [#uses=2 type=i32] [debug line = 11:13]
  call void @llvm.dbg.value(metadata !{i32 %even}, i64 0, metadata !57), !dbg !56 ; [debug line = 11:13] [debug variable = even]
  %tmp.2 = sext i32 %even to i64, !dbg !58        ; [#uses=2 type=i64] [debug line = 13:13]
  %real.addr = getelementptr inbounds double* %real, i64 %tmp.2, !dbg !58 ; [#uses=2 type=double*] [debug line = 13:13]
  %real.load = load double* %real.addr, align 8, !dbg !58 ; [#uses=4 type=double] [debug line = 13:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %real.load) nounwind
  %tmp.3 = sext i32 %odd.2 to i64, !dbg !58       ; [#uses=2 type=i64] [debug line = 13:13]
  %real.addr.1 = getelementptr inbounds double* %real, i64 %tmp.3, !dbg !58 ; [#uses=4 type=double*] [debug line = 13:13]
  %real.load.1 = load double* %real.addr.1, align 8, !dbg !58 ; [#uses=4 type=double] [debug line = 13:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %real.load.1) nounwind
  %temp = fadd double %real.load, %real.load.1, !dbg !58 ; [#uses=1 type=double] [debug line = 13:13]
  call void @llvm.dbg.value(metadata !{double %temp}, i64 0, metadata !59), !dbg !58 ; [debug line = 13:13] [debug variable = temp]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %real.load) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %real.load.1) nounwind
  %tmp.5 = fsub double %real.load, %real.load.1, !dbg !60 ; [#uses=1 type=double] [debug line = 14:13]
  store double %tmp.5, double* %real.addr.1, align 8, !dbg !60 ; [debug line = 14:13]
  store double %temp, double* %real.addr, align 8, !dbg !61 ; [debug line = 15:13]
  %img.addr = getelementptr inbounds double* %img, i64 %tmp.2, !dbg !62 ; [#uses=2 type=double*] [debug line = 17:13]
  %img.load = load double* %img.addr, align 8, !dbg !62 ; [#uses=4 type=double] [debug line = 17:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %img.load) nounwind
  %img.addr.1 = getelementptr inbounds double* %img, i64 %tmp.3, !dbg !62 ; [#uses=4 type=double*] [debug line = 17:13]
  %img.load.1 = load double* %img.addr.1, align 8, !dbg !62 ; [#uses=4 type=double] [debug line = 17:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %img.load.1) nounwind
  %temp.1 = fadd double %img.load, %img.load.1, !dbg !62 ; [#uses=1 type=double] [debug line = 17:13]
  call void @llvm.dbg.value(metadata !{double %temp.1}, i64 0, metadata !59), !dbg !62 ; [debug line = 17:13] [debug variable = temp]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %img.load) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %img.load.1) nounwind
  %tmp.7 = fsub double %img.load, %img.load.1, !dbg !63 ; [#uses=1 type=double] [debug line = 18:13]
  store double %tmp.7, double* %img.addr.1, align 8, !dbg !63 ; [debug line = 18:13]
  store double %temp.1, double* %img.addr, align 8, !dbg !64 ; [debug line = 19:13]
  %tmp.8 = shl i32 %even, %log, !dbg !65          ; [#uses=1 type=i32] [debug line = 21:13]
  %rootindex = and i32 %tmp.8, 1023, !dbg !65     ; [#uses=2 type=i32] [debug line = 21:13]
  call void @llvm.dbg.value(metadata !{i32 %rootindex}, i64 0, metadata !66), !dbg !65 ; [debug line = 21:13] [debug variable = rootindex]
  %tmp.9 = icmp eq i32 %rootindex, 0, !dbg !67    ; [#uses=1 type=i1] [debug line = 22:13]
  br i1 %tmp.9, label %._crit_edge, label %5, !dbg !67 ; [debug line = 22:13]

; <label>:5                                       ; preds = %4
  %tmp.12 = zext i32 %rootindex to i64, !dbg !68  ; [#uses=2 type=i64] [debug line = 23:17]
  %real_twid.addr = getelementptr inbounds double* %real_twid, i64 %tmp.12, !dbg !68 ; [#uses=1 type=double*] [debug line = 23:17]
  %real_twid.load = load double* %real_twid.addr, align 8, !dbg !68 ; [#uses=4 type=double] [debug line = 23:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %real_twid.load) nounwind
  %real.load.2 = load double* %real.addr.1, align 8, !dbg !68 ; [#uses=4 type=double] [debug line = 23:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %real.load.2) nounwind
  %tmp.13 = fmul double %real_twid.load, %real.load.2, !dbg !68 ; [#uses=1 type=double] [debug line = 23:17]
  %img_twid.addr = getelementptr inbounds double* %img_twid, i64 %tmp.12, !dbg !68 ; [#uses=1 type=double*] [debug line = 23:17]
  %img_twid.load = load double* %img_twid.addr, align 8, !dbg !68 ; [#uses=4 type=double] [debug line = 23:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %img_twid.load) nounwind
  %img.load.2 = load double* %img.addr.1, align 8, !dbg !68 ; [#uses=4 type=double] [debug line = 23:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %img.load.2) nounwind
  %tmp.14 = fmul double %img_twid.load, %img.load.2, !dbg !68 ; [#uses=1 type=double] [debug line = 23:17]
  %temp.2 = fsub double %tmp.13, %tmp.14, !dbg !68 ; [#uses=1 type=double] [debug line = 23:17]
  call void @llvm.dbg.value(metadata !{double %temp.2}, i64 0, metadata !59), !dbg !68 ; [debug line = 23:17] [debug variable = temp]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %real_twid.load) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %img.load.2) nounwind
  %tmp.16 = fmul double %real_twid.load, %img.load.2, !dbg !70 ; [#uses=1 type=double] [debug line = 25:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %img_twid.load) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %real.load.2) nounwind
  %tmp.17 = fmul double %img_twid.load, %real.load.2, !dbg !70 ; [#uses=1 type=double] [debug line = 25:17]
  %tmp.18 = fadd double %tmp.16, %tmp.17, !dbg !70 ; [#uses=1 type=double] [debug line = 25:17]
  store double %tmp.18, double* %img.addr.1, align 8, !dbg !70 ; [debug line = 25:17]
  store double %temp.2, double* %real.addr.1, align 8, !dbg !71 ; [debug line = 27:17]
  br label %._crit_edge, !dbg !72                 ; [debug line = 28:13]

._crit_edge:                                      ; preds = %5, %4
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !73 ; [#uses=0 type=i32] [debug line = 29:9]
  %odd.3 = add nsw i32 %odd.2, 1, !dbg !74        ; [#uses=1 type=i32] [debug line = 9:39]
  call void @llvm.dbg.value(metadata !{i32 %odd.3}, i64 0, metadata !49), !dbg !74 ; [debug line = 9:39] [debug variable = odd]
  br label %3, !dbg !74                           ; [debug line = 9:39]

; <label>:6                                       ; preds = %3
  %rend2 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i32 %rbegin1) nounwind, !dbg !75 ; [#uses=0 type=i32] [debug line = 30:5]
  %span = ashr i32 %odd, 1, !dbg !76              ; [#uses=1 type=i32] [debug line = 8:35]
  call void @llvm.dbg.value(metadata !{i32 %span}, i64 0, metadata !77), !dbg !76 ; [debug line = 8:35] [debug variable = span]
  %log.1 = add nsw i32 %log, 1, !dbg !76          ; [#uses=1 type=i32] [debug line = 8:35]
  call void @llvm.dbg.value(metadata !{i32 %log.1}, i64 0, metadata !78), !dbg !76 ; [debug line = 8:35] [debug variable = log]
  br label %1, !dbg !76                           ; [debug line = 8:35]

; <label>:7                                       ; preds = %1
  ret void, !dbg !79                              ; [debug line = 31:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=4]
declare void @_ssdm_op_SpecResource(...) nounwind

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecLoopTripCount(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=16]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=4]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!23}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/jsk_027/Thesis/machsuite_fft_workspace/solution3/.autopilot/db/fft.pragma.2.c", metadata !"/home/jsk_027/Thesis", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !13} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fft", metadata !"fft", metadata !"", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (double*, double*, double*, double*)* @fft, null, null, metadata !11, i32 3} ; [ DW_TAG_subprogram ]
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
!23 = metadata !{void (double*, double*, double*, double*)* @fft, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29}
!24 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1}
!25 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"double*", metadata !"double*", metadata !"double*", metadata !"double*"}
!27 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!28 = metadata !{metadata !"kernel_arg_name", metadata !"real", metadata !"img", metadata !"real_twid", metadata !"img_twid"}
!29 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!30 = metadata !{i32 786689, metadata !5, metadata !"real", metadata !6, i32 16777219, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!31 = metadata !{i32 3, i32 17, metadata !5, null}
!32 = metadata !{i32 786689, metadata !5, metadata !"img", metadata !6, i32 33554435, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!33 = metadata !{i32 3, i32 36, metadata !5, null}
!34 = metadata !{i32 786689, metadata !5, metadata !"real_twid", metadata !6, i32 50331651, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!35 = metadata !{i32 3, i32 54, metadata !5, null}
!36 = metadata !{i32 786689, metadata !5, metadata !"img_twid", metadata !6, i32 67108867, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!37 = metadata !{i32 3, i32 80, metadata !5, null}
!38 = metadata !{i32 3, i32 98, metadata !39, null}
!39 = metadata !{i32 786443, metadata !5, i32 3, i32 97, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!40 = metadata !{i32 3, i32 131, metadata !39, null}
!41 = metadata !{i32 3, i32 172, metadata !39, null}
!42 = metadata !{i32 3, i32 206, metadata !39, null}
!43 = metadata !{i32 4, i32 1, metadata !39, null}
!44 = metadata !{i32 8, i32 15, metadata !45, null}
!45 = metadata !{i32 786443, metadata !39, i32 8, i32 11, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!46 = metadata !{i32 8, i32 52, metadata !47, null}
!47 = metadata !{i32 786443, metadata !45, i32 8, i32 51, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!48 = metadata !{i32 9, i32 1, metadata !47, null}
!49 = metadata !{i32 786688, metadata !39, metadata !"odd", metadata !6, i32 4, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!50 = metadata !{i32 9, i32 19, metadata !51, null}
!51 = metadata !{i32 786443, metadata !47, i32 9, i32 15, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 9, i32 46, metadata !53, null}
!53 = metadata !{i32 786443, metadata !51, i32 9, i32 45, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!54 = metadata !{i32 10, i32 1, metadata !53, null}
!55 = metadata !{i32 10, i32 13, metadata !53, null}
!56 = metadata !{i32 11, i32 13, metadata !53, null}
!57 = metadata !{i32 786688, metadata !39, metadata !"even", metadata !6, i32 4, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!58 = metadata !{i32 13, i32 13, metadata !53, null}
!59 = metadata !{i32 786688, metadata !39, metadata !"temp", metadata !6, i32 5, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!60 = metadata !{i32 14, i32 13, metadata !53, null}
!61 = metadata !{i32 15, i32 13, metadata !53, null}
!62 = metadata !{i32 17, i32 13, metadata !53, null}
!63 = metadata !{i32 18, i32 13, metadata !53, null}
!64 = metadata !{i32 19, i32 13, metadata !53, null}
!65 = metadata !{i32 21, i32 13, metadata !53, null}
!66 = metadata !{i32 786688, metadata !39, metadata !"rootindex", metadata !6, i32 4, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!67 = metadata !{i32 22, i32 13, metadata !53, null}
!68 = metadata !{i32 23, i32 17, metadata !69, null}
!69 = metadata !{i32 786443, metadata !53, i32 22, i32 26, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 25, i32 17, metadata !69, null}
!71 = metadata !{i32 27, i32 17, metadata !69, null}
!72 = metadata !{i32 28, i32 13, metadata !69, null}
!73 = metadata !{i32 29, i32 9, metadata !53, null}
!74 = metadata !{i32 9, i32 39, metadata !51, null}
!75 = metadata !{i32 30, i32 5, metadata !47, null}
!76 = metadata !{i32 8, i32 35, metadata !45, null}
!77 = metadata !{i32 786688, metadata !39, metadata !"span", metadata !6, i32 4, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!78 = metadata !{i32 786688, metadata !39, metadata !"log", metadata !6, i32 4, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!79 = metadata !{i32 31, i32 1, metadata !39, null}
