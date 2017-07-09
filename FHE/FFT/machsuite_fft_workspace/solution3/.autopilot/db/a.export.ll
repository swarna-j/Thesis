; ModuleID = '/home/jsk_027/Thesis/machsuite_fft_workspace/solution3/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fft_str = internal unnamed_addr constant [4 x i8] c"fft\00"
@p_str4 = private unnamed_addr constant [6 x i8] c"inner\00", align 1
@p_str3 = private unnamed_addr constant [6 x i8] c"outer\00", align 1
@p_str2 = private unnamed_addr constant [12 x i8] c"RAM_1P_BRAM\00", align 1
@p_str1 = private unnamed_addr constant [12 x i8] c"ROM_1P_BRAM\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i30 @llvm.part.select.i30(i30, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @fft([1024 x double]* %real_r, [1024 x double]* %img, [512 x double]* %real_twid, [512 x double]* %img_twid) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x double]* %real_r) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x double]* %img) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([512 x double]* %real_twid) nounwind, !map !17
  call void (...)* @_ssdm_op_SpecBitsMap([512 x double]* %img_twid) nounwind, !map !23
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @fft_str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([512 x double]* %img_twid, [1 x i8]* @p_str, [12 x i8]* @p_str1, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([512 x double]* %real_twid, [1 x i8]* @p_str, [12 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([1024 x double]* %img, [1 x i8]* @p_str, [12 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([1024 x double]* %real_r, [1 x i8]* @p_str, [12 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  br label %1

; <label>:1                                       ; preds = %6, %0
  %odd = phi i30 [ 512, %0 ], [ %tmp_16, %6 ]
  %log = phi i4 [ 0, %0 ], [ %log_1, %6 ]
  %exitcond = icmp eq i4 %log, -6
  %log_1 = add i4 %log, 1
  br i1 %exitcond, label %7, label %2

; <label>:2                                       ; preds = %1
  %odd_cast = sext i30 %odd to i32
  %log_cast2_cast = zext i4 %log to i10
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10)
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str3) nounwind
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @p_str3) nounwind
  %tmp = trunc i30 %odd to i10
  %tmp_12 = xor i10 %tmp, -1
  br label %3

; <label>:3                                       ; preds = %._crit_edge, %2
  %odd1 = phi i32 [ %odd_cast, %2 ], [ %odd_2, %._crit_edge ]
  %tmp_14 = call i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32 %odd1, i32 10, i32 31)
  %icmp = icmp slt i22 %tmp_14, 1
  br i1 %icmp, label %4, label %6

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_13 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @p_str4) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 512, i32 1024, i32 768, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_15 = trunc i32 %odd1 to i10
  %odd_1 = or i32 %odd1, %odd_cast
  %even = xor i32 %odd_1, %odd_cast
  %even_cast = and i10 %tmp_15, %tmp_12
  %tmp_2 = sext i32 %even to i64
  %real_addr = getelementptr [1024 x double]* %real_r, i64 0, i64 %tmp_2
  %real_load = load double* %real_addr, align 8
  %tmp_3 = sext i32 %odd_1 to i64
  %real_addr_1 = getelementptr [1024 x double]* %real_r, i64 0, i64 %tmp_3
  %real_load_1 = load double* %real_addr_1, align 8
  %temp = fadd double %real_load, %real_load_1
  %tmp_5 = fsub double %real_load, %real_load_1
  store double %tmp_5, double* %real_addr_1, align 8
  store double %temp, double* %real_addr, align 8
  %img_addr = getelementptr [1024 x double]* %img, i64 0, i64 %tmp_2
  %img_load = load double* %img_addr, align 8
  %img_addr_1 = getelementptr [1024 x double]* %img, i64 0, i64 %tmp_3
  %img_load_1 = load double* %img_addr_1, align 8
  %temp_1 = fadd double %img_load, %img_load_1
  %tmp_7 = fsub double %img_load, %img_load_1
  store double %tmp_7, double* %img_addr_1, align 8
  store double %temp_1, double* %img_addr, align 8
  %rootindex = shl i10 %even_cast, %log_cast2_cast
  %tmp_9 = icmp eq i10 %rootindex, 0
  br i1 %tmp_9, label %._crit_edge, label %5

; <label>:5                                       ; preds = %4
  %tmp_s = zext i10 %rootindex to i64
  %real_twid_addr = getelementptr [512 x double]* %real_twid, i64 0, i64 %tmp_s
  %real_twid_load = load double* %real_twid_addr, align 8
  %real_load_2 = load double* %real_addr_1, align 8
  %tmp_1 = fmul double %real_twid_load, %real_load_2
  %img_twid_addr = getelementptr [512 x double]* %img_twid, i64 0, i64 %tmp_s
  %img_twid_load = load double* %img_twid_addr, align 8
  %img_load_2 = load double* %img_addr_1, align 8
  %tmp_4 = fmul double %img_twid_load, %img_load_2
  %temp_2 = fsub double %tmp_1, %tmp_4
  %tmp_6 = fmul double %real_twid_load, %img_load_2
  %tmp_10 = fmul double %img_twid_load, %real_load_2
  %tmp_11 = fadd double %tmp_6, %tmp_10
  store double %tmp_11, double* %img_addr_1, align 8
  store double %temp_2, double* %real_addr_1, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %5, %4
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @p_str4, i32 %tmp_13) nounwind
  %odd_2 = add nsw i32 %odd_1, 1
  br label %3

; <label>:6                                       ; preds = %3
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @p_str3, i32 %tmp_8) nounwind
  %tmp_17 = call i29 @_ssdm_op_PartSelect.i29.i30.i32.i32(i30 %odd, i32 1, i32 29)
  %tmp_16 = sext i29 %tmp_17 to i30
  br label %1

; <label>:7                                       ; preds = %1
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecMemCore(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopTripCount(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i29 @_ssdm_op_PartSelect.i29.i30.i32.i32(i30, i32, i32) nounwind readnone {
entry:
  %empty = call i30 @llvm.part.select.i30(i30 %0, i32 %1, i32 %2)
  %empty_7 = trunc i30 %empty to i29
  ret i29 %empty_7
}

define weak i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_8 = trunc i32 %empty to i22
  ret i22 %empty_8
}

declare i10 @_ssdm_op_PartSelect.i10.i32.i32.i32(i32, i32, i32) nounwind readnone

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
