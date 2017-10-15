; ModuleID = '/home/chathura/HoG_IP/backsub_hls_maxi/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mode1 = internal constant [10 x i8] c"s_axilite\00"
@mode = internal constant [10 x i8] c"s_axilite\00"
@memcpy_OC_frame_out_OC_str = internal unnamed_addr constant [18 x i8] c"memcpy.frame_out.\00"
@memcpy_OC_OC_frame_in_str = internal unnamed_addr constant [17 x i8] c"memcpy..frame_in\00"
@llvm_global_ctors_1 = appending global [2 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a1939]
@llvm_global_ctors_0 = appending global [2 x i32] [i32 65535, i32 65535]
@burstwrite_OC_region_str = internal unnamed_addr constant [18 x i8] c"burstwrite.region\00"
@burstread_OC_region_str = internal unnamed_addr constant [17 x i8] c"burstread.region\00"
@bundle2 = internal constant [1 x i8] zeroinitializer
@bundle = internal constant [1 x i8] zeroinitializer
@backsub_str = internal unnamed_addr constant [8 x i8] c"backsub\00"
@p_str2 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str1813 = private unnamed_addr constant [9 x i8] c"memcopy2\00", align 1
@p_str1812 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str1811 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str1810 = private unnamed_addr constant [6 x i8] c"loop1\00", align 1
@p_str1809 = private unnamed_addr constant [9 x i8] c"memcopy1\00", align 1
@p_str1808 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@p_str1807 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str1806 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1805 = private unnamed_addr constant [9 x i8] c"CRTL_BUS\00", align 1
@p_str1804 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str1 = internal unnamed_addr constant [1 x i8] zeroinitializer

declare i54 @llvm.part.select.i54(i54, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define i32 @backsub(i8* %gmem, i32 %frame_in, i32 %frame_out, i1 %init) {
  %init_read = call i1 @_ssdm_op_Read.s_axilite.i1(i1 %init)
  %frame_out_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %frame_out)
  %frame_in_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %frame_in)
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %gmem), !map !10
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %init) nounwind, !map !17
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !23
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @backsub_str) nounwind
  %frame1 = alloca [103680 x i8], align 16
  %frame2 = alloca [103680 x i8], align 16
  %frame3 = alloca [103680 x i8], align 16
  %out = alloca [103680 x i8], align 16
  call void (...)* @_ssdm_op_SpecInterface(i1 %init, [10 x i8]* @p_str1804, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @p_str1805, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %frame_out, [10 x i8]* @mode1, i32 0, i32 0, i32 0, i32 103680, [1 x i8]* @bundle2, [6 x i8]* @p_str1808, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %gmem, [6 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 103680, [1 x i8]* @p_str1806, [6 x i8]* @p_str1808, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %frame_in, [10 x i8]* @mode, i32 0, i32 0, i32 0, i32 103680, [1 x i8]* @bundle, [6 x i8]* @p_str1808, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str1804, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @p_str1805, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str1806) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str1809) nounwind
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str1806) nounwind
  %tmp_17 = sext i32 %frame_in_read to i64
  %gmem_addr = getelementptr i8* %gmem, i64 %tmp_17
  %p_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %gmem_addr, i32 103680)
  br label %burst.rd.header

burst.rd.header:                                  ; preds = %burst.rd.body, %0
  %indvar = phi i17 [ 0, %0 ], [ %indvar_next, %burst.rd.body ]
  %exitcond8 = icmp eq i17 %indvar, -27392
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 103680, i64 103680, i64 103680) nounwind
  %indvar_next = add i17 %indvar, 1
  br i1 %exitcond8, label %burst.rd.end, label %burst.rd.body

