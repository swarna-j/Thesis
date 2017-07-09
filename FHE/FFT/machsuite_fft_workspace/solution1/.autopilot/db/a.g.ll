; ModuleID = '/home/jsk_027/Thesis/machsuite_fft_workspace/solution1/.autopilot/db/a.g.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE_plus = type opaque

@.str = private unnamed_addr constant [6 x i8] c"outer\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [6 x i8] c"inner\00", align 1 ; [#uses=1 type=[6 x i8]*]
@_IO_2_1_stdin_ = external global %struct._IO_FILE_plus ; [#uses=0 type=%struct._IO_FILE_plus*]
@_IO_2_1_stdout_ = external global %struct._IO_FILE_plus ; [#uses=0 type=%struct._IO_FILE_plus*]
@_IO_2_1_stderr_ = external global %struct._IO_FILE_plus ; [#uses=0 type=%struct._IO_FILE_plus*]
@sys_nerr = external global i32                   ; [#uses=0 type=i32*]

; [#uses=0]
define void @fft(double* %real, double* %img, double* %real_twid, double* %img_twid) nounwind uwtable {
  %1 = alloca double*, align 8                    ; [#uses=11 type=double**]
  %2 = alloca double*, align 8                    ; [#uses=11 type=double**]
  %3 = alloca double*, align 8                    ; [#uses=4 type=double**]
  %4 = alloca double*, align 8                    ; [#uses=4 type=double**]
  %even = alloca i32, align 4                     ; [#uses=8 type=i32*]
  %odd = alloca i32, align 4                      ; [#uses=19 type=i32*]
  %span = alloca i32, align 4                     ; [#uses=7 type=i32*]
  %log = alloca i32, align 4                      ; [#uses=4 type=i32*]
  %rootindex = alloca i32, align 4                ; [#uses=6 type=i32*]
  %temp = alloca double, align 8                  ; [#uses=6 type=double*]
  store double* %real, double** %1, align 8
  call void @llvm.dbg.declare(metadata !{double** %1}, metadata !30), !dbg !31 ; [debug line = 3:17] [debug variable = real]
  store double* %img, double** %2, align 8
  call void @llvm.dbg.declare(metadata !{double** %2}, metadata !32), !dbg !33 ; [debug line = 3:36] [debug variable = img]
  store double* %real_twid, double** %3, align 8
  call void @llvm.dbg.declare(metadata !{double** %3}, metadata !34), !dbg !35 ; [debug line = 3:54] [debug variable = real_twid]
  store double* %img_twid, double** %4, align 8
  call void @llvm.dbg.declare(metadata !{double** %4}, metadata !36), !dbg !37 ; [debug line = 3:80] [debug variable = img_twid]
  %5 = load double** %2, align 8, !dbg !38        ; [#uses=1 type=double*] [debug line = 3:98]
  call void (...)* @_ssdm_SpecArrayDimSize(double* %5, i32 1024) nounwind, !dbg !38 ; [debug line = 3:98]
  %6 = load double** %3, align 8, !dbg !40        ; [#uses=1 type=double*] [debug line = 3:131]
  call void (...)* @_ssdm_SpecArrayDimSize(double* %6, i32 512) nounwind, !dbg !40 ; [debug line = 3:131]
  %7 = load double** %1, align 8, !dbg !41        ; [#uses=1 type=double*] [debug line = 3:172]
  call void (...)* @_ssdm_SpecArrayDimSize(double* %7, i32 1024) nounwind, !dbg !41 ; [debug line = 3:172]
  %8 = load double** %4, align 8, !dbg !42        ; [#uses=1 type=double*] [debug line = 3:206]
  call void (...)* @_ssdm_SpecArrayDimSize(double* %8, i32 512) nounwind, !dbg !42 ; [debug line = 3:206]
  call void @llvm.dbg.declare(metadata !{i32* %even}, metadata !43), !dbg !44 ; [debug line = 6:6] [debug variable = even]
  call void @llvm.dbg.declare(metadata !{i32* %odd}, metadata !45), !dbg !46 ; [debug line = 6:12] [debug variable = odd]
  call void @llvm.dbg.declare(metadata !{i32* %span}, metadata !47), !dbg !48 ; [debug line = 6:17] [debug variable = span]
  call void @llvm.dbg.declare(metadata !{i32* %log}, metadata !49), !dbg !50 ; [debug line = 6:23] [debug variable = log]
  call void @llvm.dbg.declare(metadata !{i32* %rootindex}, metadata !51), !dbg !52 ; [debug line = 6:28] [debug variable = rootindex]
  call void @llvm.dbg.declare(metadata !{double* %temp}, metadata !53), !dbg !54 ; [debug line = 7:12] [debug variable = temp]
  store i32 0, i32* %log, align 4, !dbg !55       ; [debug line = 8:5]
  br label %9, !dbg !55                           ; [debug line = 8:5]

; <label>:9                                       ; preds = %0
  store i32 512, i32* %span, align 4, !dbg !56    ; [debug line = 10:15]
  br label %10, !dbg !56                          ; [debug line = 10:15]

; <label>:10                                      ; preds = %155, %9
  %11 = load i32* %span, align 4, !dbg !56        ; [#uses=1 type=i32] [debug line = 10:15]
  %12 = icmp ne i32 %11, 0, !dbg !56              ; [#uses=1 type=i1] [debug line = 10:15]
  br i1 %12, label %13, label %160, !dbg !56      ; [debug line = 10:15]

; <label>:13                                      ; preds = %10
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !58 ; [debug line = 10:52]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !58 ; [debug line = 10:52]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 10, i32 5, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !60 ; [debug line = 11:1]
  br label %14, !dbg !60                          ; [debug line = 11:1]

; <label>:14                                      ; preds = %13
  %15 = load i32* %span, align 4, !dbg !61        ; [#uses=1 type=i32] [debug line = 11:19]
  store i32 %15, i32* %odd, align 4, !dbg !61     ; [debug line = 11:19]
  br label %16, !dbg !61                          ; [debug line = 11:19]

; <label>:16                                      ; preds = %151, %14
  %17 = load i32* %odd, align 4, !dbg !61         ; [#uses=1 type=i32] [debug line = 11:19]
  %18 = icmp slt i32 %17, 1024, !dbg !61          ; [#uses=1 type=i1] [debug line = 11:19]
  br i1 %18, label %19, label %154, !dbg !61      ; [debug line = 11:19]

; <label>:19                                      ; preds = %16
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !63 ; [debug line = 11:46]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !63 ; [debug line = 11:46]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 512, i32 1024, i32 768, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !65 ; [debug line = 12:1]
  %20 = load i32* %span, align 4, !dbg !66        ; [#uses=1 type=i32] [debug line = 12:13]
  %21 = load i32* %odd, align 4, !dbg !66         ; [#uses=1 type=i32] [debug line = 12:13]
  %22 = or i32 %21, %20, !dbg !66                 ; [#uses=1 type=i32] [debug line = 12:13]
  store i32 %22, i32* %odd, align 4, !dbg !66     ; [debug line = 12:13]
  %23 = load i32* %odd, align 4, !dbg !67         ; [#uses=1 type=i32] [debug line = 13:13]
  %24 = load i32* %span, align 4, !dbg !67        ; [#uses=1 type=i32] [debug line = 13:13]
  %25 = xor i32 %23, %24, !dbg !67                ; [#uses=1 type=i32] [debug line = 13:13]
  store i32 %25, i32* %even, align 4, !dbg !67    ; [debug line = 13:13]
  %26 = load i32* %even, align 4, !dbg !68        ; [#uses=1 type=i32] [debug line = 15:13]
  %27 = sext i32 %26 to i64, !dbg !68             ; [#uses=1 type=i64] [debug line = 15:13]
  %28 = load double** %1, align 8, !dbg !68       ; [#uses=1 type=double*] [debug line = 15:13]
  %29 = getelementptr inbounds double* %28, i64 %27, !dbg !68 ; [#uses=1 type=double*] [debug line = 15:13]
  %30 = load double* %29, align 8, !dbg !68       ; [#uses=1 type=double] [debug line = 15:13]
  %31 = load i32* %odd, align 4, !dbg !68         ; [#uses=1 type=i32] [debug line = 15:13]
  %32 = sext i32 %31 to i64, !dbg !68             ; [#uses=1 type=i64] [debug line = 15:13]
  %33 = load double** %1, align 8, !dbg !68       ; [#uses=1 type=double*] [debug line = 15:13]
  %34 = getelementptr inbounds double* %33, i64 %32, !dbg !68 ; [#uses=1 type=double*] [debug line = 15:13]
  %35 = load double* %34, align 8, !dbg !68       ; [#uses=1 type=double] [debug line = 15:13]
  %36 = fadd double %30, %35, !dbg !68            ; [#uses=1 type=double] [debug line = 15:13]
  store double %36, double* %temp, align 8, !dbg !68 ; [debug line = 15:13]
  %37 = load i32* %even, align 4, !dbg !69        ; [#uses=1 type=i32] [debug line = 16:13]
  %38 = sext i32 %37 to i64, !dbg !69             ; [#uses=1 type=i64] [debug line = 16:13]
  %39 = load double** %1, align 8, !dbg !69       ; [#uses=1 type=double*] [debug line = 16:13]
  %40 = getelementptr inbounds double* %39, i64 %38, !dbg !69 ; [#uses=1 type=double*] [debug line = 16:13]
  %41 = load double* %40, align 8, !dbg !69       ; [#uses=1 type=double] [debug line = 16:13]
  %42 = load i32* %odd, align 4, !dbg !69         ; [#uses=1 type=i32] [debug line = 16:13]
  %43 = sext i32 %42 to i64, !dbg !69             ; [#uses=1 type=i64] [debug line = 16:13]
  %44 = load double** %1, align 8, !dbg !69       ; [#uses=1 type=double*] [debug line = 16:13]
  %45 = getelementptr inbounds double* %44, i64 %43, !dbg !69 ; [#uses=1 type=double*] [debug line = 16:13]
  %46 = load double* %45, align 8, !dbg !69       ; [#uses=1 type=double] [debug line = 16:13]
  %47 = fsub double %41, %46, !dbg !69            ; [#uses=1 type=double] [debug line = 16:13]
  %48 = load i32* %odd, align 4, !dbg !69         ; [#uses=1 type=i32] [debug line = 16:13]
  %49 = sext i32 %48 to i64, !dbg !69             ; [#uses=1 type=i64] [debug line = 16:13]
  %50 = load double** %1, align 8, !dbg !69       ; [#uses=1 type=double*] [debug line = 16:13]
  %51 = getelementptr inbounds double* %50, i64 %49, !dbg !69 ; [#uses=1 type=double*] [debug line = 16:13]
  store double %47, double* %51, align 8, !dbg !69 ; [debug line = 16:13]
  %52 = load double* %temp, align 8, !dbg !70     ; [#uses=1 type=double] [debug line = 17:13]
  %53 = load i32* %even, align 4, !dbg !70        ; [#uses=1 type=i32] [debug line = 17:13]
  %54 = sext i32 %53 to i64, !dbg !70             ; [#uses=1 type=i64] [debug line = 17:13]
  %55 = load double** %1, align 8, !dbg !70       ; [#uses=1 type=double*] [debug line = 17:13]
  %56 = getelementptr inbounds double* %55, i64 %54, !dbg !70 ; [#uses=1 type=double*] [debug line = 17:13]
  store double %52, double* %56, align 8, !dbg !70 ; [debug line = 17:13]
  %57 = load i32* %even, align 4, !dbg !71        ; [#uses=1 type=i32] [debug line = 19:13]
  %58 = sext i32 %57 to i64, !dbg !71             ; [#uses=1 type=i64] [debug line = 19:13]
  %59 = load double** %2, align 8, !dbg !71       ; [#uses=1 type=double*] [debug line = 19:13]
  %60 = getelementptr inbounds double* %59, i64 %58, !dbg !71 ; [#uses=1 type=double*] [debug line = 19:13]
  %61 = load double* %60, align 8, !dbg !71       ; [#uses=1 type=double] [debug line = 19:13]
  %62 = load i32* %odd, align 4, !dbg !71         ; [#uses=1 type=i32] [debug line = 19:13]
  %63 = sext i32 %62 to i64, !dbg !71             ; [#uses=1 type=i64] [debug line = 19:13]
  %64 = load double** %2, align 8, !dbg !71       ; [#uses=1 type=double*] [debug line = 19:13]
  %65 = getelementptr inbounds double* %64, i64 %63, !dbg !71 ; [#uses=1 type=double*] [debug line = 19:13]
  %66 = load double* %65, align 8, !dbg !71       ; [#uses=1 type=double] [debug line = 19:13]
  %67 = fadd double %61, %66, !dbg !71            ; [#uses=1 type=double] [debug line = 19:13]
  store double %67, double* %temp, align 8, !dbg !71 ; [debug line = 19:13]
  %68 = load i32* %even, align 4, !dbg !72        ; [#uses=1 type=i32] [debug line = 20:13]
  %69 = sext i32 %68 to i64, !dbg !72             ; [#uses=1 type=i64] [debug line = 20:13]
  %70 = load double** %2, align 8, !dbg !72       ; [#uses=1 type=double*] [debug line = 20:13]
  %71 = getelementptr inbounds double* %70, i64 %69, !dbg !72 ; [#uses=1 type=double*] [debug line = 20:13]
  %72 = load double* %71, align 8, !dbg !72       ; [#uses=1 type=double] [debug line = 20:13]
  %73 = load i32* %odd, align 4, !dbg !72         ; [#uses=1 type=i32] [debug line = 20:13]
  %74 = sext i32 %73 to i64, !dbg !72             ; [#uses=1 type=i64] [debug line = 20:13]
  %75 = load double** %2, align 8, !dbg !72       ; [#uses=1 type=double*] [debug line = 20:13]
  %76 = getelementptr inbounds double* %75, i64 %74, !dbg !72 ; [#uses=1 type=double*] [debug line = 20:13]
  %77 = load double* %76, align 8, !dbg !72       ; [#uses=1 type=double] [debug line = 20:13]
  %78 = fsub double %72, %77, !dbg !72            ; [#uses=1 type=double] [debug line = 20:13]
  %79 = load i32* %odd, align 4, !dbg !72         ; [#uses=1 type=i32] [debug line = 20:13]
  %80 = sext i32 %79 to i64, !dbg !72             ; [#uses=1 type=i64] [debug line = 20:13]
  %81 = load double** %2, align 8, !dbg !72       ; [#uses=1 type=double*] [debug line = 20:13]
  %82 = getelementptr inbounds double* %81, i64 %80, !dbg !72 ; [#uses=1 type=double*] [debug line = 20:13]
  store double %78, double* %82, align 8, !dbg !72 ; [debug line = 20:13]
  %83 = load double* %temp, align 8, !dbg !73     ; [#uses=1 type=double] [debug line = 21:13]
  %84 = load i32* %even, align 4, !dbg !73        ; [#uses=1 type=i32] [debug line = 21:13]
  %85 = sext i32 %84 to i64, !dbg !73             ; [#uses=1 type=i64] [debug line = 21:13]
  %86 = load double** %2, align 8, !dbg !73       ; [#uses=1 type=double*] [debug line = 21:13]
  %87 = getelementptr inbounds double* %86, i64 %85, !dbg !73 ; [#uses=1 type=double*] [debug line = 21:13]
  store double %83, double* %87, align 8, !dbg !73 ; [debug line = 21:13]
  %88 = load i32* %even, align 4, !dbg !74        ; [#uses=1 type=i32] [debug line = 23:13]
  %89 = load i32* %log, align 4, !dbg !74         ; [#uses=1 type=i32] [debug line = 23:13]
  %90 = shl i32 %88, %89, !dbg !74                ; [#uses=1 type=i32] [debug line = 23:13]
  %91 = and i32 %90, 1023, !dbg !74               ; [#uses=1 type=i32] [debug line = 23:13]
  store i32 %91, i32* %rootindex, align 4, !dbg !74 ; [debug line = 23:13]
  %92 = load i32* %rootindex, align 4, !dbg !75   ; [#uses=1 type=i32] [debug line = 24:13]
  %93 = icmp ne i32 %92, 0, !dbg !75              ; [#uses=1 type=i1] [debug line = 24:13]
  br i1 %93, label %94, label %150, !dbg !75      ; [debug line = 24:13]

; <label>:94                                      ; preds = %19
  %95 = load i32* %rootindex, align 4, !dbg !76   ; [#uses=1 type=i32] [debug line = 25:17]
  %96 = sext i32 %95 to i64, !dbg !76             ; [#uses=1 type=i64] [debug line = 25:17]
  %97 = load double** %3, align 8, !dbg !76       ; [#uses=1 type=double*] [debug line = 25:17]
  %98 = getelementptr inbounds double* %97, i64 %96, !dbg !76 ; [#uses=1 type=double*] [debug line = 25:17]
  %99 = load double* %98, align 8, !dbg !76       ; [#uses=1 type=double] [debug line = 25:17]
  %100 = load i32* %odd, align 4, !dbg !76        ; [#uses=1 type=i32] [debug line = 25:17]
  %101 = sext i32 %100 to i64, !dbg !76           ; [#uses=1 type=i64] [debug line = 25:17]
  %102 = load double** %1, align 8, !dbg !76      ; [#uses=1 type=double*] [debug line = 25:17]
  %103 = getelementptr inbounds double* %102, i64 %101, !dbg !76 ; [#uses=1 type=double*] [debug line = 25:17]
  %104 = load double* %103, align 8, !dbg !76     ; [#uses=1 type=double] [debug line = 25:17]
  %105 = fmul double %99, %104, !dbg !76          ; [#uses=1 type=double] [debug line = 25:17]
  %106 = load i32* %rootindex, align 4, !dbg !76  ; [#uses=1 type=i32] [debug line = 25:17]
  %107 = sext i32 %106 to i64, !dbg !76           ; [#uses=1 type=i64] [debug line = 25:17]
  %108 = load double** %4, align 8, !dbg !76      ; [#uses=1 type=double*] [debug line = 25:17]
  %109 = getelementptr inbounds double* %108, i64 %107, !dbg !76 ; [#uses=1 type=double*] [debug line = 25:17]
  %110 = load double* %109, align 8, !dbg !76     ; [#uses=1 type=double] [debug line = 25:17]
  %111 = load i32* %odd, align 4, !dbg !76        ; [#uses=1 type=i32] [debug line = 25:17]
  %112 = sext i32 %111 to i64, !dbg !76           ; [#uses=1 type=i64] [debug line = 25:17]
  %113 = load double** %2, align 8, !dbg !76      ; [#uses=1 type=double*] [debug line = 25:17]
  %114 = getelementptr inbounds double* %113, i64 %112, !dbg !76 ; [#uses=1 type=double*] [debug line = 25:17]
  %115 = load double* %114, align 8, !dbg !76     ; [#uses=1 type=double] [debug line = 25:17]
  %116 = fmul double %110, %115, !dbg !76         ; [#uses=1 type=double] [debug line = 25:17]
  %117 = fsub double %105, %116, !dbg !76         ; [#uses=1 type=double] [debug line = 25:17]
  store double %117, double* %temp, align 8, !dbg !76 ; [debug line = 25:17]
  %118 = load i32* %rootindex, align 4, !dbg !78  ; [#uses=1 type=i32] [debug line = 27:17]
  %119 = sext i32 %118 to i64, !dbg !78           ; [#uses=1 type=i64] [debug line = 27:17]
  %120 = load double** %3, align 8, !dbg !78      ; [#uses=1 type=double*] [debug line = 27:17]
  %121 = getelementptr inbounds double* %120, i64 %119, !dbg !78 ; [#uses=1 type=double*] [debug line = 27:17]
  %122 = load double* %121, align 8, !dbg !78     ; [#uses=1 type=double] [debug line = 27:17]
  %123 = load i32* %odd, align 4, !dbg !78        ; [#uses=1 type=i32] [debug line = 27:17]
  %124 = sext i32 %123 to i64, !dbg !78           ; [#uses=1 type=i64] [debug line = 27:17]
  %125 = load double** %2, align 8, !dbg !78      ; [#uses=1 type=double*] [debug line = 27:17]
  %126 = getelementptr inbounds double* %125, i64 %124, !dbg !78 ; [#uses=1 type=double*] [debug line = 27:17]
  %127 = load double* %126, align 8, !dbg !78     ; [#uses=1 type=double] [debug line = 27:17]
  %128 = fmul double %122, %127, !dbg !78         ; [#uses=1 type=double] [debug line = 27:17]
  %129 = load i32* %rootindex, align 4, !dbg !78  ; [#uses=1 type=i32] [debug line = 27:17]
  %130 = sext i32 %129 to i64, !dbg !78           ; [#uses=1 type=i64] [debug line = 27:17]
  %131 = load double** %4, align 8, !dbg !78      ; [#uses=1 type=double*] [debug line = 27:17]
  %132 = getelementptr inbounds double* %131, i64 %130, !dbg !78 ; [#uses=1 type=double*] [debug line = 27:17]
  %133 = load double* %132, align 8, !dbg !78     ; [#uses=1 type=double] [debug line = 27:17]
  %134 = load i32* %odd, align 4, !dbg !78        ; [#uses=1 type=i32] [debug line = 27:17]
  %135 = sext i32 %134 to i64, !dbg !78           ; [#uses=1 type=i64] [debug line = 27:17]
  %136 = load double** %1, align 8, !dbg !78      ; [#uses=1 type=double*] [debug line = 27:17]
  %137 = getelementptr inbounds double* %136, i64 %135, !dbg !78 ; [#uses=1 type=double*] [debug line = 27:17]
  %138 = load double* %137, align 8, !dbg !78     ; [#uses=1 type=double] [debug line = 27:17]
  %139 = fmul double %133, %138, !dbg !78         ; [#uses=1 type=double] [debug line = 27:17]
  %140 = fadd double %128, %139, !dbg !78         ; [#uses=1 type=double] [debug line = 27:17]
  %141 = load i32* %odd, align 4, !dbg !78        ; [#uses=1 type=i32] [debug line = 27:17]
  %142 = sext i32 %141 to i64, !dbg !78           ; [#uses=1 type=i64] [debug line = 27:17]
  %143 = load double** %2, align 8, !dbg !78      ; [#uses=1 type=double*] [debug line = 27:17]
  %144 = getelementptr inbounds double* %143, i64 %142, !dbg !78 ; [#uses=1 type=double*] [debug line = 27:17]
  store double %140, double* %144, align 8, !dbg !78 ; [debug line = 27:17]
  %145 = load double* %temp, align 8, !dbg !79    ; [#uses=1 type=double] [debug line = 29:17]
  %146 = load i32* %odd, align 4, !dbg !79        ; [#uses=1 type=i32] [debug line = 29:17]
  %147 = sext i32 %146 to i64, !dbg !79           ; [#uses=1 type=i64] [debug line = 29:17]
  %148 = load double** %1, align 8, !dbg !79      ; [#uses=1 type=double*] [debug line = 29:17]
  %149 = getelementptr inbounds double* %148, i64 %147, !dbg !79 ; [#uses=1 type=double*] [debug line = 29:17]
  store double %145, double* %149, align 8, !dbg !79 ; [debug line = 29:17]
  br label %150, !dbg !80                         ; [debug line = 30:13]

; <label>:150                                     ; preds = %94, %19
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !81 ; [debug line = 31:9]
  br label %151, !dbg !81                         ; [debug line = 31:9]

; <label>:151                                     ; preds = %150
  %152 = load i32* %odd, align 4, !dbg !82        ; [#uses=1 type=i32] [debug line = 11:39]
  %153 = add nsw i32 %152, 1, !dbg !82            ; [#uses=1 type=i32] [debug line = 11:39]
  store i32 %153, i32* %odd, align 4, !dbg !82    ; [debug line = 11:39]
  br label %16, !dbg !82                          ; [debug line = 11:39]

; <label>:154                                     ; preds = %16
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !83 ; [debug line = 32:5]
  br label %155, !dbg !83                         ; [debug line = 32:5]

; <label>:155                                     ; preds = %154
  %156 = load i32* %span, align 4, !dbg !84       ; [#uses=1 type=i32] [debug line = 10:35]
  %157 = ashr i32 %156, 1, !dbg !84               ; [#uses=1 type=i32] [debug line = 10:35]
  store i32 %157, i32* %span, align 4, !dbg !84   ; [debug line = 10:35]
  %158 = load i32* %log, align 4, !dbg !84        ; [#uses=1 type=i32] [debug line = 10:35]
  %159 = add nsw i32 %158, 1, !dbg !84            ; [#uses=1 type=i32] [debug line = 10:35]
  store i32 %159, i32* %log, align 4, !dbg !84    ; [debug line = 10:35]
  br label %10, !dbg !84                          ; [debug line = 10:35]

; <label>:160                                     ; preds = %10
  ret void, !dbg !85                              ; [debug line = 33:1]
}

; [#uses=10]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=4]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=2]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecLoopTripCount(...) nounwind

; [#uses=2]
declare void @_ssdm_RegionEnd(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!23}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/jsk_027/Thesis/machsuite_fft_workspace/solution1/.autopilot/db/fft.pragma.2.c", metadata !"/home/jsk_027/Thesis", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !13} ; [ DW_TAG_compile_unit ]
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
!15 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !16, i32 320, metadata !17, i32 0, i32 1, %struct._IO_FILE_plus* @_IO_2_1_stdin_} ; [ DW_TAG_variable ]
!16 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/jsk_027/Thesis", null} ; [ DW_TAG_file_type ]
!17 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !16, i32 318, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!18 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !16, i32 321, metadata !17, i32 0, i32 1, %struct._IO_FILE_plus* @_IO_2_1_stdout_} ; [ DW_TAG_variable ]
!19 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !16, i32 322, metadata !17, i32 0, i32 1, %struct._IO_FILE_plus* @_IO_2_1_stderr_} ; [ DW_TAG_variable ]
!20 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !21, i32 26, metadata !22, i32 0, i32 1, i32* @sys_nerr} ; [ DW_TAG_variable ]
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
!43 = metadata !{i32 786688, metadata !39, metadata !"even", metadata !6, i32 6, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!44 = metadata !{i32 6, i32 6, metadata !39, null}
!45 = metadata !{i32 786688, metadata !39, metadata !"odd", metadata !6, i32 6, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!46 = metadata !{i32 6, i32 12, metadata !39, null}
!47 = metadata !{i32 786688, metadata !39, metadata !"span", metadata !6, i32 6, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!48 = metadata !{i32 6, i32 17, metadata !39, null}
!49 = metadata !{i32 786688, metadata !39, metadata !"log", metadata !6, i32 6, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!50 = metadata !{i32 6, i32 23, metadata !39, null}
!51 = metadata !{i32 786688, metadata !39, metadata !"rootindex", metadata !6, i32 6, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!52 = metadata !{i32 6, i32 28, metadata !39, null}
!53 = metadata !{i32 786688, metadata !39, metadata !"temp", metadata !6, i32 7, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!54 = metadata !{i32 7, i32 12, metadata !39, null}
!55 = metadata !{i32 8, i32 5, metadata !39, null}
!56 = metadata !{i32 10, i32 15, metadata !57, null}
!57 = metadata !{i32 786443, metadata !39, i32 10, i32 11, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 10, i32 52, metadata !59, null}
!59 = metadata !{i32 786443, metadata !57, i32 10, i32 51, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 11, i32 1, metadata !59, null}
!61 = metadata !{i32 11, i32 19, metadata !62, null}
!62 = metadata !{i32 786443, metadata !59, i32 11, i32 15, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 11, i32 46, metadata !64, null}
!64 = metadata !{i32 786443, metadata !62, i32 11, i32 45, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 12, i32 1, metadata !64, null}
!66 = metadata !{i32 12, i32 13, metadata !64, null}
!67 = metadata !{i32 13, i32 13, metadata !64, null}
!68 = metadata !{i32 15, i32 13, metadata !64, null}
!69 = metadata !{i32 16, i32 13, metadata !64, null}
!70 = metadata !{i32 17, i32 13, metadata !64, null}
!71 = metadata !{i32 19, i32 13, metadata !64, null}
!72 = metadata !{i32 20, i32 13, metadata !64, null}
!73 = metadata !{i32 21, i32 13, metadata !64, null}
!74 = metadata !{i32 23, i32 13, metadata !64, null}
!75 = metadata !{i32 24, i32 13, metadata !64, null}
!76 = metadata !{i32 25, i32 17, metadata !77, null}
!77 = metadata !{i32 786443, metadata !64, i32 24, i32 26, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 27, i32 17, metadata !77, null}
!79 = metadata !{i32 29, i32 17, metadata !77, null}
!80 = metadata !{i32 30, i32 13, metadata !77, null}
!81 = metadata !{i32 31, i32 9, metadata !64, null}
!82 = metadata !{i32 11, i32 39, metadata !62, null}
!83 = metadata !{i32 32, i32 5, metadata !59, null}
!84 = metadata !{i32 10, i32 35, metadata !57, null}
!85 = metadata !{i32 33, i32 1, metadata !39, null}
