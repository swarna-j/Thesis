; ModuleID = '/home/jsk_027/Thesis/machsuite_fft_workspace/solution2/.autopilot/db/a.g.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE_plus = type opaque

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [12 x i8] c"ROM_1P_BRAM\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str2 = private unnamed_addr constant [12 x i8] c"RAM_1P_BRAM\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str3 = private unnamed_addr constant [6 x i8] c"outer\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str4 = private unnamed_addr constant [6 x i8] c"inner\00", align 1 ; [#uses=1 type=[6 x i8]*]
@_IO_2_1_stdin_ = external global %struct._IO_FILE_plus ; [#uses=0 type=%struct._IO_FILE_plus*]
@_IO_2_1_stdout_ = external global %struct._IO_FILE_plus ; [#uses=0 type=%struct._IO_FILE_plus*]
@_IO_2_1_stderr_ = external global %struct._IO_FILE_plus ; [#uses=0 type=%struct._IO_FILE_plus*]
@sys_nerr = external global i32                   ; [#uses=0 type=i32*]

; [#uses=0]
define void @fft(double* %real, double* %img, double* %real_twid, double* %img_twid) nounwind uwtable {
  %1 = alloca double*, align 8                    ; [#uses=12 type=double**]
  %2 = alloca double*, align 8                    ; [#uses=12 type=double**]
  %3 = alloca double*, align 8                    ; [#uses=5 type=double**]
  %4 = alloca double*, align 8                    ; [#uses=5 type=double**]
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
  %9 = load double** %4, align 8, !dbg !43        ; [#uses=1 type=double*] [debug line = 4:1]
  call void (...)* @_ssdm_op_SpecResource(double* %9, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !43 ; [debug line = 4:1]
  %10 = load double** %3, align 8, !dbg !43       ; [#uses=1 type=double*] [debug line = 4:1]
  call void (...)* @_ssdm_op_SpecResource(double* %10, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !43 ; [debug line = 4:1]
  %11 = load double** %2, align 8, !dbg !43       ; [#uses=1 type=double*] [debug line = 4:1]
  call void (...)* @_ssdm_op_SpecResource(double* %11, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !43 ; [debug line = 4:1]
  %12 = load double** %1, align 8, !dbg !43       ; [#uses=1 type=double*] [debug line = 4:1]
  call void (...)* @_ssdm_op_SpecResource(double* %12, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !43 ; [debug line = 4:1]
  call void @llvm.dbg.declare(metadata !{i32* %even}, metadata !44), !dbg !45 ; [debug line = 4:9] [debug variable = even]
  call void @llvm.dbg.declare(metadata !{i32* %odd}, metadata !46), !dbg !47 ; [debug line = 4:15] [debug variable = odd]
  call void @llvm.dbg.declare(metadata !{i32* %span}, metadata !48), !dbg !49 ; [debug line = 4:20] [debug variable = span]
  call void @llvm.dbg.declare(metadata !{i32* %log}, metadata !50), !dbg !51 ; [debug line = 4:26] [debug variable = log]
  call void @llvm.dbg.declare(metadata !{i32* %rootindex}, metadata !52), !dbg !53 ; [debug line = 4:31] [debug variable = rootindex]
  call void @llvm.dbg.declare(metadata !{double* %temp}, metadata !54), !dbg !55 ; [debug line = 5:12] [debug variable = temp]
  store i32 0, i32* %log, align 4, !dbg !56       ; [debug line = 6:5]
  br label %13, !dbg !56                          ; [debug line = 6:5]

; <label>:13                                      ; preds = %0
  store i32 512, i32* %span, align 4, !dbg !57    ; [debug line = 8:15]
  br label %14, !dbg !57                          ; [debug line = 8:15]

; <label>:14                                      ; preds = %159, %13
  %15 = load i32* %span, align 4, !dbg !57        ; [#uses=1 type=i32] [debug line = 8:15]
  %16 = icmp ne i32 %15, 0, !dbg !57              ; [#uses=1 type=i1] [debug line = 8:15]
  br i1 %16, label %17, label %164, !dbg !57      ; [debug line = 8:15]

; <label>:17                                      ; preds = %14
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !59 ; [debug line = 8:52]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !59 ; [debug line = 8:52]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 10, i32 5, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !61 ; [debug line = 9:1]
  br label %18, !dbg !61                          ; [debug line = 9:1]

; <label>:18                                      ; preds = %17
  %19 = load i32* %span, align 4, !dbg !62        ; [#uses=1 type=i32] [debug line = 9:19]
  store i32 %19, i32* %odd, align 4, !dbg !62     ; [debug line = 9:19]
  br label %20, !dbg !62                          ; [debug line = 9:19]

; <label>:20                                      ; preds = %155, %18
  %21 = load i32* %odd, align 4, !dbg !62         ; [#uses=1 type=i32] [debug line = 9:19]
  %22 = icmp slt i32 %21, 1024, !dbg !62          ; [#uses=1 type=i1] [debug line = 9:19]
  br i1 %22, label %23, label %158, !dbg !62      ; [debug line = 9:19]

; <label>:23                                      ; preds = %20
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !64 ; [debug line = 9:46]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !64 ; [debug line = 9:46]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 512, i32 1024, i32 768, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !66 ; [debug line = 10:1]
  %24 = load i32* %span, align 4, !dbg !67        ; [#uses=1 type=i32] [debug line = 10:13]
  %25 = load i32* %odd, align 4, !dbg !67         ; [#uses=1 type=i32] [debug line = 10:13]
  %26 = or i32 %25, %24, !dbg !67                 ; [#uses=1 type=i32] [debug line = 10:13]
  store i32 %26, i32* %odd, align 4, !dbg !67     ; [debug line = 10:13]
  %27 = load i32* %odd, align 4, !dbg !68         ; [#uses=1 type=i32] [debug line = 11:13]
  %28 = load i32* %span, align 4, !dbg !68        ; [#uses=1 type=i32] [debug line = 11:13]
  %29 = xor i32 %27, %28, !dbg !68                ; [#uses=1 type=i32] [debug line = 11:13]
  store i32 %29, i32* %even, align 4, !dbg !68    ; [debug line = 11:13]
  %30 = load i32* %even, align 4, !dbg !69        ; [#uses=1 type=i32] [debug line = 13:13]
  %31 = sext i32 %30 to i64, !dbg !69             ; [#uses=1 type=i64] [debug line = 13:13]
  %32 = load double** %1, align 8, !dbg !69       ; [#uses=1 type=double*] [debug line = 13:13]
  %33 = getelementptr inbounds double* %32, i64 %31, !dbg !69 ; [#uses=1 type=double*] [debug line = 13:13]
  %34 = load double* %33, align 8, !dbg !69       ; [#uses=1 type=double] [debug line = 13:13]
  %35 = load i32* %odd, align 4, !dbg !69         ; [#uses=1 type=i32] [debug line = 13:13]
  %36 = sext i32 %35 to i64, !dbg !69             ; [#uses=1 type=i64] [debug line = 13:13]
  %37 = load double** %1, align 8, !dbg !69       ; [#uses=1 type=double*] [debug line = 13:13]
  %38 = getelementptr inbounds double* %37, i64 %36, !dbg !69 ; [#uses=1 type=double*] [debug line = 13:13]
  %39 = load double* %38, align 8, !dbg !69       ; [#uses=1 type=double] [debug line = 13:13]
  %40 = fadd double %34, %39, !dbg !69            ; [#uses=1 type=double] [debug line = 13:13]
  store double %40, double* %temp, align 8, !dbg !69 ; [debug line = 13:13]
  %41 = load i32* %even, align 4, !dbg !70        ; [#uses=1 type=i32] [debug line = 14:13]
  %42 = sext i32 %41 to i64, !dbg !70             ; [#uses=1 type=i64] [debug line = 14:13]
  %43 = load double** %1, align 8, !dbg !70       ; [#uses=1 type=double*] [debug line = 14:13]
  %44 = getelementptr inbounds double* %43, i64 %42, !dbg !70 ; [#uses=1 type=double*] [debug line = 14:13]
  %45 = load double* %44, align 8, !dbg !70       ; [#uses=1 type=double] [debug line = 14:13]
  %46 = load i32* %odd, align 4, !dbg !70         ; [#uses=1 type=i32] [debug line = 14:13]
  %47 = sext i32 %46 to i64, !dbg !70             ; [#uses=1 type=i64] [debug line = 14:13]
  %48 = load double** %1, align 8, !dbg !70       ; [#uses=1 type=double*] [debug line = 14:13]
  %49 = getelementptr inbounds double* %48, i64 %47, !dbg !70 ; [#uses=1 type=double*] [debug line = 14:13]
  %50 = load double* %49, align 8, !dbg !70       ; [#uses=1 type=double] [debug line = 14:13]
  %51 = fsub double %45, %50, !dbg !70            ; [#uses=1 type=double] [debug line = 14:13]
  %52 = load i32* %odd, align 4, !dbg !70         ; [#uses=1 type=i32] [debug line = 14:13]
  %53 = sext i32 %52 to i64, !dbg !70             ; [#uses=1 type=i64] [debug line = 14:13]
  %54 = load double** %1, align 8, !dbg !70       ; [#uses=1 type=double*] [debug line = 14:13]
  %55 = getelementptr inbounds double* %54, i64 %53, !dbg !70 ; [#uses=1 type=double*] [debug line = 14:13]
  store double %51, double* %55, align 8, !dbg !70 ; [debug line = 14:13]
  %56 = load double* %temp, align 8, !dbg !71     ; [#uses=1 type=double] [debug line = 15:13]
  %57 = load i32* %even, align 4, !dbg !71        ; [#uses=1 type=i32] [debug line = 15:13]
  %58 = sext i32 %57 to i64, !dbg !71             ; [#uses=1 type=i64] [debug line = 15:13]
  %59 = load double** %1, align 8, !dbg !71       ; [#uses=1 type=double*] [debug line = 15:13]
  %60 = getelementptr inbounds double* %59, i64 %58, !dbg !71 ; [#uses=1 type=double*] [debug line = 15:13]
  store double %56, double* %60, align 8, !dbg !71 ; [debug line = 15:13]
  %61 = load i32* %even, align 4, !dbg !72        ; [#uses=1 type=i32] [debug line = 17:13]
  %62 = sext i32 %61 to i64, !dbg !72             ; [#uses=1 type=i64] [debug line = 17:13]
  %63 = load double** %2, align 8, !dbg !72       ; [#uses=1 type=double*] [debug line = 17:13]
  %64 = getelementptr inbounds double* %63, i64 %62, !dbg !72 ; [#uses=1 type=double*] [debug line = 17:13]
  %65 = load double* %64, align 8, !dbg !72       ; [#uses=1 type=double] [debug line = 17:13]
  %66 = load i32* %odd, align 4, !dbg !72         ; [#uses=1 type=i32] [debug line = 17:13]
  %67 = sext i32 %66 to i64, !dbg !72             ; [#uses=1 type=i64] [debug line = 17:13]
  %68 = load double** %2, align 8, !dbg !72       ; [#uses=1 type=double*] [debug line = 17:13]
  %69 = getelementptr inbounds double* %68, i64 %67, !dbg !72 ; [#uses=1 type=double*] [debug line = 17:13]
  %70 = load double* %69, align 8, !dbg !72       ; [#uses=1 type=double] [debug line = 17:13]
  %71 = fadd double %65, %70, !dbg !72            ; [#uses=1 type=double] [debug line = 17:13]
  store double %71, double* %temp, align 8, !dbg !72 ; [debug line = 17:13]
  %72 = load i32* %even, align 4, !dbg !73        ; [#uses=1 type=i32] [debug line = 18:13]
  %73 = sext i32 %72 to i64, !dbg !73             ; [#uses=1 type=i64] [debug line = 18:13]
  %74 = load double** %2, align 8, !dbg !73       ; [#uses=1 type=double*] [debug line = 18:13]
  %75 = getelementptr inbounds double* %74, i64 %73, !dbg !73 ; [#uses=1 type=double*] [debug line = 18:13]
  %76 = load double* %75, align 8, !dbg !73       ; [#uses=1 type=double] [debug line = 18:13]
  %77 = load i32* %odd, align 4, !dbg !73         ; [#uses=1 type=i32] [debug line = 18:13]
  %78 = sext i32 %77 to i64, !dbg !73             ; [#uses=1 type=i64] [debug line = 18:13]
  %79 = load double** %2, align 8, !dbg !73       ; [#uses=1 type=double*] [debug line = 18:13]
  %80 = getelementptr inbounds double* %79, i64 %78, !dbg !73 ; [#uses=1 type=double*] [debug line = 18:13]
  %81 = load double* %80, align 8, !dbg !73       ; [#uses=1 type=double] [debug line = 18:13]
  %82 = fsub double %76, %81, !dbg !73            ; [#uses=1 type=double] [debug line = 18:13]
  %83 = load i32* %odd, align 4, !dbg !73         ; [#uses=1 type=i32] [debug line = 18:13]
  %84 = sext i32 %83 to i64, !dbg !73             ; [#uses=1 type=i64] [debug line = 18:13]
  %85 = load double** %2, align 8, !dbg !73       ; [#uses=1 type=double*] [debug line = 18:13]
  %86 = getelementptr inbounds double* %85, i64 %84, !dbg !73 ; [#uses=1 type=double*] [debug line = 18:13]
  store double %82, double* %86, align 8, !dbg !73 ; [debug line = 18:13]
  %87 = load double* %temp, align 8, !dbg !74     ; [#uses=1 type=double] [debug line = 19:13]
  %88 = load i32* %even, align 4, !dbg !74        ; [#uses=1 type=i32] [debug line = 19:13]
  %89 = sext i32 %88 to i64, !dbg !74             ; [#uses=1 type=i64] [debug line = 19:13]
  %90 = load double** %2, align 8, !dbg !74       ; [#uses=1 type=double*] [debug line = 19:13]
  %91 = getelementptr inbounds double* %90, i64 %89, !dbg !74 ; [#uses=1 type=double*] [debug line = 19:13]
  store double %87, double* %91, align 8, !dbg !74 ; [debug line = 19:13]
  %92 = load i32* %even, align 4, !dbg !75        ; [#uses=1 type=i32] [debug line = 21:13]
  %93 = load i32* %log, align 4, !dbg !75         ; [#uses=1 type=i32] [debug line = 21:13]
  %94 = shl i32 %92, %93, !dbg !75                ; [#uses=1 type=i32] [debug line = 21:13]
  %95 = and i32 %94, 1023, !dbg !75               ; [#uses=1 type=i32] [debug line = 21:13]
  store i32 %95, i32* %rootindex, align 4, !dbg !75 ; [debug line = 21:13]
  %96 = load i32* %rootindex, align 4, !dbg !76   ; [#uses=1 type=i32] [debug line = 22:13]
  %97 = icmp ne i32 %96, 0, !dbg !76              ; [#uses=1 type=i1] [debug line = 22:13]
  br i1 %97, label %98, label %154, !dbg !76      ; [debug line = 22:13]

; <label>:98                                      ; preds = %23
  %99 = load i32* %rootindex, align 4, !dbg !77   ; [#uses=1 type=i32] [debug line = 23:17]
  %100 = sext i32 %99 to i64, !dbg !77            ; [#uses=1 type=i64] [debug line = 23:17]
  %101 = load double** %3, align 8, !dbg !77      ; [#uses=1 type=double*] [debug line = 23:17]
  %102 = getelementptr inbounds double* %101, i64 %100, !dbg !77 ; [#uses=1 type=double*] [debug line = 23:17]
  %103 = load double* %102, align 8, !dbg !77     ; [#uses=1 type=double] [debug line = 23:17]
  %104 = load i32* %odd, align 4, !dbg !77        ; [#uses=1 type=i32] [debug line = 23:17]
  %105 = sext i32 %104 to i64, !dbg !77           ; [#uses=1 type=i64] [debug line = 23:17]
  %106 = load double** %1, align 8, !dbg !77      ; [#uses=1 type=double*] [debug line = 23:17]
  %107 = getelementptr inbounds double* %106, i64 %105, !dbg !77 ; [#uses=1 type=double*] [debug line = 23:17]
  %108 = load double* %107, align 8, !dbg !77     ; [#uses=1 type=double] [debug line = 23:17]
  %109 = fmul double %103, %108, !dbg !77         ; [#uses=1 type=double] [debug line = 23:17]
  %110 = load i32* %rootindex, align 4, !dbg !77  ; [#uses=1 type=i32] [debug line = 23:17]
  %111 = sext i32 %110 to i64, !dbg !77           ; [#uses=1 type=i64] [debug line = 23:17]
  %112 = load double** %4, align 8, !dbg !77      ; [#uses=1 type=double*] [debug line = 23:17]
  %113 = getelementptr inbounds double* %112, i64 %111, !dbg !77 ; [#uses=1 type=double*] [debug line = 23:17]
  %114 = load double* %113, align 8, !dbg !77     ; [#uses=1 type=double] [debug line = 23:17]
  %115 = load i32* %odd, align 4, !dbg !77        ; [#uses=1 type=i32] [debug line = 23:17]
  %116 = sext i32 %115 to i64, !dbg !77           ; [#uses=1 type=i64] [debug line = 23:17]
  %117 = load double** %2, align 8, !dbg !77      ; [#uses=1 type=double*] [debug line = 23:17]
  %118 = getelementptr inbounds double* %117, i64 %116, !dbg !77 ; [#uses=1 type=double*] [debug line = 23:17]
  %119 = load double* %118, align 8, !dbg !77     ; [#uses=1 type=double] [debug line = 23:17]
  %120 = fmul double %114, %119, !dbg !77         ; [#uses=1 type=double] [debug line = 23:17]
  %121 = fsub double %109, %120, !dbg !77         ; [#uses=1 type=double] [debug line = 23:17]
  store double %121, double* %temp, align 8, !dbg !77 ; [debug line = 23:17]
  %122 = load i32* %rootindex, align 4, !dbg !79  ; [#uses=1 type=i32] [debug line = 25:17]
  %123 = sext i32 %122 to i64, !dbg !79           ; [#uses=1 type=i64] [debug line = 25:17]
  %124 = load double** %3, align 8, !dbg !79      ; [#uses=1 type=double*] [debug line = 25:17]
  %125 = getelementptr inbounds double* %124, i64 %123, !dbg !79 ; [#uses=1 type=double*] [debug line = 25:17]
  %126 = load double* %125, align 8, !dbg !79     ; [#uses=1 type=double] [debug line = 25:17]
  %127 = load i32* %odd, align 4, !dbg !79        ; [#uses=1 type=i32] [debug line = 25:17]
  %128 = sext i32 %127 to i64, !dbg !79           ; [#uses=1 type=i64] [debug line = 25:17]
  %129 = load double** %2, align 8, !dbg !79      ; [#uses=1 type=double*] [debug line = 25:17]
  %130 = getelementptr inbounds double* %129, i64 %128, !dbg !79 ; [#uses=1 type=double*] [debug line = 25:17]
  %131 = load double* %130, align 8, !dbg !79     ; [#uses=1 type=double] [debug line = 25:17]
  %132 = fmul double %126, %131, !dbg !79         ; [#uses=1 type=double] [debug line = 25:17]
  %133 = load i32* %rootindex, align 4, !dbg !79  ; [#uses=1 type=i32] [debug line = 25:17]
  %134 = sext i32 %133 to i64, !dbg !79           ; [#uses=1 type=i64] [debug line = 25:17]
  %135 = load double** %4, align 8, !dbg !79      ; [#uses=1 type=double*] [debug line = 25:17]
  %136 = getelementptr inbounds double* %135, i64 %134, !dbg !79 ; [#uses=1 type=double*] [debug line = 25:17]
  %137 = load double* %136, align 8, !dbg !79     ; [#uses=1 type=double] [debug line = 25:17]
  %138 = load i32* %odd, align 4, !dbg !79        ; [#uses=1 type=i32] [debug line = 25:17]
  %139 = sext i32 %138 to i64, !dbg !79           ; [#uses=1 type=i64] [debug line = 25:17]
  %140 = load double** %1, align 8, !dbg !79      ; [#uses=1 type=double*] [debug line = 25:17]
  %141 = getelementptr inbounds double* %140, i64 %139, !dbg !79 ; [#uses=1 type=double*] [debug line = 25:17]
  %142 = load double* %141, align 8, !dbg !79     ; [#uses=1 type=double] [debug line = 25:17]
  %143 = fmul double %137, %142, !dbg !79         ; [#uses=1 type=double] [debug line = 25:17]
  %144 = fadd double %132, %143, !dbg !79         ; [#uses=1 type=double] [debug line = 25:17]
  %145 = load i32* %odd, align 4, !dbg !79        ; [#uses=1 type=i32] [debug line = 25:17]
  %146 = sext i32 %145 to i64, !dbg !79           ; [#uses=1 type=i64] [debug line = 25:17]
  %147 = load double** %2, align 8, !dbg !79      ; [#uses=1 type=double*] [debug line = 25:17]
  %148 = getelementptr inbounds double* %147, i64 %146, !dbg !79 ; [#uses=1 type=double*] [debug line = 25:17]
  store double %144, double* %148, align 8, !dbg !79 ; [debug line = 25:17]
  %149 = load double* %temp, align 8, !dbg !80    ; [#uses=1 type=double] [debug line = 27:17]
  %150 = load i32* %odd, align 4, !dbg !80        ; [#uses=1 type=i32] [debug line = 27:17]
  %151 = sext i32 %150 to i64, !dbg !80           ; [#uses=1 type=i64] [debug line = 27:17]
  %152 = load double** %1, align 8, !dbg !80      ; [#uses=1 type=double*] [debug line = 27:17]
  %153 = getelementptr inbounds double* %152, i64 %151, !dbg !80 ; [#uses=1 type=double*] [debug line = 27:17]
  store double %149, double* %153, align 8, !dbg !80 ; [debug line = 27:17]
  br label %154, !dbg !81                         ; [debug line = 28:13]

; <label>:154                                     ; preds = %98, %23
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !82 ; [debug line = 29:9]
  br label %155, !dbg !82                         ; [debug line = 29:9]

; <label>:155                                     ; preds = %154
  %156 = load i32* %odd, align 4, !dbg !83        ; [#uses=1 type=i32] [debug line = 9:39]
  %157 = add nsw i32 %156, 1, !dbg !83            ; [#uses=1 type=i32] [debug line = 9:39]
  store i32 %157, i32* %odd, align 4, !dbg !83    ; [debug line = 9:39]
  br label %20, !dbg !83                          ; [debug line = 9:39]

; <label>:158                                     ; preds = %20
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !84 ; [debug line = 30:5]
  br label %159, !dbg !84                         ; [debug line = 30:5]

; <label>:159                                     ; preds = %158
  %160 = load i32* %span, align 4, !dbg !85       ; [#uses=1 type=i32] [debug line = 8:35]
  %161 = ashr i32 %160, 1, !dbg !85               ; [#uses=1 type=i32] [debug line = 8:35]
  store i32 %161, i32* %span, align 4, !dbg !85   ; [debug line = 8:35]
  %162 = load i32* %log, align 4, !dbg !85        ; [#uses=1 type=i32] [debug line = 8:35]
  %163 = add nsw i32 %162, 1, !dbg !85            ; [#uses=1 type=i32] [debug line = 8:35]
  store i32 %163, i32* %log, align 4, !dbg !85    ; [debug line = 8:35]
  br label %14, !dbg !85                          ; [debug line = 8:35]

; <label>:164                                     ; preds = %14
  ret void, !dbg !86                              ; [debug line = 31:1]
}

; [#uses=10]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=4]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=4]
declare void @_ssdm_op_SpecResource(...) nounwind

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

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/jsk_027/Thesis/machsuite_fft_workspace/solution2/.autopilot/db/fft.pragma.2.c", metadata !"/home/jsk_027/Thesis", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !13} ; [ DW_TAG_compile_unit ]
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
!43 = metadata !{i32 4, i32 1, metadata !39, null}
!44 = metadata !{i32 786688, metadata !39, metadata !"even", metadata !6, i32 4, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!45 = metadata !{i32 4, i32 9, metadata !39, null}
!46 = metadata !{i32 786688, metadata !39, metadata !"odd", metadata !6, i32 4, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!47 = metadata !{i32 4, i32 15, metadata !39, null}
!48 = metadata !{i32 786688, metadata !39, metadata !"span", metadata !6, i32 4, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!49 = metadata !{i32 4, i32 20, metadata !39, null}
!50 = metadata !{i32 786688, metadata !39, metadata !"log", metadata !6, i32 4, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!51 = metadata !{i32 4, i32 26, metadata !39, null}
!52 = metadata !{i32 786688, metadata !39, metadata !"rootindex", metadata !6, i32 4, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!53 = metadata !{i32 4, i32 31, metadata !39, null}
!54 = metadata !{i32 786688, metadata !39, metadata !"temp", metadata !6, i32 5, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!55 = metadata !{i32 5, i32 12, metadata !39, null}
!56 = metadata !{i32 6, i32 5, metadata !39, null}
!57 = metadata !{i32 8, i32 15, metadata !58, null}
!58 = metadata !{i32 786443, metadata !39, i32 8, i32 11, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 8, i32 52, metadata !60, null}
!60 = metadata !{i32 786443, metadata !58, i32 8, i32 51, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 9, i32 1, metadata !60, null}
!62 = metadata !{i32 9, i32 19, metadata !63, null}
!63 = metadata !{i32 786443, metadata !60, i32 9, i32 15, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 9, i32 46, metadata !65, null}
!65 = metadata !{i32 786443, metadata !63, i32 9, i32 45, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 10, i32 1, metadata !65, null}
!67 = metadata !{i32 10, i32 13, metadata !65, null}
!68 = metadata !{i32 11, i32 13, metadata !65, null}
!69 = metadata !{i32 13, i32 13, metadata !65, null}
!70 = metadata !{i32 14, i32 13, metadata !65, null}
!71 = metadata !{i32 15, i32 13, metadata !65, null}
!72 = metadata !{i32 17, i32 13, metadata !65, null}
!73 = metadata !{i32 18, i32 13, metadata !65, null}
!74 = metadata !{i32 19, i32 13, metadata !65, null}
!75 = metadata !{i32 21, i32 13, metadata !65, null}
!76 = metadata !{i32 22, i32 13, metadata !65, null}
!77 = metadata !{i32 23, i32 17, metadata !78, null}
!78 = metadata !{i32 786443, metadata !65, i32 22, i32 26, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 25, i32 17, metadata !78, null}
!80 = metadata !{i32 27, i32 17, metadata !78, null}
!81 = metadata !{i32 28, i32 13, metadata !78, null}
!82 = metadata !{i32 29, i32 9, metadata !65, null}
!83 = metadata !{i32 9, i32 39, metadata !63, null}
!84 = metadata !{i32 30, i32 5, metadata !60, null}
!85 = metadata !{i32 8, i32 35, metadata !58, null}
!86 = metadata !{i32 31, i32 1, metadata !39, null}