burst.rd.body:                                    ; preds = %burst.rd.header
  %burstread_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1)
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopName([17 x i8]* @memcpy_OC_OC_frame_in_str) nounwind
  %tmp_s = zext i17 %indvar to i64
  %gmem_addr_1 = getelementptr i8* %gmem, i64 %tmp_17
  %gmem_addr_1_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %gmem_addr_1)
  %frame1_addr = getelementptr [103680 x i8]* %frame1, i64 0, i64 %tmp_s
  store i8 %gmem_addr_1_read, i8* %frame1_addr, align 1
  %burstread_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_str, i32 %burstread_rbegin) nounwind
  br label %burst.rd.header

burst.rd.end:                                     ; preds = %burst.rd.header
  %empty_8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str1809, i32 %tmp) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @p_str1810) nounwind
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str1806) nounwind
  br i1 %init_read, label %.preheader2, label %.preheader

.preheader2:                                      ; preds = %burst.rd.end, %1
  %i = phi i17 [ %i_1, %1 ], [ 0, %burst.rd.end ]
  %exitcond1 = icmp eq i17 %i, -27392
  %i_1 = add i17 %i, 1
  br i1 %exitcond1, label %.loopexit, label %1

; <label>:1                                       ; preds = %.preheader2
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 103680, i64 103680, i64 103680) nounwind
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1811) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_4 = zext i17 %i to i64
  %frame1_addr_1 = getelementptr inbounds [103680 x i8]* %frame1, i64 0, i64 %tmp_4
  %val = load i8* %frame1_addr_1, align 1
  %frame2_addr = getelementptr inbounds [103680 x i8]* %frame2, i64 0, i64 %tmp_4
  store i8 %val, i8* %frame2_addr, align 1
  %frame3_addr = getelementptr inbounds [103680 x i8]* %frame3, i64 0, i64 %tmp_4
  store i8 %val, i8* %frame3_addr, align 1
  %out_addr = getelementptr inbounds [103680 x i8]* %out, i64 0, i64 %tmp_4
  store i8 %val, i8* %out_addr, align 1
  %empty_10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1811, i32 %tmp_3) nounwind
  br label %.preheader2

.preheader:                                       ; preds = %burst.rd.end, %_ifconv
  %i1 = phi i17 [ %i_2, %_ifconv ], [ 0, %burst.rd.end ]
  %exitcond = icmp eq i17 %i1, -27392
  %i_2 = add i17 %i1, 1
  br i1 %exitcond, label %.loopexit, label %_ifconv

