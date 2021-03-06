// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _fft_HH_
#define _fft_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "fft_dadddsub_64nsbkb.h"
#include "fft_dadd_64ns_64ncud.h"
#include "fft_dsub_64ns_64ndEe.h"
#include "fft_dmul_64ns_64neOg.h"

namespace ap_rtl {

struct fft : public sc_module {
    // Port declarations 32
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<10> > real_r_address0;
    sc_out< sc_logic > real_r_ce0;
    sc_out< sc_logic > real_r_we0;
    sc_out< sc_lv<64> > real_r_d0;
    sc_in< sc_lv<64> > real_r_q0;
    sc_out< sc_lv<10> > real_r_address1;
    sc_out< sc_logic > real_r_ce1;
    sc_out< sc_logic > real_r_we1;
    sc_out< sc_lv<64> > real_r_d1;
    sc_in< sc_lv<64> > real_r_q1;
    sc_out< sc_lv<10> > img_address0;
    sc_out< sc_logic > img_ce0;
    sc_out< sc_logic > img_we0;
    sc_out< sc_lv<64> > img_d0;
    sc_in< sc_lv<64> > img_q0;
    sc_out< sc_lv<10> > img_address1;
    sc_out< sc_logic > img_ce1;
    sc_out< sc_logic > img_we1;
    sc_out< sc_lv<64> > img_d1;
    sc_in< sc_lv<64> > img_q1;
    sc_out< sc_lv<9> > real_twid_address0;
    sc_out< sc_logic > real_twid_ce0;
    sc_in< sc_lv<64> > real_twid_q0;
    sc_out< sc_lv<9> > img_twid_address0;
    sc_out< sc_logic > img_twid_ce0;
    sc_in< sc_lv<64> > img_twid_q0;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    fft(sc_module_name name);
    SC_HAS_PROCESS(fft);

    ~fft();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    fft_dadddsub_64nsbkb<1,5,64,64,64>* fft_dadddsub_64nsbkb_U1;
    fft_dadddsub_64nsbkb<1,5,64,64,64>* fft_dadddsub_64nsbkb_U2;
    fft_dadd_64ns_64ncud<1,5,64,64,64>* fft_dadd_64ns_64ncud_U3;
    fft_dsub_64ns_64ndEe<1,5,64,64,64>* fft_dsub_64ns_64ndEe_U4;
    fft_dmul_64ns_64neOg<1,6,64,64,64>* fft_dmul_64ns_64neOg_U5;
    fft_dmul_64ns_64neOg<1,6,64,64,64>* fft_dmul_64ns_64neOg_U6;
    fft_dmul_64ns_64neOg<1,6,64,64,64>* fft_dmul_64ns_64neOg_U7;
    fft_dmul_64ns_64neOg<1,6,64,64,64>* fft_dmul_64ns_64neOg_U8;
    sc_signal< sc_lv<25> > ap_CS_fsm;
    sc_signal< sc_lv<1> > ap_CS_fsm_state1;
    sc_signal< sc_lv<64> > reg_198;
    sc_signal< sc_lv<1> > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > ap_CS_fsm_state13;
    sc_signal< sc_lv<64> > reg_206;
    sc_signal< sc_lv<32> > odd_cast_fu_214_p1;
    sc_signal< sc_lv<32> > odd_cast_reg_325;
    sc_signal< sc_lv<1> > ap_CS_fsm_state2;
    sc_signal< sc_lv<10> > log_cast2_cast_fu_218_p1;
    sc_signal< sc_lv<10> > log_cast2_cast_reg_332;
    sc_signal< sc_lv<4> > log_1_fu_228_p2;
    sc_signal< sc_lv<4> > log_1_reg_340;
    sc_signal< sc_lv<10> > tmp_12_fu_238_p2;
    sc_signal< sc_lv<10> > tmp_12_reg_345;
    sc_signal< sc_lv<1> > exitcond_fu_222_p2;
    sc_signal< sc_lv<32> > odd_1_fu_264_p2;
    sc_signal< sc_lv<32> > odd_1_reg_353;
    sc_signal< sc_lv<1> > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > icmp_fu_254_p2;
    sc_signal< sc_lv<10> > real_addr_reg_358;
    sc_signal< sc_lv<10> > real_addr_1_reg_364;
    sc_signal< sc_lv<10> > img_addr_reg_370;
    sc_signal< sc_lv<10> > img_addr_1_reg_376;
    sc_signal< sc_lv<10> > rootindex_fu_291_p2;
    sc_signal< sc_lv<10> > rootindex_reg_382;
    sc_signal< sc_lv<30> > tmp_16_fu_306_p1;
    sc_signal< sc_lv<64> > real_load_1_reg_393;
    sc_signal< sc_lv<64> > img_load_1_reg_399;
    sc_signal< sc_lv<64> > grp_fu_166_p2;
    sc_signal< sc_lv<64> > temp_reg_405;
    sc_signal< sc_lv<1> > ap_CS_fsm_state9;
    sc_signal< sc_lv<64> > grp_fu_170_p2;
    sc_signal< sc_lv<64> > tmp_5_reg_410;
    sc_signal< sc_lv<64> > grp_fu_174_p2;
    sc_signal< sc_lv<64> > temp_1_reg_415;
    sc_signal< sc_lv<64> > grp_fu_178_p2;
    sc_signal< sc_lv<64> > tmp_7_reg_420;
    sc_signal< sc_lv<1> > tmp_9_fu_310_p2;
    sc_signal< sc_lv<1> > tmp_9_reg_425;
    sc_signal< sc_lv<1> > ap_CS_fsm_state11;
    sc_signal< sc_lv<1> > ap_CS_fsm_state12;
    sc_signal< sc_lv<64> > real_twid_load_reg_439;
    sc_signal< sc_lv<64> > img_twid_load_reg_445;
    sc_signal< sc_lv<64> > grp_fu_182_p2;
    sc_signal< sc_lv<64> > tmp_1_reg_451;
    sc_signal< sc_lv<1> > ap_CS_fsm_state19;
    sc_signal< sc_lv<64> > grp_fu_186_p2;
    sc_signal< sc_lv<64> > tmp_4_reg_456;
    sc_signal< sc_lv<64> > grp_fu_190_p2;
    sc_signal< sc_lv<64> > tmp_6_reg_461;
    sc_signal< sc_lv<64> > grp_fu_194_p2;
    sc_signal< sc_lv<64> > tmp_10_reg_466;
    sc_signal< sc_lv<64> > temp_2_reg_471;
    sc_signal< sc_lv<1> > ap_CS_fsm_state24;
    sc_signal< sc_lv<64> > tmp_11_reg_476;
    sc_signal< sc_lv<32> > odd_2_fu_320_p2;
    sc_signal< sc_lv<1> > ap_CS_fsm_state25;
    sc_signal< sc_lv<30> > odd_reg_134;
    sc_signal< sc_lv<4> > log_reg_146;
    sc_signal< sc_lv<32> > odd1_reg_157;
    sc_signal< sc_lv<64> > tmp_2_fu_279_p1;
    sc_signal< sc_lv<64> > tmp_3_fu_285_p1;
    sc_signal< sc_lv<64> > tmp_s_fu_315_p1;
    sc_signal< sc_lv<1> > ap_CS_fsm_state10;
    sc_signal< sc_lv<64> > grp_fu_166_p0;
    sc_signal< sc_lv<64> > grp_fu_166_p1;
    sc_signal< sc_lv<1> > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > ap_CS_fsm_state20;
    sc_signal< sc_lv<64> > grp_fu_170_p0;
    sc_signal< sc_lv<64> > grp_fu_170_p1;
    sc_signal< sc_lv<1> > ap_CS_fsm_state14;
    sc_signal< sc_lv<10> > tmp_fu_234_p1;
    sc_signal< sc_lv<22> > tmp_14_fu_244_p4;
    sc_signal< sc_lv<10> > tmp_15_fu_260_p1;
    sc_signal< sc_lv<32> > even_fu_269_p2;
    sc_signal< sc_lv<10> > even_cast_fu_274_p2;
    sc_signal< sc_lv<29> > tmp_17_fu_296_p4;
    sc_signal< sc_lv<2> > grp_fu_166_opcode;
    sc_signal< sc_lv<2> > grp_fu_170_opcode;
    sc_signal< sc_lv<25> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<25> ap_ST_fsm_state1;
    static const sc_lv<25> ap_ST_fsm_state2;
    static const sc_lv<25> ap_ST_fsm_state3;
    static const sc_lv<25> ap_ST_fsm_state4;
    static const sc_lv<25> ap_ST_fsm_state5;
    static const sc_lv<25> ap_ST_fsm_state6;
    static const sc_lv<25> ap_ST_fsm_state7;
    static const sc_lv<25> ap_ST_fsm_state8;
    static const sc_lv<25> ap_ST_fsm_state9;
    static const sc_lv<25> ap_ST_fsm_state10;
    static const sc_lv<25> ap_ST_fsm_state11;
    static const sc_lv<25> ap_ST_fsm_state12;
    static const sc_lv<25> ap_ST_fsm_state13;
    static const sc_lv<25> ap_ST_fsm_state14;
    static const sc_lv<25> ap_ST_fsm_state15;
    static const sc_lv<25> ap_ST_fsm_state16;
    static const sc_lv<25> ap_ST_fsm_state17;
    static const sc_lv<25> ap_ST_fsm_state18;
    static const sc_lv<25> ap_ST_fsm_state19;
    static const sc_lv<25> ap_ST_fsm_state20;
    static const sc_lv<25> ap_ST_fsm_state21;
    static const sc_lv<25> ap_ST_fsm_state22;
    static const sc_lv<25> ap_ST_fsm_state23;
    static const sc_lv<25> ap_ST_fsm_state24;
    static const sc_lv<25> ap_ST_fsm_state25;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<30> ap_const_lv30_200;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<10> ap_const_lv10_3FF;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<22> ap_const_lv22_1;
    static const sc_lv<32> ap_const_lv32_1D;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state19();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state20();
    void thread_ap_CS_fsm_state24();
    void thread_ap_CS_fsm_state25();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_even_cast_fu_274_p2();
    void thread_even_fu_269_p2();
    void thread_exitcond_fu_222_p2();
    void thread_grp_fu_166_opcode();
    void thread_grp_fu_166_p0();
    void thread_grp_fu_166_p1();
    void thread_grp_fu_170_opcode();
    void thread_grp_fu_170_p0();
    void thread_grp_fu_170_p1();
    void thread_icmp_fu_254_p2();
    void thread_img_address0();
    void thread_img_address1();
    void thread_img_ce0();
    void thread_img_ce1();
    void thread_img_d0();
    void thread_img_d1();
    void thread_img_twid_address0();
    void thread_img_twid_ce0();
    void thread_img_we0();
    void thread_img_we1();
    void thread_log_1_fu_228_p2();
    void thread_log_cast2_cast_fu_218_p1();
    void thread_odd_1_fu_264_p2();
    void thread_odd_2_fu_320_p2();
    void thread_odd_cast_fu_214_p1();
    void thread_real_r_address0();
    void thread_real_r_address1();
    void thread_real_r_ce0();
    void thread_real_r_ce1();
    void thread_real_r_d0();
    void thread_real_r_d1();
    void thread_real_r_we0();
    void thread_real_r_we1();
    void thread_real_twid_address0();
    void thread_real_twid_ce0();
    void thread_rootindex_fu_291_p2();
    void thread_tmp_12_fu_238_p2();
    void thread_tmp_14_fu_244_p4();
    void thread_tmp_15_fu_260_p1();
    void thread_tmp_16_fu_306_p1();
    void thread_tmp_17_fu_296_p4();
    void thread_tmp_2_fu_279_p1();
    void thread_tmp_3_fu_285_p1();
    void thread_tmp_9_fu_310_p2();
    void thread_tmp_fu_234_p1();
    void thread_tmp_s_fu_315_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