_ifconv:                                          ; preds = %.preheader
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 103680, i64 103680, i64 103680) nounwind
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1812) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_6 = zext i17 %i1 to i64
  %frame1_addr_2 = getelementptr inbounds [103680 x i8]* %frame1, i64 0, i64 %tmp_6
  %val1 = load i8* %frame1_addr_2, align 1
  %frame2_addr_1 = getelementptr inbounds [103680 x i8]* %frame2, i64 0, i64 %tmp_6
  %val2 = load i8* %frame2_addr_1, align 1
  %frame3_addr_1 = getelementptr inbounds [103680 x i8]* %frame3, i64 0, i64 %tmp_6
  %val3 = load i8* %frame3_addr_1, align 1
  %frame2_addr_2 = getelementptr inbounds [103680 x i8]* %frame2, i64 0, i64 %tmp_6
  store i8 %val1, i8* %frame2_addr_2, align 1
  %frame3_addr_2 = getelementptr inbounds [103680 x i8]* %frame3, i64 0, i64 %tmp_6
  store i8 %val2, i8* %frame3_addr_2, align 1
  %tmp_7 = zext i8 %val1 to i32
  %tmp_7_cast = zext i8 %val1 to i9
  %tmp_8 = sitofp i32 %tmp_7 to float
  %tmp_9 = fmul float %tmp_8, 5.000000e-01
  %tmp_10 = zext i8 %val2 to i32
  %tmp_11 = sitofp i32 %tmp_10 to float
  %tmp_12 = fmul float %tmp_11, 0x3FD3333340000000
  %tmp_13 = fadd float %tmp_9, %tmp_12
  %tmp_14 = zext i8 %val3 to i32
  %tmp_15 = sitofp i32 %tmp_14 to float
  %tmp_16 = fmul float %tmp_15, 0x3FC99999A0000000
  %x_assign = fadd float %tmp_13, %tmp_16
  %p_Val2_s = bitcast float %x_assign to i32
  %loc_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 23, i32 30) nounwind
  %loc_V_1 = trunc i32 %p_Val2_s to i23
  %p_Result_s = call i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1 true, i23 %loc_V_1) nounwind
  %tmp_2_i_i = zext i24 %p_Result_s to i54
  %tmp_i_i_i_cast2 = zext i8 %loc_V to i9
  %sh_assign = add i9 -127, %tmp_i_i_i_cast2
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign, i32 8)
  %tmp_4_i_i = sub i8 127, %loc_V
  %tmp_4_i_i_cast = sext i8 %tmp_4_i_i to i9
  %sh_assign_1 = select i1 %isNeg, i9 %tmp_4_i_i_cast, i9 %sh_assign
  %sh_assign_1_cast = sext i9 %sh_assign_1 to i32
  %sh_assign_1_cast_cast = sext i9 %sh_assign_1 to i24
  %tmp_6_i_i = zext i32 %sh_assign_1_cast to i54
  %tmp_7_i_i = lshr i24 %p_Result_s, %sh_assign_1_cast_cast
  %tmp_9_i_i = shl i54 %tmp_2_i_i, %tmp_6_i_i
  %tmp_25 = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %tmp_7_i_i, i32 23)
  %tmp_20 = zext i1 %tmp_25 to i8
  %tmp_22 = call i8 @_ssdm_op_PartSelect.i8.i54.i32.i32(i54 %tmp_9_i_i, i32 23, i32 30)
  %result_V = select i1 %isNeg, i8 %tmp_20, i8 %tmp_22
  %tmp_18_cast = zext i8 %result_V to i9
  %tmp_19 = sub i9 %tmp_7_cast, %tmp_18_cast
  %neg = sub i9 0, %tmp_19
  %abscond = icmp sgt i9 %tmp_19, 0
  %abs = select i1 %abscond, i9 %tmp_19, i9 %neg
  %not_tmp_s = icmp sgt i9 %abs, 14
  %p_cast = select i1 %not_tmp_s, i8 -1, i8 0
  %out_addr_1 = getelementptr inbounds [103680 x i8]* %out, i64 0, i64 %tmp_6
  store i8 %p_cast, i8* %out_addr_1, align 1
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1812, i32 %tmp_5) nounwind
  br label %.preheader

.loopexit:                                        ; preds = %.preheader2, %.preheader
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @p_str1810, i32 %tmp_1) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str1813) nounwind
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str1806) nounwind
  %tmp_18 = sext i32 %frame_out_read to i64
  %gmem_addr_2 = getelementptr i8* %gmem, i64 %tmp_18
  %p_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %gmem_addr_2, i32 103680)
  br label %burst.wr.header

burst.wr.header:                                  ; preds = %burst.wr.body, %.loopexit
  %indvar1 = phi i17 [ 0, %.loopexit ], [ %indvar_next1, %burst.wr.body ]
  %exitcond2 = icmp eq i17 %indvar1, -27392
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 103680, i64 103680, i64 103680) nounwind
  %indvar_next1 = add i17 %indvar1, 1
  br i1 %exitcond2, label %burst.wr.end, label %burst.wr.body

burst.wr.body:                                    ; preds = %burst.wr.header
  %burstwrite_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2)
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopName([18 x i8]* @memcpy_OC_frame_out_OC_str) nounwind
  %tmp_21 = zext i17 %indvar1 to i64
  %out_addr_2 = getelementptr [103680 x i8]* %out, i64 0, i64 %tmp_21
  %out_load = load i8* %out_addr_2, align 1
  %gmem_addr_4 = getelementptr i8* %gmem, i64 %tmp_18
  call void @_ssdm_op_Write.m_axi.i8P(i8* %gmem_addr_4, i8 %out_load, i1 true)
  %burstwrite_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region_str, i32 %burstwrite_rbegin) nounwind
  br label %burst.wr.header

burst.wr.end:                                     ; preds = %burst.wr.header
  %gmem_addr_3 = getelementptr i8* %gmem, i64 %tmp_18
  %p_wr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %gmem_addr_3)
  %empty_16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str1813, i32 %tmp_2) nounwind
  ret i32 0
}

define weak i1 @_ssdm_op_WriteResp.m_axi.i8P(i8*) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_WriteReq.m_axi.i8P(i8*, i32) {
entry:
  ret i1 true
}

define weak void @_ssdm_op_Write.m_axi.i8P(i8*, i8, i1) {
entry:
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

define weak void @_ssdm_op_SpecProtocol(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecLoopName(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1 @_ssdm_op_ReadReq.m_axi.i8P(i8*, i32) {
entry:
  ret i1 true
}

define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

define weak i1 @_ssdm_op_Read.s_axilite.i1(i1) {
entry:
  ret i1 %0
}

define weak i8 @_ssdm_op_Read.m_axi.i8P(i8*) {
entry:
  %empty = load i8* %0
  ret i8 %empty
}

define weak i8 @_ssdm_op_PartSelect.i8.i54.i32.i32(i54, i32, i32) nounwind readnone {
entry:
  %empty = call i54 @llvm.part.select.i54(i54 %0, i32 %1, i32 %2)
  %empty_17 = trunc i54 %empty to i8
  ret i8 %empty_17
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_18 = trunc i32 %empty to i8
  ret i8 %empty_18
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i16 @_ssdm_op_HSub(...)

declare i16 @_ssdm_op_HMul(...)

declare i16 @_ssdm_op_HDiv(...)

declare i16 @_ssdm_op_HAdd(...)

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_19 = shl i9 1, %empty
  %empty_20 = and i9 %0, %empty_19
  %empty_21 = icmp ne i9 %empty_20, 0
  ret i1 %empty_21
}

define weak i1 @_ssdm_op_BitSelect.i1.i24.i32(i24, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i24
  %empty_22 = shl i24 1, %empty
  %empty_23 = and i24 %0, %empty_22
  %empty_24 = icmp ne i24 %empty_23, 0
  ret i1 %empty_24
}

define weak i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1, i23) nounwind readnone {
entry:
  %empty = zext i1 %0 to i24
  %empty_25 = zext i23 %1 to i24
  %empty_26 = shl i24 %empty, 23
  %empty_27 = or i24 %empty_26, %empty_25
  ret i24 %empty_27
}

declare void @_GLOBAL__I_a1939() nounwind section ".text.startup"

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0}
!axi4.master.portmap = !{!7}
!axi4.slave.bundlemap = !{!8, !9}

!0 = metadata !{metadata !1, [2 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 1, i32 1}
!7 = metadata !{metadata !"gmem", metadata !"frame_in", metadata !"READONLY", metadata !"frame_out", metadata !"WRITEONLY"}
!8 = metadata !{metadata !"frame_in", metadata !""}
!9 = metadata !{metadata !"frame_out", metadata !""}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 7, metadata !12}
!12 = metadata !{metadata !13, metadata !16}
!13 = metadata !{metadata !"frame_in", metadata !14, metadata !"unsigned char", i32 0, i32 7}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 103679, i32 1}
!16 = metadata !{metadata !"frame_out", metadata !14, metadata !"unsigned char", i32 0, i32 7}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 0, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"init", metadata !21, metadata !"bool", i32 0, i32 0}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 0, i32 0}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 31, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"return", metadata !27, metadata !"int", i32 0, i32 31}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 1, i32 0}
