/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : U-2022.12
// Date      : Tue Jun 16 10:38:46 2026
/////////////////////////////////////////////////////////////


module i2c_master_bit_ctrl ( clk, rst, nReset, ena, clk_cnt, cmd, cmd_ack, 
        busy, al, din, dout, scl_i, scl_o, scl_oen, sda_i, sda_o, sda_oen, VDD, 
        VSS );
  input [15:0] clk_cnt;
  input [3:0] cmd;
  input clk, rst, nReset, ena, din, scl_i, sda_i, VDD, VSS;
  output cmd_ack, busy, al, dout, scl_o, scl_oen, sda_o, sda_oen;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, dscl_oen,
         N28, slave_wait, sSCL, N29, dSCL, scl_sync, clk_en, N30, N31, N32,
         N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46,
         N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60,
         N61, N62, N63, N64, N65, N66, N67, N68, N69, N70, N71, N72, N73, N74,
         N75, N76, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86, N87, N88,
         N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101,
         N102, N103, N104, N105, N106, N107, N108, N109, N110, N111, N112,
         N113, N114, N115, N116, N117, N118, N119, sSDA, dSDA, N120, N121,
         N122, N123, N124, N125, sta_condition, sto_condition, N126, N127,
         N128, N129, N130, N131, cmd_stop, N132, N133, N134, N135, N136,
         sda_chk, N137, N138, N139, N140, N141, N142, N143, N144, N145, N146,
         N147, N148, N149, N150, N151, N152, N153, N154, N155, N156, N157,
         N158, N159, N160, N161, N162, N163, N164, N165, N166, N167, N168,
         N169, N170, N171, N172, N173, N174, N175, N176, N177, N178, N179,
         N180, N181, N182, N183, N184, N185, N186, N187, N188, N189, N190,
         N191, N192, N193, N194, N195, N196, N197, N198, N199, N200, N201,
         N202, N203, N204, N205, N206, N207, N208, N209, N210, N211, N212,
         N213, N214, N215, N216, N217, N218, N219, N220, N221, N222, N223,
         N224, N225, N226, N227, N228, N229, N230, N231, N232, N233, N234,
         N235, N236, N237, N238, N239, N240, N241, N242, N243, N244, N245,
         N246, N247, N248, N249, N250, N251, N252, N253, N254, N255, N256,
         N257, N258, N259, N260, N261, N262, N263, N264, N265, N266, N267,
         N268, N269, N270, N271, N272, N273, N274, N275, N276, N277, N278,
         N279, N280, N281, N282, N283, N284, N285, N286, N287, N288, N289,
         N290, N291, N292, N293, N294, N295, N296, N297, N298, N299, N300,
         N301, N302, N303, N304, N305, N306, N307, N308, N309, N310, N311,
         N312, N313, N314, N315, N316, N317, N318, N319, N320, N321, N322,
         N323, N324, N325, N326, N327, N328, N329, N330, N331, N332, N333,
         N334, N335, N336, N337, N338, N339, N340, N341, N342, N343, N344,
         N345, N346, N347, net178, net179;
  wire   [15:0] cnt;
  wire   [1:0] cSCL;
  wire   [1:0] cSDA;
  wire   [13:0] filter_cnt;
  wire   [2:0] fSCL;
  wire   [2:0] fSDA;
  wire   [17:0] c_state;
  assign sda_o = 1'b0;
  assign scl_o = 1'b0;

  \**SEQGEN**  dscl_oen_reg ( .clear(1'b0), .preset(1'b0), .next_state(scl_oen), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(dscl_oen), .synch_clear(
        1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1)
         );
  \**SEQGEN**  slave_wait_reg ( .clear(N28), .preset(1'b0), .next_state(N29), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(slave_wait), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  clk_en_reg ( .clear(1'b0), .preset(N28), .next_state(N66), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(clk_en), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \cnt_reg[15]  ( .clear(N28), .preset(1'b0), .next_state(N65), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(cnt[15]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N231) );
  \**SEQGEN**  \cnt_reg[14]  ( .clear(N28), .preset(1'b0), .next_state(N64), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(cnt[14]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N231) );
  \**SEQGEN**  \cnt_reg[13]  ( .clear(N28), .preset(1'b0), .next_state(N63), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(cnt[13]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N231) );
  \**SEQGEN**  \cnt_reg[12]  ( .clear(N28), .preset(1'b0), .next_state(N62), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(cnt[12]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N231) );
  \**SEQGEN**  \cnt_reg[11]  ( .clear(N28), .preset(1'b0), .next_state(N61), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(cnt[11]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N231) );
  \**SEQGEN**  \cnt_reg[10]  ( .clear(N28), .preset(1'b0), .next_state(N60), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(cnt[10]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N231) );
  \**SEQGEN**  \cnt_reg[9]  ( .clear(N28), .preset(1'b0), .next_state(N59), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(cnt[9]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N231) );
  \**SEQGEN**  \cnt_reg[8]  ( .clear(N28), .preset(1'b0), .next_state(N58), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(cnt[8]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N231) );
  \**SEQGEN**  \cnt_reg[7]  ( .clear(N28), .preset(1'b0), .next_state(N57), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(cnt[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N231) );
  \**SEQGEN**  \cnt_reg[6]  ( .clear(N28), .preset(1'b0), .next_state(N56), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(cnt[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N231) );
  \**SEQGEN**  \cnt_reg[5]  ( .clear(N28), .preset(1'b0), .next_state(N55), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(cnt[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N231) );
  \**SEQGEN**  \cnt_reg[4]  ( .clear(N28), .preset(1'b0), .next_state(N54), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(cnt[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N231) );
  \**SEQGEN**  \cnt_reg[3]  ( .clear(N28), .preset(1'b0), .next_state(N53), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(cnt[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N231) );
  \**SEQGEN**  \cnt_reg[2]  ( .clear(N28), .preset(1'b0), .next_state(N52), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(cnt[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N231) );
  \**SEQGEN**  \cnt_reg[1]  ( .clear(N28), .preset(1'b0), .next_state(N51), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(cnt[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N231) );
  \**SEQGEN**  \cnt_reg[0]  ( .clear(N28), .preset(1'b0), .next_state(N50), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(cnt[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N231) );
  \**SEQGEN**  \cSDA_reg[1]  ( .clear(N28), .preset(1'b0), .next_state(N73), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(cSDA[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \cSDA_reg[0]  ( .clear(N28), .preset(1'b0), .next_state(N72), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(cSDA[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \cSCL_reg[1]  ( .clear(N28), .preset(1'b0), .next_state(N71), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(cSCL[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \cSCL_reg[0]  ( .clear(N28), .preset(1'b0), .next_state(N70), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(cSCL[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \filter_cnt_reg[13]  ( .clear(N28), .preset(1'b0), .next_state(
        N105), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        filter_cnt[13]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \filter_cnt_reg[12]  ( .clear(N28), .preset(1'b0), .next_state(
        N104), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        filter_cnt[12]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \filter_cnt_reg[11]  ( .clear(N28), .preset(1'b0), .next_state(
        N103), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        filter_cnt[11]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \filter_cnt_reg[10]  ( .clear(N28), .preset(1'b0), .next_state(
        N102), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        filter_cnt[10]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \filter_cnt_reg[9]  ( .clear(N28), .preset(1'b0), .next_state(
        N101), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        filter_cnt[9]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \filter_cnt_reg[8]  ( .clear(N28), .preset(1'b0), .next_state(
        N100), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        filter_cnt[8]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \filter_cnt_reg[7]  ( .clear(N28), .preset(1'b0), .next_state(
        N99), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        filter_cnt[7]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \filter_cnt_reg[6]  ( .clear(N28), .preset(1'b0), .next_state(
        N98), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        filter_cnt[6]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \filter_cnt_reg[5]  ( .clear(N28), .preset(1'b0), .next_state(
        N97), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        filter_cnt[5]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \filter_cnt_reg[4]  ( .clear(N28), .preset(1'b0), .next_state(
        N96), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        filter_cnt[4]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \filter_cnt_reg[3]  ( .clear(N28), .preset(1'b0), .next_state(
        N95), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        filter_cnt[3]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \filter_cnt_reg[2]  ( .clear(N28), .preset(1'b0), .next_state(
        N94), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        filter_cnt[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \filter_cnt_reg[1]  ( .clear(N28), .preset(1'b0), .next_state(
        N93), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        filter_cnt[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \filter_cnt_reg[0]  ( .clear(N28), .preset(1'b0), .next_state(
        N92), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        filter_cnt[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \fSDA_reg[2]  ( .clear(1'b0), .preset(N28), .next_state(N117), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(fSDA[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N111) );
  \**SEQGEN**  \fSDA_reg[1]  ( .clear(1'b0), .preset(N28), .next_state(N116), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(fSDA[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N111) );
  \**SEQGEN**  \fSDA_reg[0]  ( .clear(1'b0), .preset(N28), .next_state(N115), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(fSDA[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N111) );
  \**SEQGEN**  \fSCL_reg[2]  ( .clear(1'b0), .preset(N28), .next_state(N114), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(fSCL[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N111) );
  \**SEQGEN**  \fSCL_reg[1]  ( .clear(1'b0), .preset(N28), .next_state(N113), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(fSCL[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N111) );
  \**SEQGEN**  \fSCL_reg[0]  ( .clear(1'b0), .preset(N28), .next_state(N112), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(fSCL[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N111) );
  \**SEQGEN**  dSDA_reg ( .clear(1'b0), .preset(N28), .next_state(N125), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(dSDA), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  sSCL_reg ( .clear(1'b0), .preset(N28), .next_state(N122), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(sSCL), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  sSDA_reg ( .clear(1'b0), .preset(N28), .next_state(N123), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(sSDA), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  dSCL_reg ( .clear(1'b0), .preset(N28), .next_state(N124), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(dSCL), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  sto_condition_reg ( .clear(N28), .preset(1'b0), .next_state(
        N129), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        sto_condition), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  sta_condition_reg ( .clear(N28), .preset(1'b0), .next_state(
        N128), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        sta_condition), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  busy_reg ( .clear(N28), .preset(1'b0), .next_state(N131), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(busy), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  cmd_stop_reg ( .clear(N28), .preset(1'b0), .next_state(N135), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(cmd_stop), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N134) );
  \**SEQGEN**  al_reg ( .clear(N28), .preset(1'b0), .next_state(N138), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(al), .synch_clear(
        1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1)
         );
  \**SEQGEN**  dout_reg ( .clear(1'b0), .preset(1'b0), .next_state(sSDA), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(dout), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N139) );
  GTECH_NOT I_0 ( .A(c_state[16]), .Z(N143) );
  GTECH_NOT I_1 ( .A(c_state[15]), .Z(N144) );
  GTECH_NOT I_2 ( .A(c_state[14]), .Z(N145) );
  GTECH_NOT I_3 ( .A(c_state[13]), .Z(N146) );
  GTECH_NOT I_4 ( .A(c_state[12]), .Z(N147) );
  GTECH_NOT I_5 ( .A(c_state[11]), .Z(N148) );
  GTECH_NOT I_6 ( .A(c_state[10]), .Z(N149) );
  GTECH_NOT I_7 ( .A(c_state[9]), .Z(N150) );
  GTECH_NOT I_8 ( .A(c_state[8]), .Z(N151) );
  GTECH_NOT I_9 ( .A(c_state[7]), .Z(N152) );
  GTECH_NOT I_10 ( .A(c_state[6]), .Z(N153) );
  GTECH_NOT I_11 ( .A(c_state[5]), .Z(N154) );
  GTECH_NOT I_12 ( .A(c_state[4]), .Z(N155) );
  GTECH_NOT I_13 ( .A(c_state[3]), .Z(N156) );
  GTECH_NOT I_14 ( .A(c_state[2]), .Z(N157) );
  GTECH_NOT I_15 ( .A(c_state[1]), .Z(N158) );
  GTECH_NOT I_16 ( .A(c_state[0]), .Z(N159) );
  GTECH_OR2 C361 ( .A(cmd[1]), .B(N161), .Z(N162) );
  GTECH_OR2 C362 ( .A(N165), .B(N162), .Z(N163) );
  GTECH_OR2 C365 ( .A(cmd[3]), .B(cmd[2]), .Z(N165) );
  GTECH_OR2 C366 ( .A(N240), .B(cmd[0]), .Z(N166) );
  GTECH_OR2 C367 ( .A(N165), .B(N166), .Z(N167) );
  GTECH_OR2 C370 ( .A(cmd[3]), .B(N169), .Z(N170) );
  GTECH_OR2 C372 ( .A(N170), .B(N175), .Z(N171) );
  GTECH_OR2 C375 ( .A(N173), .B(cmd[2]), .Z(N174) );
  GTECH_OR2 C376 ( .A(cmd[1]), .B(cmd[0]), .Z(N175) );
  GTECH_OR2 C377 ( .A(N174), .B(N175), .Z(N176) );
  \**SEQGEN**  sda_chk_reg ( .clear(N28), .preset(1'b0), .next_state(N230), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(sda_chk), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N209) );
  \**SEQGEN**  \c_state_reg[17]  ( .clear(N28), .preset(1'b0), .next_state(
        1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(c_state[17]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        N209) );
  \**SEQGEN**  \c_state_reg[16]  ( .clear(N28), .preset(1'b0), .next_state(
        N226), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(c_state[16]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        N209) );
  \**SEQGEN**  \c_state_reg[15]  ( .clear(N28), .preset(1'b0), .next_state(
        N225), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(c_state[15]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        N209) );
  \**SEQGEN**  \c_state_reg[14]  ( .clear(N28), .preset(1'b0), .next_state(
        N224), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(c_state[14]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        N209) );
  \**SEQGEN**  \c_state_reg[13]  ( .clear(N28), .preset(1'b0), .next_state(
        N223), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(c_state[13]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        N209) );
  \**SEQGEN**  \c_state_reg[12]  ( .clear(N28), .preset(1'b0), .next_state(
        N222), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(c_state[12]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        N209) );
  \**SEQGEN**  \c_state_reg[11]  ( .clear(N28), .preset(1'b0), .next_state(
        N221), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(c_state[11]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        N209) );
  \**SEQGEN**  \c_state_reg[10]  ( .clear(N28), .preset(1'b0), .next_state(
        N220), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(c_state[10]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        N209) );
  \**SEQGEN**  \c_state_reg[9]  ( .clear(N28), .preset(1'b0), .next_state(N219), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(c_state[9]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N209) );
  \**SEQGEN**  \c_state_reg[8]  ( .clear(N28), .preset(1'b0), .next_state(N218), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(c_state[8]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N209) );
  \**SEQGEN**  \c_state_reg[7]  ( .clear(N28), .preset(1'b0), .next_state(N217), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(c_state[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N209) );
  \**SEQGEN**  \c_state_reg[6]  ( .clear(N28), .preset(1'b0), .next_state(N216), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(c_state[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N209) );
  \**SEQGEN**  \c_state_reg[5]  ( .clear(N28), .preset(1'b0), .next_state(N215), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(c_state[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N209) );
  \**SEQGEN**  \c_state_reg[4]  ( .clear(N28), .preset(1'b0), .next_state(N214), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(c_state[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N209) );
  \**SEQGEN**  \c_state_reg[3]  ( .clear(N28), .preset(1'b0), .next_state(N213), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(c_state[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N209) );
  \**SEQGEN**  \c_state_reg[2]  ( .clear(N28), .preset(1'b0), .next_state(N212), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(c_state[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N209) );
  \**SEQGEN**  \c_state_reg[1]  ( .clear(N28), .preset(1'b0), .next_state(N211), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(c_state[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N209) );
  \**SEQGEN**  \c_state_reg[0]  ( .clear(N28), .preset(1'b0), .next_state(N210), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(c_state[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N209) );
  \**SEQGEN**  cmd_ack_reg ( .clear(N28), .preset(1'b0), .next_state(N227), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(cmd_ack), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  scl_oen_reg ( .clear(1'b0), .preset(N28), .next_state(N228), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(scl_oen), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N237) );
  \**SEQGEN**  sda_oen_reg ( .clear(1'b0), .preset(N28), .next_state(N229), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(sda_oen), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N239) );
  GTECH_NOT I_17 ( .A(cmd[1]), .Z(N240) );
  GTECH_OR2 C595 ( .A(cmd[2]), .B(cmd[3]), .Z(N241) );
  GTECH_OR2 C596 ( .A(N240), .B(N241), .Z(N242) );
  GTECH_OR2 C597 ( .A(cmd[0]), .B(N242), .Z(N243) );
  GTECH_NOT I_18 ( .A(N243), .Z(N244) );
  SUB_UNS_OP sub_260 ( .A(filter_cnt), .B(1'b1), .Z({N91, N90, N89, N88, N87, 
        N86, N85, N84, N83, N82, N81, N80, N79, N78}) );
  SUB_UNS_OP sub_228 ( .A(cnt), .B(1'b1), .Z({N49, N48, N47, N46, N45, N44, 
        N43, N42, N41, N40, N39, N38, N37, N36, N35, N34}) );
  SELECT_OP C617 ( .DATA1(clk_cnt), .DATA2({N49, N48, N47, N46, N45, N44, N43, 
        N42, N41, N40, N39, N38, N37, N36, N35, N34}), .CONTROL1(N0), 
        .CONTROL2(N33), .Z({N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, 
        N55, N54, N53, N52, N51, N50}) );
  GTECH_BUF B_0 ( .A(N31), .Z(N0) );
  SELECT_OP C618 ( .DATA1(1'b1), .DATA2(1'b0), .DATA3(1'b0), .CONTROL1(N0), 
        .CONTROL2(N68), .CONTROL3(N33), .Z(N66) );
  SELECT_OP C619 ( .DATA1({1'b0, 1'b0}), .DATA2({cSCL[0], scl_i}), .CONTROL1(
        N1), .CONTROL2(N2), .Z({N71, N70}) );
  GTECH_BUF B_1 ( .A(rst), .Z(N1) );
  GTECH_BUF B_2 ( .A(N69), .Z(N2) );
  SELECT_OP C620 ( .DATA1({1'b0, 1'b0}), .DATA2({cSDA[0], sda_i}), .CONTROL1(
        N1), .CONTROL2(N2), .Z({N73, N72}) );
  SELECT_OP C621 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA2(clk_cnt[15:2]), .DATA3({
        N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78}), 
        .CONTROL1(N3), .CONTROL2(N107), .CONTROL3(N77), .Z({N105, N104, N103, 
        N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92}) );
  GTECH_BUF B_3 ( .A(N74), .Z(N3) );
  SELECT_OP C622 ( .DATA1(1'b1), .DATA2(1'b1), .DATA3(1'b0), .CONTROL1(N1), 
        .CONTROL2(N119), .CONTROL3(N110), .Z(N111) );
  SELECT_OP C623 ( .DATA1({1'b1, 1'b1, 1'b1}), .DATA2({fSCL[1:0], cSCL[1]}), 
        .CONTROL1(N1), .CONTROL2(N119), .Z({N114, N113, N112}) );
  SELECT_OP C624 ( .DATA1({1'b1, 1'b1, 1'b1}), .DATA2({fSDA[1:0], cSDA[1]}), 
        .CONTROL1(N1), .CONTROL2(N119), .Z({N117, N116, N115}) );
  SELECT_OP C625 ( .DATA1(1'b1), .DATA2(N120), .CONTROL1(N1), .CONTROL2(N2), 
        .Z(N122) );
  SELECT_OP C626 ( .DATA1(1'b1), .DATA2(N121), .CONTROL1(N1), .CONTROL2(N2), 
        .Z(N123) );
  SELECT_OP C627 ( .DATA1(1'b1), .DATA2(sSCL), .CONTROL1(N1), .CONTROL2(N2), 
        .Z(N124) );
  SELECT_OP C628 ( .DATA1(1'b1), .DATA2(sSDA), .CONTROL1(N1), .CONTROL2(N2), 
        .Z(N125) );
  SELECT_OP C629 ( .DATA1(1'b0), .DATA2(N126), .CONTROL1(N1), .CONTROL2(N2), 
        .Z(N128) );
  SELECT_OP C630 ( .DATA1(1'b0), .DATA2(N127), .CONTROL1(N1), .CONTROL2(N2), 
        .Z(N129) );
  SELECT_OP C631 ( .DATA1(1'b0), .DATA2(N130), .CONTROL1(N1), .CONTROL2(N2), 
        .Z(N131) );
  SELECT_OP C632 ( .DATA1(1'b1), .DATA2(1'b1), .DATA3(1'b0), .CONTROL1(N1), 
        .CONTROL2(N136), .CONTROL3(N133), .Z(N134) );
  SELECT_OP C633 ( .DATA1(1'b0), .DATA2(N244), .CONTROL1(N1), .CONTROL2(N136), 
        .Z(N135) );
  SELECT_OP C634 ( .DATA1(1'b0), .DATA2(N137), .CONTROL1(N1), .CONTROL2(N2), 
        .Z(N138) );
  SELECT_OP C635 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b1}), .DATA2({1'b0, 1'b0, 1'b1, 
        1'b0}), .DATA3({1'b1, 1'b0, 1'b0, 1'b0}), .DATA4({1'b0, 1'b1, 1'b0, 
        1'b0}), .DATA5({1'b0, 1'b0, 1'b0, 1'b0}), .CONTROL1(N4), .CONTROL2(N5), 
        .CONTROL3(N6), .CONTROL4(N7), .CONTROL5(N181), .Z({N185, N184, N183, 
        N182}) );
  GTECH_BUF B_4 ( .A(N164), .Z(N4) );
  GTECH_BUF B_5 ( .A(N168), .Z(N5) );
  GTECH_BUF B_6 ( .A(N172), .Z(N6) );
  GTECH_BUF B_7 ( .A(N177), .Z(N7) );
  SELECT_OP C636 ( .DATA1({1'b0, 1'b0, 1'b0, N185, 1'b0, 1'b0, 1'b0, N184, 
        1'b0, 1'b0, 1'b0, N183, 1'b0, 1'b0, 1'b0, 1'b0, N182}), .DATA2({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b1, 1'b0}), .DATA3({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0}), 
        .DATA4({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0}), .DATA5({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 
        1'b0, 1'b0}), .DATA6({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA7({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .DATA8({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .DATA9({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA10({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .DATA11({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA12({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .DATA13({1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .DATA14({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA15({1'b0, 1'b0, 1'b1, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .DATA16({1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA17({1'b1, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .DATA18({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .CONTROL1(N160), .CONTROL2(N8), .CONTROL3(N9), .CONTROL4(N10), 
        .CONTROL5(N11), .CONTROL6(N12), .CONTROL7(N13), .CONTROL8(N14), 
        .CONTROL9(N15), .CONTROL10(N16), .CONTROL11(N17), .CONTROL12(N18), 
        .CONTROL13(N19), .CONTROL14(N20), .CONTROL15(N21), .CONTROL16(N22), 
        .CONTROL17(N23), .CONTROL18(N24), .Z({N202, N201, N200, N199, N198, 
        N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186}) );
  GTECH_BUF B_8 ( .A(c_state[0]), .Z(N8) );
  GTECH_BUF B_9 ( .A(c_state[1]), .Z(N9) );
  GTECH_BUF B_10 ( .A(c_state[2]), .Z(N10) );
  GTECH_BUF B_11 ( .A(c_state[3]), .Z(N11) );
  GTECH_BUF B_12 ( .A(c_state[4]), .Z(N12) );
  GTECH_BUF B_13 ( .A(c_state[5]), .Z(N13) );
  GTECH_BUF B_14 ( .A(c_state[6]), .Z(N14) );
  GTECH_BUF B_15 ( .A(c_state[7]), .Z(N15) );
  GTECH_BUF B_16 ( .A(c_state[8]), .Z(N16) );
  GTECH_BUF B_17 ( .A(c_state[9]), .Z(N17) );
  GTECH_BUF B_18 ( .A(c_state[10]), .Z(N18) );
  GTECH_BUF B_19 ( .A(c_state[11]), .Z(N19) );
  GTECH_BUF B_20 ( .A(c_state[12]), .Z(N20) );
  GTECH_BUF B_21 ( .A(c_state[13]), .Z(N21) );
  GTECH_BUF B_22 ( .A(c_state[14]), .Z(N22) );
  GTECH_BUF B_23 ( .A(c_state[15]), .Z(N23) );
  GTECH_BUF B_24 ( .A(c_state[16]), .Z(N24) );
  SELECT_OP C637 ( .DATA1(1'b1), .DATA2(1'b1), .DATA3(1'b1), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(1'b1), .DATA7(1'b1), .DATA8(1'b1), .DATA9(1'b0), 
        .DATA10(1'b1), .DATA11(1'b1), .DATA12(1'b0), .DATA13(1'b0), .DATA14(
        1'b1), .DATA15(1'b1), .DATA16(1'b0), .CONTROL1(N9), .CONTROL2(N10), 
        .CONTROL3(N11), .CONTROL4(N12), .CONTROL5(N13), .CONTROL6(N14), 
        .CONTROL7(N15), .CONTROL8(N16), .CONTROL9(N17), .CONTROL10(N18), 
        .CONTROL11(N19), .CONTROL12(N20), .CONTROL13(N21), .CONTROL14(N22), 
        .CONTROL15(N23), .CONTROL16(N24), .Z(N203) );
  SELECT_OP C638 ( .DATA1(1'b1), .DATA2(1'b1), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(1'b0), .DATA7(1'b0), .DATA8(1'b0), .DATA9(1'b1), 
        .DATA10(1'b1), .DATA11(1'b1), .DATA12(1'b1), .DATA13(1'b1), .DATA14(
        din), .DATA15(din), .DATA16(din), .DATA17(din), .CONTROL1(N8), 
        .CONTROL2(N9), .CONTROL3(N10), .CONTROL4(N11), .CONTROL5(N12), 
        .CONTROL6(N13), .CONTROL7(N14), .CONTROL8(N15), .CONTROL9(N16), 
        .CONTROL10(N17), .CONTROL11(N18), .CONTROL12(N19), .CONTROL13(N20), 
        .CONTROL14(N21), .CONTROL15(N22), .CONTROL16(N23), .CONTROL17(N24), 
        .Z(N204) );
  SELECT_OP C639 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(1'b0), .DATA7(1'b0), .DATA8(1'b0), .DATA9(1'b0), 
        .DATA10(1'b0), .DATA11(1'b0), .DATA12(1'b0), .DATA13(1'b0), .DATA14(
        1'b0), .DATA15(1'b0), .DATA16(1'b0), .DATA17(1'b1), .DATA18(1'b0), 
        .CONTROL1(N160), .CONTROL2(N8), .CONTROL3(N9), .CONTROL4(N10), 
        .CONTROL5(N11), .CONTROL6(N12), .CONTROL7(N13), .CONTROL8(N14), 
        .CONTROL9(N15), .CONTROL10(N16), .CONTROL11(N17), .CONTROL12(N18), 
        .CONTROL13(N19), .CONTROL14(N20), .CONTROL15(N21), .CONTROL16(N22), 
        .CONTROL17(N23), .CONTROL18(N24), .Z(N205) );
  SELECT_OP C640 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(1'b1), .DATA7(1'b0), .DATA8(1'b0), .DATA9(1'b0), 
        .DATA10(1'b1), .DATA11(1'b0), .DATA12(1'b0), .DATA13(1'b0), .DATA14(
        1'b1), .DATA15(1'b0), .DATA16(1'b0), .DATA17(1'b0), .DATA18(1'b1), 
        .CONTROL1(N160), .CONTROL2(N8), .CONTROL3(N9), .CONTROL4(N10), 
        .CONTROL5(N11), .CONTROL6(N12), .CONTROL7(N13), .CONTROL8(N14), 
        .CONTROL9(N15), .CONTROL10(N16), .CONTROL11(N17), .CONTROL12(N18), 
        .CONTROL13(N19), .CONTROL14(N20), .CONTROL15(N21), .CONTROL16(N22), 
        .CONTROL17(N23), .CONTROL18(N24), .Z(N206) );
  SELECT_OP C641 ( .DATA1(1'b1), .DATA2(1'b0), .CONTROL1(N25), .CONTROL2(N26), 
        .Z(N207) );
  GTECH_BUF B_25 ( .A(clk_en), .Z(N25) );
  GTECH_BUF B_26 ( .A(N142), .Z(N26) );
  SELECT_OP C642 ( .DATA1(N206), .DATA2(1'b0), .CONTROL1(N25), .CONTROL2(N26), 
        .Z(N208) );
  SELECT_OP C643 ( .DATA1(1'b1), .DATA2(N207), .CONTROL1(N27), .CONTROL2(N141), 
        .Z(N209) );
  GTECH_BUF B_27 ( .A(N140), .Z(N27) );
  SELECT_OP C644 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({N202, 
        N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, 
        N189, N188, N187, N186}), .CONTROL1(N27), .CONTROL2(N141), .Z({N226, 
        N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, 
        N213, N212, N211, N210}) );
  SELECT_OP C645 ( .DATA1(1'b0), .DATA2(N208), .CONTROL1(N27), .CONTROL2(N141), 
        .Z(N227) );
  SELECT_OP C646 ( .DATA1(1'b1), .DATA2(N203), .CONTROL1(N27), .CONTROL2(N141), 
        .Z(N228) );
  SELECT_OP C647 ( .DATA1(1'b1), .DATA2(N204), .CONTROL1(N27), .CONTROL2(N141), 
        .Z(N229) );
  SELECT_OP C648 ( .DATA1(1'b0), .DATA2(N205), .CONTROL1(N27), .CONTROL2(N141), 
        .Z(N230) );
  GTECH_NOT I_19 ( .A(nReset), .Z(N28) );
  GTECH_OR2 C652 ( .A(N248), .B(N249), .Z(N29) );
  GTECH_AND2 C653 ( .A(N246), .B(N247), .Z(N248) );
  GTECH_AND2 C654 ( .A(scl_oen), .B(N245), .Z(N246) );
  GTECH_NOT I_20 ( .A(dscl_oen), .Z(N245) );
  GTECH_NOT I_21 ( .A(sSCL), .Z(N247) );
  GTECH_AND2 C657 ( .A(slave_wait), .B(N247), .Z(N249) );
  GTECH_AND2 C659 ( .A(N250), .B(scl_oen), .Z(scl_sync) );
  GTECH_AND2 C660 ( .A(dSCL), .B(N247), .Z(N250) );
  GTECH_BUF B_28 ( .A(nReset), .Z(N30) );
  GTECH_OR2 C664 ( .A(N269), .B(scl_sync), .Z(N31) );
  GTECH_OR2 C665 ( .A(N267), .B(N268), .Z(N269) );
  GTECH_OR2 C666 ( .A(rst), .B(N266), .Z(N267) );
  GTECH_NOT I_22 ( .A(N265), .Z(N266) );
  GTECH_OR2 C668 ( .A(N264), .B(cnt[0]), .Z(N265) );
  GTECH_OR2 C669 ( .A(N263), .B(cnt[1]), .Z(N264) );
  GTECH_OR2 C670 ( .A(N262), .B(cnt[2]), .Z(N263) );
  GTECH_OR2 C671 ( .A(N261), .B(cnt[3]), .Z(N262) );
  GTECH_OR2 C672 ( .A(N260), .B(cnt[4]), .Z(N261) );
  GTECH_OR2 C673 ( .A(N259), .B(cnt[5]), .Z(N260) );
  GTECH_OR2 C674 ( .A(N258), .B(cnt[6]), .Z(N259) );
  GTECH_OR2 C675 ( .A(N257), .B(cnt[7]), .Z(N258) );
  GTECH_OR2 C676 ( .A(N256), .B(cnt[8]), .Z(N257) );
  GTECH_OR2 C677 ( .A(N255), .B(cnt[9]), .Z(N256) );
  GTECH_OR2 C678 ( .A(N254), .B(cnt[10]), .Z(N255) );
  GTECH_OR2 C679 ( .A(N253), .B(cnt[11]), .Z(N254) );
  GTECH_OR2 C680 ( .A(N252), .B(cnt[12]), .Z(N253) );
  GTECH_OR2 C681 ( .A(N251), .B(cnt[13]), .Z(N252) );
  GTECH_OR2 C682 ( .A(cnt[15]), .B(cnt[14]), .Z(N251) );
  GTECH_NOT I_23 ( .A(ena), .Z(N268) );
  GTECH_OR2 C686 ( .A(slave_wait), .B(N31), .Z(N32) );
  GTECH_NOT I_24 ( .A(N32), .Z(N33) );
  GTECH_AND2 C688 ( .A(N30), .B(N33), .Z(net178) );
  GTECH_NOT I_25 ( .A(N31), .Z(N67) );
  GTECH_AND2 C690 ( .A(slave_wait), .B(N67), .Z(N68) );
  GTECH_NOT I_26 ( .A(rst), .Z(N69) );
  GTECH_OR2 C694 ( .A(rst), .B(N268), .Z(N74) );
  GTECH_NOT I_27 ( .A(N282), .Z(N75) );
  GTECH_OR2 C697 ( .A(N281), .B(filter_cnt[0]), .Z(N282) );
  GTECH_OR2 C698 ( .A(N280), .B(filter_cnt[1]), .Z(N281) );
  GTECH_OR2 C699 ( .A(N279), .B(filter_cnt[2]), .Z(N280) );
  GTECH_OR2 C700 ( .A(N278), .B(filter_cnt[3]), .Z(N279) );
  GTECH_OR2 C701 ( .A(N277), .B(filter_cnt[4]), .Z(N278) );
  GTECH_OR2 C702 ( .A(N276), .B(filter_cnt[5]), .Z(N277) );
  GTECH_OR2 C703 ( .A(N275), .B(filter_cnt[6]), .Z(N276) );
  GTECH_OR2 C704 ( .A(N274), .B(filter_cnt[7]), .Z(N275) );
  GTECH_OR2 C705 ( .A(N273), .B(filter_cnt[8]), .Z(N274) );
  GTECH_OR2 C706 ( .A(N272), .B(filter_cnt[9]), .Z(N273) );
  GTECH_OR2 C707 ( .A(N271), .B(filter_cnt[10]), .Z(N272) );
  GTECH_OR2 C708 ( .A(N270), .B(filter_cnt[11]), .Z(N271) );
  GTECH_OR2 C709 ( .A(filter_cnt[13]), .B(filter_cnt[12]), .Z(N270) );
  GTECH_OR2 C712 ( .A(N75), .B(N74), .Z(N76) );
  GTECH_NOT I_28 ( .A(N76), .Z(N77) );
  GTECH_AND2 C714 ( .A(N30), .B(N77), .Z(net179) );
  GTECH_NOT I_29 ( .A(N74), .Z(N106) );
  GTECH_AND2 C716 ( .A(N75), .B(N106), .Z(N107) );
  GTECH_NOT I_30 ( .A(N295), .Z(N108) );
  GTECH_OR2 C718 ( .A(N294), .B(filter_cnt[0]), .Z(N295) );
  GTECH_OR2 C719 ( .A(N293), .B(filter_cnt[1]), .Z(N294) );
  GTECH_OR2 C720 ( .A(N292), .B(filter_cnt[2]), .Z(N293) );
  GTECH_OR2 C721 ( .A(N291), .B(filter_cnt[3]), .Z(N292) );
  GTECH_OR2 C722 ( .A(N290), .B(filter_cnt[4]), .Z(N291) );
  GTECH_OR2 C723 ( .A(N289), .B(filter_cnt[5]), .Z(N290) );
  GTECH_OR2 C724 ( .A(N288), .B(filter_cnt[6]), .Z(N289) );
  GTECH_OR2 C725 ( .A(N287), .B(filter_cnt[7]), .Z(N288) );
  GTECH_OR2 C726 ( .A(N286), .B(filter_cnt[8]), .Z(N287) );
  GTECH_OR2 C727 ( .A(N285), .B(filter_cnt[9]), .Z(N286) );
  GTECH_OR2 C728 ( .A(N284), .B(filter_cnt[10]), .Z(N285) );
  GTECH_OR2 C729 ( .A(N283), .B(filter_cnt[11]), .Z(N284) );
  GTECH_OR2 C730 ( .A(filter_cnt[13]), .B(filter_cnt[12]), .Z(N283) );
  GTECH_OR2 C732 ( .A(N108), .B(rst), .Z(N109) );
  GTECH_NOT I_31 ( .A(N109), .Z(N110) );
  GTECH_NOT I_32 ( .A(rst), .Z(N118) );
  GTECH_AND2 C735 ( .A(N108), .B(N118), .Z(N119) );
  GTECH_OR2 C736 ( .A(N298), .B(N299), .Z(N120) );
  GTECH_OR2 C737 ( .A(N296), .B(N297), .Z(N298) );
  GTECH_AND2 C738 ( .A(fSCL[2]), .B(fSCL[1]), .Z(N296) );
  GTECH_AND2 C739 ( .A(fSCL[1]), .B(fSCL[0]), .Z(N297) );
  GTECH_AND2 C740 ( .A(fSCL[2]), .B(fSCL[0]), .Z(N299) );
  GTECH_OR2 C741 ( .A(N302), .B(N303), .Z(N121) );
  GTECH_OR2 C742 ( .A(N300), .B(N301), .Z(N302) );
  GTECH_AND2 C743 ( .A(fSDA[2]), .B(fSDA[1]), .Z(N300) );
  GTECH_AND2 C744 ( .A(fSDA[1]), .B(fSDA[0]), .Z(N301) );
  GTECH_AND2 C745 ( .A(fSDA[2]), .B(fSDA[0]), .Z(N303) );
  GTECH_AND2 C746 ( .A(N305), .B(sSCL), .Z(N126) );
  GTECH_AND2 C747 ( .A(N304), .B(dSDA), .Z(N305) );
  GTECH_NOT I_33 ( .A(sSDA), .Z(N304) );
  GTECH_AND2 C749 ( .A(N307), .B(sSCL), .Z(N127) );
  GTECH_AND2 C750 ( .A(sSDA), .B(N306), .Z(N307) );
  GTECH_NOT I_34 ( .A(dSDA), .Z(N306) );
  GTECH_AND2 C752 ( .A(N308), .B(N309), .Z(N130) );
  GTECH_OR2 C753 ( .A(sta_condition), .B(busy), .Z(N308) );
  GTECH_NOT I_35 ( .A(sto_condition), .Z(N309) );
  GTECH_OR2 C756 ( .A(clk_en), .B(rst), .Z(N132) );
  GTECH_NOT I_36 ( .A(N132), .Z(N133) );
  GTECH_AND2 C758 ( .A(clk_en), .B(N118), .Z(N136) );
  GTECH_OR2 C759 ( .A(N311), .B(N331), .Z(N137) );
  GTECH_AND2 C760 ( .A(N310), .B(sda_oen), .Z(N311) );
  GTECH_AND2 C761 ( .A(sda_chk), .B(N304), .Z(N310) );
  GTECH_AND2 C763 ( .A(N329), .B(N330), .Z(N331) );
  GTECH_AND2 C764 ( .A(N328), .B(sto_condition), .Z(N329) );
  GTECH_OR2 C765 ( .A(N327), .B(c_state[0]), .Z(N328) );
  GTECH_OR2 C766 ( .A(N326), .B(c_state[1]), .Z(N327) );
  GTECH_OR2 C767 ( .A(N325), .B(c_state[2]), .Z(N326) );
  GTECH_OR2 C768 ( .A(N324), .B(c_state[3]), .Z(N325) );
  GTECH_OR2 C769 ( .A(N323), .B(c_state[4]), .Z(N324) );
  GTECH_OR2 C770 ( .A(N322), .B(c_state[5]), .Z(N323) );
  GTECH_OR2 C771 ( .A(N321), .B(c_state[6]), .Z(N322) );
  GTECH_OR2 C772 ( .A(N320), .B(c_state[7]), .Z(N321) );
  GTECH_OR2 C773 ( .A(N319), .B(c_state[8]), .Z(N320) );
  GTECH_OR2 C774 ( .A(N318), .B(c_state[9]), .Z(N319) );
  GTECH_OR2 C775 ( .A(N317), .B(c_state[10]), .Z(N318) );
  GTECH_OR2 C776 ( .A(N316), .B(c_state[11]), .Z(N317) );
  GTECH_OR2 C777 ( .A(N315), .B(c_state[12]), .Z(N316) );
  GTECH_OR2 C778 ( .A(N314), .B(c_state[13]), .Z(N315) );
  GTECH_OR2 C779 ( .A(N313), .B(c_state[14]), .Z(N314) );
  GTECH_OR2 C780 ( .A(N312), .B(c_state[15]), .Z(N313) );
  GTECH_OR2 C781 ( .A(c_state[17]), .B(c_state[16]), .Z(N312) );
  GTECH_NOT I_37 ( .A(cmd_stop), .Z(N330) );
  GTECH_AND2 C783 ( .A(sSCL), .B(N332), .Z(N139) );
  GTECH_NOT I_38 ( .A(dSCL), .Z(N332) );
  GTECH_OR2 C786 ( .A(rst), .B(al), .Z(N140) );
  GTECH_NOT I_39 ( .A(N140), .Z(N141) );
  GTECH_NOT I_40 ( .A(clk_en), .Z(N142) );
  GTECH_AND2 C792 ( .A(N347), .B(N159), .Z(N160) );
  GTECH_AND2 C793 ( .A(N346), .B(N158), .Z(N347) );
  GTECH_AND2 C794 ( .A(N345), .B(N157), .Z(N346) );
  GTECH_AND2 C795 ( .A(N344), .B(N156), .Z(N345) );
  GTECH_AND2 C796 ( .A(N343), .B(N155), .Z(N344) );
  GTECH_AND2 C797 ( .A(N342), .B(N154), .Z(N343) );
  GTECH_AND2 C798 ( .A(N341), .B(N153), .Z(N342) );
  GTECH_AND2 C799 ( .A(N340), .B(N152), .Z(N341) );
  GTECH_AND2 C800 ( .A(N339), .B(N151), .Z(N340) );
  GTECH_AND2 C801 ( .A(N338), .B(N150), .Z(N339) );
  GTECH_AND2 C802 ( .A(N337), .B(N149), .Z(N338) );
  GTECH_AND2 C803 ( .A(N336), .B(N148), .Z(N337) );
  GTECH_AND2 C804 ( .A(N335), .B(N147), .Z(N336) );
  GTECH_AND2 C805 ( .A(N334), .B(N146), .Z(N335) );
  GTECH_AND2 C806 ( .A(N333), .B(N145), .Z(N334) );
  GTECH_AND2 C807 ( .A(N143), .B(N144), .Z(N333) );
  GTECH_NOT I_41 ( .A(cmd[0]), .Z(N161) );
  GTECH_NOT I_42 ( .A(N163), .Z(N164) );
  GTECH_NOT I_43 ( .A(N167), .Z(N168) );
  GTECH_NOT I_44 ( .A(cmd[2]), .Z(N169) );
  GTECH_NOT I_45 ( .A(N171), .Z(N172) );
  GTECH_NOT I_46 ( .A(cmd[3]), .Z(N173) );
  GTECH_NOT I_47 ( .A(N176), .Z(N177) );
  GTECH_OR2 C838 ( .A(N168), .B(N164), .Z(N178) );
  GTECH_OR2 C839 ( .A(N172), .B(N178), .Z(N179) );
  GTECH_OR2 C840 ( .A(N177), .B(N179), .Z(N180) );
  GTECH_NOT I_48 ( .A(N180), .Z(N181) );
  GTECH_NOT I_49 ( .A(N68), .Z(N231) );
  GTECH_AND2 C843 ( .A(clk_en), .B(N141), .Z(N232) );
  GTECH_AND2 C844 ( .A(N160), .B(N232), .Z(N233) );
  GTECH_AND2 C845 ( .A(c_state[0]), .B(N232), .Z(N234) );
  GTECH_OR2 C846 ( .A(N233), .B(N234), .Z(N235) );
  GTECH_NOT I_50 ( .A(N235), .Z(N236) );
  GTECH_AND2 C848 ( .A(N209), .B(N236), .Z(N237) );
  GTECH_NOT I_51 ( .A(N233), .Z(N238) );
  GTECH_AND2 C850 ( .A(N209), .B(N238), .Z(N239) );
endmodule


module i2c_master_byte_ctrl ( clk, rst, nReset, ena, clk_cnt, start, stop, 
        read, write, ack_in, din, cmd_ack, ack_out, dout, i2c_busy, i2c_al, 
        scl_i, scl_o, scl_oen, sda_i, sda_o, sda_oen, VDD, VSS );
  input [15:0] clk_cnt;
  input [7:0] din;
  output [7:0] dout;
  input clk, rst, nReset, ena, start, stop, read, write, ack_in, scl_i, sda_i,
         VDD, VSS;
  output cmd_ack, ack_out, i2c_busy, i2c_al, scl_o, scl_oen, sda_o, sda_oen;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, core_ack, core_txd,
         core_rxd, go, N11, ld, shift, N12, N13, N14, N15, N16, N17, N18, N19,
         N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33,
         N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47,
         N48, cnt_done, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59,
         N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70, N71, N72, N73,
         N74, N75, N76, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86, N87,
         N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100,
         N101, N102, N103, N104, N105, N106, N107, N108, N109, N110, N111,
         N112, N113, N114, N115, N116, N117, N118, N119, N120, N121, N122,
         N123, N124, N125, N126, N127, N128, N129, N130, N131, N132, net169;
  wire   [3:0] core_cmd;
  wire   [2:0] dcnt;
  wire   [4:0] c_state;

  i2c_master_bit_ctrl bit_controller ( .clk(clk), .rst(rst), .nReset(nReset), 
        .ena(ena), .clk_cnt(clk_cnt), .cmd(core_cmd), .cmd_ack(core_ack), 
        .busy(i2c_busy), .al(i2c_al), .din(core_txd), .dout(core_rxd), .scl_i(
        scl_i), .scl_o(scl_o), .scl_oen(scl_oen), .sda_i(sda_i), .sda_o(sda_o), 
        .sda_oen(sda_oen), .VDD(VDD), .VSS(VSS) );
  \**SEQGEN**  \sr_reg[7]  ( .clear(N11), .preset(1'b0), .next_state(N24), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(dout[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N16) );
  \**SEQGEN**  \sr_reg[6]  ( .clear(N11), .preset(1'b0), .next_state(N23), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(dout[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N16) );
  \**SEQGEN**  \sr_reg[5]  ( .clear(N11), .preset(1'b0), .next_state(N22), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(dout[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N16) );
  \**SEQGEN**  \sr_reg[4]  ( .clear(N11), .preset(1'b0), .next_state(N21), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(dout[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N16) );
  \**SEQGEN**  \sr_reg[3]  ( .clear(N11), .preset(1'b0), .next_state(N20), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(dout[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N16) );
  \**SEQGEN**  \sr_reg[2]  ( .clear(N11), .preset(1'b0), .next_state(N19), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(dout[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N16) );
  \**SEQGEN**  \sr_reg[1]  ( .clear(N11), .preset(1'b0), .next_state(N18), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(dout[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N16) );
  \**SEQGEN**  \sr_reg[0]  ( .clear(N11), .preset(1'b0), .next_state(N17), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(dout[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N16) );
  \**SEQGEN**  \dcnt_reg[2]  ( .clear(N30), .preset(1'b0), .next_state(N44), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(dcnt[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N41) );
  \**SEQGEN**  \dcnt_reg[1]  ( .clear(N30), .preset(1'b0), .next_state(N43), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(dcnt[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N41) );
  \**SEQGEN**  \dcnt_reg[0]  ( .clear(N30), .preset(1'b0), .next_state(N42), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(dcnt[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N41) );
  GTECH_NOT I_0 ( .A(c_state[4]), .Z(N52) );
  GTECH_NOT I_1 ( .A(c_state[3]), .Z(N53) );
  GTECH_NOT I_2 ( .A(c_state[2]), .Z(N54) );
  GTECH_NOT I_3 ( .A(c_state[1]), .Z(N55) );
  GTECH_NOT I_4 ( .A(c_state[0]), .Z(N56) );
  \**SEQGEN**  ack_out_reg ( .clear(N49), .preset(1'b0), .next_state(N119), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(ack_out), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N118) );
  \**SEQGEN**  \core_cmd_reg[3]  ( .clear(N49), .preset(1'b0), .next_state(
        N103), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(core_cmd[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        N102) );
  \**SEQGEN**  \core_cmd_reg[2]  ( .clear(N49), .preset(1'b0), .next_state(
        N101), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(core_cmd[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        N100) );
  \**SEQGEN**  \core_cmd_reg[1]  ( .clear(N49), .preset(1'b0), .next_state(N99), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(core_cmd[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N98) );
  \**SEQGEN**  \core_cmd_reg[0]  ( .clear(N49), .preset(1'b0), .next_state(N97), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(core_cmd[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N96) );
  \**SEQGEN**  core_txd_reg ( .clear(N49), .preset(1'b0), .next_state(N104), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(core_txd), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  shift_reg ( .clear(N49), .preset(1'b0), .next_state(N105), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(shift), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  ld_reg ( .clear(N49), .preset(1'b0), .next_state(N106), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(ld), .synch_clear(
        1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1)
         );
  \**SEQGEN**  cmd_ack_reg ( .clear(N49), .preset(1'b0), .next_state(N107), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(cmd_ack), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \c_state_reg[4]  ( .clear(N49), .preset(1'b0), .next_state(N117), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(c_state[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N116) );
  \**SEQGEN**  \c_state_reg[3]  ( .clear(N49), .preset(1'b0), .next_state(N115), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(c_state[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N114) );
  \**SEQGEN**  \c_state_reg[2]  ( .clear(N49), .preset(1'b0), .next_state(N113), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(c_state[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N112) );
  \**SEQGEN**  \c_state_reg[1]  ( .clear(N49), .preset(1'b0), .next_state(N111), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(c_state[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N110) );
  \**SEQGEN**  \c_state_reg[0]  ( .clear(N49), .preset(1'b0), .next_state(N109), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(c_state[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N108) );
  SUB_UNS_OP sub_195 ( .A(dcnt), .B(1'b1), .Z({N40, N39, N38}) );
  SELECT_OP C413 ( .DATA1(1'b1), .DATA2(1'b1), .DATA3(1'b1), .DATA4(1'b0), 
        .CONTROL1(N0), .CONTROL2(N26), .CONTROL3(N29), .CONTROL4(N15), .Z(N16)
         );
  GTECH_BUF B_0 ( .A(N12), .Z(N0) );
  SELECT_OP C414 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .DATA2(din), .DATA3({dout[6:0], core_rxd}), .CONTROL1(N0), .CONTROL2(
        N26), .CONTROL3(N29), .Z({N24, N23, N22, N21, N20, N19, N18, N17}) );
  SELECT_OP C415 ( .DATA1(1'b1), .DATA2(1'b1), .DATA3(1'b1), .DATA4(1'b0), 
        .CONTROL1(N1), .CONTROL2(N46), .CONTROL3(N48), .CONTROL4(N36), .Z(N41)
         );
  GTECH_BUF B_1 ( .A(N33), .Z(N1) );
  SELECT_OP C416 ( .DATA1({1'b0, 1'b0, 1'b0}), .DATA2({1'b1, 1'b1, 1'b1}), 
        .DATA3({N40, N39, N38}), .CONTROL1(N1), .CONTROL2(N46), .CONTROL3(N48), 
        .Z({N44, N43, N42}) );
  SELECT_OP C417 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b1}), .DATA2({1'b0, 1'b0, 1'b1, 
        1'b0}), .DATA3({1'b0, 1'b1, 1'b0, 1'b0}), .DATA4({1'b1, 1'b0, 1'b0, 
        1'b0}), .CONTROL1(N2), .CONTROL2(N121), .CONTROL3(N124), .CONTROL4(N60), .Z({N64, N63, N62, N61}) );
  GTECH_BUF B_2 ( .A(start), .Z(N2) );
  SELECT_OP C418 ( .DATA1(N67), .DATA2(1'b0), .CONTROL1(N3), .CONTROL2(N4), 
        .Z(N68) );
  GTECH_BUF B_3 ( .A(core_ack), .Z(N3) );
  GTECH_BUF B_4 ( .A(N66), .Z(N4) );
  SELECT_OP C419 ( .DATA1(ack_in), .DATA2(dout[7]), .CONTROL1(N3), .CONTROL2(
        N4), .Z(N69) );
  SELECT_OP C420 ( .DATA1(N70), .DATA2(1'b0), .CONTROL1(N3), .CONTROL2(N4), 
        .Z(N71) );
  SELECT_OP C421 ( .DATA1(1'b1), .DATA2(ack_in), .CONTROL1(N3), .CONTROL2(N4), 
        .Z(N72) );
  SELECT_OP C422 ( .DATA1(go), .DATA2(core_ack), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(1'b0), .CONTROL1(N57), .CONTROL2(N5), .CONTROL3(
        N6), .CONTROL4(N7), .CONTROL5(N8), .CONTROL6(N9), .Z(N73) );
  GTECH_BUF B_5 ( .A(c_state[0]), .Z(N5) );
  GTECH_BUF B_6 ( .A(c_state[2]), .Z(N6) );
  GTECH_BUF B_7 ( .A(c_state[1]), .Z(N7) );
  GTECH_BUF B_8 ( .A(c_state[3]), .Z(N8) );
  GTECH_BUF B_9 ( .A(c_state[4]), .Z(N9) );
  SELECT_OP C423 ( .DATA1({go, go, go, go}), .DATA2({core_ack, core_ack, 
        core_ack, core_ack}), .DATA3({core_ack, core_ack, core_ack, core_ack}), 
        .DATA4({core_ack, core_ack, core_ack, core_ack}), .DATA5({core_ack, 
        core_ack, core_ack, core_ack}), .DATA6({core_ack, core_ack, core_ack, 
        core_ack}), .CONTROL1(N57), .CONTROL2(N5), .CONTROL3(N6), .CONTROL4(N7), .CONTROL5(N8), .CONTROL6(N9), .Z({N80, N78, N76, N74}) );
  SELECT_OP C424 ( .DATA1({N62, N63, N64, N61}), .DATA2({read, N65, 1'b0, 1'b0}), .DATA3({cnt_done, N67, 1'b0, 1'b0}), .DATA4({N67, cnt_done, 1'b0, 1'b0}), 
        .DATA5({1'b0, 1'b0, stop, 1'b0}), .DATA6({1'b0, 1'b0, 1'b0, 1'b0}), 
        .CONTROL1(N57), .CONTROL2(N5), .CONTROL3(N6), .CONTROL4(N7), 
        .CONTROL5(N8), .CONTROL6(N9), .Z({N81, N79, N77, N75}) );
  SELECT_OP C425 ( .DATA1({go, go, go, go, go}), .DATA2({core_ack, core_ack, 
        core_ack, core_ack, core_ack}), .DATA3({core_ack, core_ack, core_ack, 
        core_ack, core_ack}), .DATA4({core_ack, core_ack, core_ack, core_ack, 
        core_ack}), .DATA5({core_ack, core_ack, core_ack, core_ack, core_ack}), 
        .DATA6({core_ack, core_ack, core_ack, core_ack, core_ack}), .CONTROL1(
        N57), .CONTROL2(N5), .CONTROL3(N6), .CONTROL4(N7), .CONTROL5(N8), 
        .CONTROL6(N9), .Z({N90, N88, N86, N84, N82}) );
  SELECT_OP C426 ( .DATA1({N64, 1'b0, N63, N62, N61}), .DATA2({1'b0, 1'b0, N65, 
        read, 1'b0}), .DATA3({1'b0, cnt_done, N67, 1'b0, 1'b0}), .DATA4({1'b0, 
        cnt_done, 1'b0, N67, 1'b0}), .DATA5({stop, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .DATA6({1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CONTROL1(N57), .CONTROL2(N5), 
        .CONTROL3(N6), .CONTROL4(N7), .CONTROL5(N8), .CONTROL6(N9), .Z({N91, 
        N89, N87, N85, N83}) );
  SELECT_OP C427 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(N68), .DATA4(core_ack), 
        .DATA5(1'b0), .DATA6(1'b0), .CONTROL1(N57), .CONTROL2(N5), .CONTROL3(
        N6), .CONTROL4(N7), .CONTROL5(N8), .CONTROL6(N9), .Z(N92) );
  SELECT_OP C428 ( .DATA1(dout[7]), .DATA2(dout[7]), .DATA3(dout[7]), .DATA4(
        N69), .DATA5(N72), .DATA6(dout[7]), .CONTROL1(N57), .CONTROL2(N5), 
        .CONTROL3(N6), .CONTROL4(N7), .CONTROL5(N8), .CONTROL6(N9), .Z(N93) );
  SELECT_OP C429 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(N71), .DATA6(core_ack), .CONTROL1(N57), .CONTROL2(N5), 
        .CONTROL3(N6), .CONTROL4(N7), .CONTROL5(N8), .CONTROL6(N9), .Z(N94) );
  SELECT_OP C430 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(core_ack), .DATA6(1'b0), .CONTROL1(N57), .CONTROL2(N5), 
        .CONTROL3(N6), .CONTROL4(N7), .CONTROL5(N8), .CONTROL6(N9), .Z(N95) );
  SELECT_OP C431 ( .DATA1({1'b1, 1'b1, 1'b1, 1'b1}), .DATA2({N80, N78, N76, 
        N74}), .CONTROL1(N10), .CONTROL2(N51), .Z({N102, N100, N98, N96}) );
  GTECH_BUF B_10 ( .A(N50), .Z(N10) );
  SELECT_OP C432 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({N81, N79, N77, 
        N75}), .CONTROL1(N10), .CONTROL2(N51), .Z({N103, N101, N99, N97}) );
  SELECT_OP C433 ( .DATA1(1'b0), .DATA2(N93), .CONTROL1(N10), .CONTROL2(N51), 
        .Z(N104) );
  SELECT_OP C434 ( .DATA1(1'b0), .DATA2(N92), .CONTROL1(N10), .CONTROL2(N51), 
        .Z(N105) );
  SELECT_OP C435 ( .DATA1(1'b0), .DATA2(N73), .CONTROL1(N10), .CONTROL2(N51), 
        .Z(N106) );
  SELECT_OP C436 ( .DATA1(1'b0), .DATA2(N94), .CONTROL1(N10), .CONTROL2(N51), 
        .Z(N107) );
  SELECT_OP C437 ( .DATA1({1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .DATA2({N90, N88, 
        N86, N84, N82}), .CONTROL1(N10), .CONTROL2(N51), .Z({N116, N114, N112, 
        N110, N108}) );
  SELECT_OP C438 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({N91, N89, 
        N87, N85, N83}), .CONTROL1(N10), .CONTROL2(N51), .Z({N117, N115, N113, 
        N111, N109}) );
  SELECT_OP C439 ( .DATA1(1'b1), .DATA2(N95), .CONTROL1(N10), .CONTROL2(N51), 
        .Z(N118) );
  SELECT_OP C440 ( .DATA1(1'b0), .DATA2(core_rxd), .CONTROL1(N10), .CONTROL2(
        N51), .Z(N119) );
  GTECH_AND2 C443 ( .A(N126), .B(N127), .Z(go) );
  GTECH_OR2 C444 ( .A(N125), .B(stop), .Z(N126) );
  GTECH_OR2 C445 ( .A(read), .B(write), .Z(N125) );
  GTECH_NOT I_5 ( .A(cmd_ack), .Z(N127) );
  GTECH_NOT I_6 ( .A(nReset), .Z(N11) );
  GTECH_BUF B_11 ( .A(rst), .Z(N12) );
  GTECH_OR2 C451 ( .A(ld), .B(N12), .Z(N13) );
  GTECH_OR2 C452 ( .A(shift), .B(N13), .Z(N14) );
  GTECH_NOT I_7 ( .A(N14), .Z(N15) );
  GTECH_NOT I_8 ( .A(N12), .Z(N25) );
  GTECH_AND2 C455 ( .A(ld), .B(N25), .Z(N26) );
  GTECH_NOT I_9 ( .A(ld), .Z(N27) );
  GTECH_AND2 C457 ( .A(N25), .B(N27), .Z(N28) );
  GTECH_AND2 C458 ( .A(shift), .B(N28), .Z(N29) );
  GTECH_NOT I_10 ( .A(nReset), .Z(N30) );
  GTECH_BUF B_12 ( .A(nReset), .Z(N31) );
  GTECH_BUF B_13 ( .A(N31), .Z(N32) );
  GTECH_BUF B_14 ( .A(rst), .Z(N33) );
  GTECH_OR2 C465 ( .A(ld), .B(N33), .Z(N34) );
  GTECH_OR2 C466 ( .A(shift), .B(N34), .Z(N35) );
  GTECH_NOT I_11 ( .A(N35), .Z(N36) );
  GTECH_AND2 C468 ( .A(N32), .B(N48), .Z(N37) );
  GTECH_NOT I_12 ( .A(N33), .Z(N45) );
  GTECH_AND2 C470 ( .A(ld), .B(N45), .Z(N46) );
  GTECH_AND2 C472 ( .A(N45), .B(N27), .Z(N47) );
  GTECH_AND2 C473 ( .A(shift), .B(N47), .Z(N48) );
  GTECH_AND2 C474 ( .A(N37), .B(N47), .Z(net169) );
  GTECH_NOT I_13 ( .A(N129), .Z(cnt_done) );
  GTECH_OR2 C476 ( .A(N128), .B(dcnt[0]), .Z(N129) );
  GTECH_OR2 C477 ( .A(dcnt[2]), .B(dcnt[1]), .Z(N128) );
  GTECH_NOT I_14 ( .A(nReset), .Z(N49) );
  GTECH_OR2 C479 ( .A(rst), .B(i2c_al), .Z(N50) );
  GTECH_NOT I_15 ( .A(N50), .Z(N51) );
  GTECH_AND2 C482 ( .A(N132), .B(N56), .Z(N57) );
  GTECH_AND2 C483 ( .A(N131), .B(N55), .Z(N132) );
  GTECH_AND2 C484 ( .A(N130), .B(N54), .Z(N131) );
  GTECH_AND2 C485 ( .A(N52), .B(N53), .Z(N130) );
  GTECH_OR2 C495 ( .A(read), .B(start), .Z(N58) );
  GTECH_OR2 C496 ( .A(write), .B(N58), .Z(N59) );
  GTECH_NOT I_16 ( .A(N59), .Z(N60) );
  GTECH_NOT I_17 ( .A(read), .Z(N65) );
  GTECH_NOT I_18 ( .A(core_ack), .Z(N66) );
  GTECH_NOT I_19 ( .A(cnt_done), .Z(N67) );
  GTECH_NOT I_20 ( .A(stop), .Z(N70) );
  GTECH_NOT I_21 ( .A(start), .Z(N120) );
  GTECH_AND2 C522 ( .A(read), .B(N120), .Z(N121) );
  GTECH_NOT I_22 ( .A(read), .Z(N122) );
  GTECH_AND2 C524 ( .A(N120), .B(N122), .Z(N123) );
  GTECH_AND2 C525 ( .A(write), .B(N123), .Z(N124) );
endmodule


module i2c_master_top ( wb_clk_i, wb_rst_i, arst_i, wb_adr_i, wb_dat_i, 
        wb_dat_o, wb_we_i, wb_stb_i, wb_cyc_i, wb_ack_o, wb_inta_o, scl_pad_i, 
        scl_pad_o, scl_padoen_o, sda_pad_i, sda_pad_o, sda_padoen_o, VDD, VSS
 );
  input [2:0] wb_adr_i;
  input [7:0] wb_dat_i;
  output [7:0] wb_dat_o;
  input wb_clk_i, wb_rst_i, arst_i, wb_we_i, wb_stb_i, wb_cyc_i, scl_pad_i,
         sda_pad_i, VDD, VSS;
  output wb_ack_o, wb_inta_o, scl_pad_o, scl_padoen_o, sda_pad_o, sda_padoen_o;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14,
         wb_wacc, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26,
         N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, sr_1, sr_0,
         N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51,
         N52, N53, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65,
         N66, N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79,
         done, i2c_al, N80, N81, N82, N83, N84, N85, N86, N87, N88, N89, N90,
         N91, N92, N93, irxack, N94, N95, N96, N97, N98, N99, N100, N101, N102,
         N103, N104, N105, N106, N107, N108, N109, N110, N111, N112, N113,
         N114, N115, N116, N117;
  wire   [15:0] prer;
  wire   [7:0] ctr;
  wire   [7:0] rxr;
  wire   [7:5] sr;
  wire   [7:0] txr;
  wire   [7:0] cr;

  \**SEQGEN**  wb_ack_o_reg ( .clear(1'b0), .preset(1'b0), .next_state(N15), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(wb_ack_o), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  GTECH_AND2 C9 ( .A(N107), .B(N16), .Z(N18) );
  GTECH_AND2 C10 ( .A(N18), .B(N17), .Z(N19) );
  GTECH_OR2 C12 ( .A(wb_adr_i[2]), .B(wb_adr_i[1]), .Z(N20) );
  GTECH_OR2 C13 ( .A(N20), .B(N17), .Z(N21) );
  GTECH_OR2 C16 ( .A(wb_adr_i[2]), .B(N16), .Z(N23) );
  GTECH_OR2 C17 ( .A(N23), .B(wb_adr_i[0]), .Z(N24) );
  GTECH_OR2 C22 ( .A(N23), .B(N17), .Z(N26) );
  GTECH_OR2 C25 ( .A(N107), .B(wb_adr_i[1]), .Z(N28) );
  GTECH_OR2 C26 ( .A(N28), .B(wb_adr_i[0]), .Z(N29) );
  GTECH_OR2 C31 ( .A(N28), .B(N17), .Z(N31) );
  GTECH_OR2 C35 ( .A(N107), .B(N16), .Z(N33) );
  GTECH_OR2 C36 ( .A(N33), .B(wb_adr_i[0]), .Z(N34) );
  GTECH_AND2 C38 ( .A(wb_adr_i[2]), .B(wb_adr_i[1]), .Z(N36) );
  GTECH_AND2 C39 ( .A(N36), .B(wb_adr_i[0]), .Z(N37) );
  \**SEQGEN**  \wb_dat_o_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N45), .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(
        wb_dat_o[7]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \wb_dat_o_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N44), .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(
        wb_dat_o[6]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \wb_dat_o_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N43), .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(
        wb_dat_o[5]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \wb_dat_o_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N42), .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(
        wb_dat_o[4]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \wb_dat_o_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N41), .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(
        wb_dat_o[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \wb_dat_o_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N40), .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(
        wb_dat_o[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \wb_dat_o_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N39), .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(
        wb_dat_o[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \wb_dat_o_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N38), .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(
        wb_dat_o[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \txr_reg[7]  ( .clear(N46), .preset(1'b0), .next_state(N72), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(txr[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N73) );
  \**SEQGEN**  \txr_reg[6]  ( .clear(N46), .preset(1'b0), .next_state(N71), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(txr[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N73) );
  \**SEQGEN**  \txr_reg[5]  ( .clear(N46), .preset(1'b0), .next_state(N70), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(txr[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N73) );
  \**SEQGEN**  \txr_reg[4]  ( .clear(N46), .preset(1'b0), .next_state(N69), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(txr[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N73) );
  \**SEQGEN**  \txr_reg[3]  ( .clear(N46), .preset(1'b0), .next_state(N68), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(txr[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N73) );
  \**SEQGEN**  \txr_reg[2]  ( .clear(N46), .preset(1'b0), .next_state(N67), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(txr[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N73) );
  \**SEQGEN**  \txr_reg[1]  ( .clear(N46), .preset(1'b0), .next_state(N66), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(txr[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N73) );
  \**SEQGEN**  \txr_reg[0]  ( .clear(N46), .preset(1'b0), .next_state(N65), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(txr[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N73) );
  \**SEQGEN**  \prer_reg[15]  ( .clear(1'b0), .preset(N46), .next_state(N62), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(prer[15]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N63) );
  \**SEQGEN**  \prer_reg[14]  ( .clear(1'b0), .preset(N46), .next_state(N61), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(prer[14]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N63) );
  \**SEQGEN**  \prer_reg[13]  ( .clear(1'b0), .preset(N46), .next_state(N60), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(prer[13]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N63) );
  \**SEQGEN**  \prer_reg[12]  ( .clear(1'b0), .preset(N46), .next_state(N59), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(prer[12]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N63) );
  \**SEQGEN**  \prer_reg[11]  ( .clear(1'b0), .preset(N46), .next_state(N58), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(prer[11]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N63) );
  \**SEQGEN**  \prer_reg[10]  ( .clear(1'b0), .preset(N46), .next_state(N57), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(prer[10]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N63) );
  \**SEQGEN**  \prer_reg[9]  ( .clear(1'b0), .preset(N46), .next_state(N56), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(prer[9]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N63) );
  \**SEQGEN**  \prer_reg[8]  ( .clear(1'b0), .preset(N46), .next_state(N55), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(prer[8]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N63) );
  \**SEQGEN**  \prer_reg[7]  ( .clear(1'b0), .preset(N46), .next_state(N62), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(prer[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N54) );
  \**SEQGEN**  \prer_reg[6]  ( .clear(1'b0), .preset(N46), .next_state(N61), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(prer[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N54) );
  \**SEQGEN**  \prer_reg[5]  ( .clear(1'b0), .preset(N46), .next_state(N60), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(prer[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N54) );
  \**SEQGEN**  \prer_reg[4]  ( .clear(1'b0), .preset(N46), .next_state(N59), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(prer[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N54) );
  \**SEQGEN**  \prer_reg[3]  ( .clear(1'b0), .preset(N46), .next_state(N58), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(prer[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N54) );
  \**SEQGEN**  \prer_reg[2]  ( .clear(1'b0), .preset(N46), .next_state(N57), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(prer[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N54) );
  \**SEQGEN**  \prer_reg[1]  ( .clear(1'b0), .preset(N46), .next_state(N56), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(prer[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N54) );
  \**SEQGEN**  \prer_reg[0]  ( .clear(1'b0), .preset(N46), .next_state(N55), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(prer[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N54) );
  \**SEQGEN**  \ctr_reg[7]  ( .clear(N46), .preset(1'b0), .next_state(N72), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(ctr[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N64) );
  \**SEQGEN**  \ctr_reg[6]  ( .clear(N46), .preset(1'b0), .next_state(N71), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(ctr[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N64) );
  \**SEQGEN**  \ctr_reg[5]  ( .clear(N46), .preset(1'b0), .next_state(N70), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(ctr[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N64) );
  \**SEQGEN**  \ctr_reg[4]  ( .clear(N46), .preset(1'b0), .next_state(N69), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(ctr[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N64) );
  \**SEQGEN**  \ctr_reg[3]  ( .clear(N46), .preset(1'b0), .next_state(N68), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(ctr[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N64) );
  \**SEQGEN**  \ctr_reg[2]  ( .clear(N46), .preset(1'b0), .next_state(N67), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(ctr[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N64) );
  \**SEQGEN**  \ctr_reg[1]  ( .clear(N46), .preset(1'b0), .next_state(N66), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(ctr[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N64) );
  \**SEQGEN**  \ctr_reg[0]  ( .clear(N46), .preset(1'b0), .next_state(N65), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(ctr[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N64) );
  \**SEQGEN**  \cr_reg[7]  ( .clear(N46), .preset(1'b0), .next_state(N91), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(cr[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N87) );
  \**SEQGEN**  \cr_reg[6]  ( .clear(N46), .preset(1'b0), .next_state(N90), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(cr[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N87) );
  \**SEQGEN**  \cr_reg[5]  ( .clear(N46), .preset(1'b0), .next_state(N89), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(cr[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N87) );
  \**SEQGEN**  \cr_reg[4]  ( .clear(N46), .preset(1'b0), .next_state(N88), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(cr[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N87) );
  \**SEQGEN**  \cr_reg[3]  ( .clear(N46), .preset(1'b0), .next_state(N86), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(cr[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N85) );
  \**SEQGEN**  \cr_reg[2]  ( .clear(N46), .preset(1'b0), .next_state(N84), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(cr[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N81) );
  \**SEQGEN**  \cr_reg[1]  ( .clear(N46), .preset(1'b0), .next_state(N83), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(cr[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N81) );
  \**SEQGEN**  \cr_reg[0]  ( .clear(N46), .preset(1'b0), .next_state(N82), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(cr[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N81) );
  i2c_master_byte_ctrl byte_controller ( .clk(wb_clk_i), .rst(wb_rst_i), 
        .nReset(arst_i), .ena(ctr[7]), .clk_cnt(prer), .start(cr[7]), .stop(
        cr[6]), .read(cr[5]), .write(cr[4]), .ack_in(cr[3]), .din(txr), 
        .cmd_ack(done), .ack_out(irxack), .dout(rxr), .i2c_busy(sr[6]), 
        .i2c_al(i2c_al), .scl_i(scl_pad_i), .scl_o(scl_pad_o), .scl_oen(
        scl_padoen_o), .sda_i(sda_pad_i), .sda_o(sda_pad_o), .sda_oen(
        sda_padoen_o), .VDD(VDD), .VSS(VSS) );
  \**SEQGEN**  irq_flag_reg ( .clear(N46), .preset(1'b0), .next_state(N102), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(sr_0), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  al_reg ( .clear(N46), .preset(1'b0), .next_state(N99), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(sr[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  rxack_reg ( .clear(N46), .preset(1'b0), .next_state(N100), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(sr[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  tip_reg ( .clear(N46), .preset(1'b0), .next_state(N101), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(sr_1), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  wb_inta_o_reg ( .clear(N46), .preset(1'b0), .next_state(N106), 
        .clocked_on(wb_clk_i), .data_in(1'b0), .enable(1'b0), .Q(wb_inta_o), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  GTECH_NOT I_0 ( .A(wb_adr_i[2]), .Z(N107) );
  GTECH_OR2 C428 ( .A(wb_adr_i[1]), .B(N107), .Z(N108) );
  GTECH_OR2 C429 ( .A(wb_adr_i[0]), .B(N108), .Z(N109) );
  GTECH_NOT I_1 ( .A(N109), .Z(N110) );
  SELECT_OP C431 ( .DATA1(prer[7:0]), .DATA2(prer[15:8]), .DATA3(ctr), .DATA4(
        rxr), .DATA5({sr, 1'b0, 1'b0, 1'b0, sr_1, sr_0}), .DATA6(txr), .DATA7(
        cr), .DATA8({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .CONTROL1(N0), .CONTROL2(N1), .CONTROL3(N2), .CONTROL4(N3), .CONTROL5(
        N4), .CONTROL6(N5), .CONTROL7(N6), .CONTROL8(N7), .Z({N45, N44, N43, 
        N42, N41, N40, N39, N38}) );
  GTECH_BUF B_0 ( .A(N19), .Z(N0) );
  GTECH_BUF B_1 ( .A(N22), .Z(N1) );
  GTECH_BUF B_2 ( .A(N25), .Z(N2) );
  GTECH_BUF B_3 ( .A(N27), .Z(N3) );
  GTECH_BUF B_4 ( .A(N30), .Z(N4) );
  GTECH_BUF B_5 ( .A(N32), .Z(N5) );
  GTECH_BUF B_6 ( .A(N35), .Z(N6) );
  GTECH_BUF B_7 ( .A(N37), .Z(N7) );
  SELECT_OP C432 ( .DATA1({1'b0, 1'b1}), .DATA2({1'b1, 1'b0}), .DATA3({1'b0, 
        1'b0}), .DATA4({1'b0, 1'b0}), .DATA5({1'b0, 1'b0}), .CONTROL1(N0), 
        .CONTROL2(N1), .CONTROL3(N2), .CONTROL4(N3), .CONTROL5(N8), .Z({N51, 
        N50}) );
  GTECH_BUF B_8 ( .A(wb_adr_i[2]), .Z(N8) );
  SELECT_OP C433 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b1), .DATA4(1'b0), 
        .DATA5(1'b0), .CONTROL1(N0), .CONTROL2(N1), .CONTROL3(N2), .CONTROL4(
        N3), .CONTROL5(N8), .Z(N52) );
  SELECT_OP C434 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b1), 
        .DATA5(1'b0), .CONTROL1(N0), .CONTROL2(N1), .CONTROL3(N2), .CONTROL4(
        N3), .CONTROL5(N8), .Z(N53) );
  SELECT_OP C435 ( .DATA1({1'b1, 1'b1}), .DATA2({N51, N50}), .DATA3({1'b0, 
        1'b0}), .CONTROL1(N9), .CONTROL2(N75), .CONTROL3(N49), .Z({N63, N54})
         );
  GTECH_BUF B_9 ( .A(N47), .Z(N9) );
  SELECT_OP C436 ( .DATA1({1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), 
        .DATA2(wb_dat_i), .CONTROL1(N9), .CONTROL2(N75), .Z({N62, N61, N60, 
        N59, N58, N57, N56, N55}) );
  SELECT_OP C437 ( .DATA1(1'b1), .DATA2(N52), .DATA3(1'b0), .CONTROL1(N9), 
        .CONTROL2(N75), .CONTROL3(N49), .Z(N64) );
  SELECT_OP C438 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .DATA2(wb_dat_i), .CONTROL1(N9), .CONTROL2(N75), .Z({N72, N71, N70, 
        N69, N68, N67, N66, N65}) );
  SELECT_OP C439 ( .DATA1(1'b1), .DATA2(N53), .DATA3(1'b0), .CONTROL1(N9), 
        .CONTROL2(N75), .CONTROL3(N49), .Z(N73) );
  SELECT_OP C440 ( .DATA1({1'b1, 1'b1, 1'b1}), .DATA2({N79, N79, N79}), 
        .DATA3({N80, 1'b0, 1'b1}), .CONTROL1(N10), .CONTROL2(N93), .CONTROL3(
        N78), .Z({N87, N85, N81}) );
  GTECH_BUF B_10 ( .A(N76), .Z(N10) );
  SELECT_OP C441 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA2(
        {wb_dat_i[7:4], wb_dat_i[2:0]}), .DATA3({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .CONTROL1(N10), .CONTROL2(N93), .CONTROL3(N78), .Z({N91, 
        N90, N89, N88, N84, N83, N82}) );
  SELECT_OP C442 ( .DATA1(1'b0), .DATA2(wb_dat_i[3]), .CONTROL1(N10), 
        .CONTROL2(N93), .Z(N86) );
  SELECT_OP C443 ( .DATA1(1'b0), .DATA2(N96), .CONTROL1(N11), .CONTROL2(N12), 
        .Z(N99) );
  GTECH_BUF B_11 ( .A(N95), .Z(N11) );
  GTECH_BUF B_12 ( .A(N94), .Z(N12) );
  SELECT_OP C444 ( .DATA1(1'b0), .DATA2(irxack), .CONTROL1(N11), .CONTROL2(N12), .Z(N100) );
  SELECT_OP C445 ( .DATA1(1'b0), .DATA2(N97), .CONTROL1(N11), .CONTROL2(N12), 
        .Z(N101) );
  SELECT_OP C446 ( .DATA1(1'b0), .DATA2(N98), .CONTROL1(N11), .CONTROL2(N12), 
        .Z(N102) );
  SELECT_OP C447 ( .DATA1(1'b0), .DATA2(N105), .CONTROL1(N13), .CONTROL2(N14), 
        .Z(N106) );
  GTECH_BUF B_13 ( .A(N104), .Z(N13) );
  GTECH_BUF B_14 ( .A(N103), .Z(N14) );
  GTECH_AND2 C450 ( .A(wb_we_i), .B(wb_ack_o), .Z(wb_wacc) );
  GTECH_AND2 C451 ( .A(N111), .B(N112), .Z(N15) );
  GTECH_AND2 C452 ( .A(wb_cyc_i), .B(wb_stb_i), .Z(N111) );
  GTECH_NOT I_2 ( .A(wb_ack_o), .Z(N112) );
  GTECH_NOT I_3 ( .A(wb_adr_i[1]), .Z(N16) );
  GTECH_NOT I_4 ( .A(wb_adr_i[0]), .Z(N17) );
  GTECH_NOT I_5 ( .A(N21), .Z(N22) );
  GTECH_NOT I_6 ( .A(N24), .Z(N25) );
  GTECH_NOT I_7 ( .A(N26), .Z(N27) );
  GTECH_NOT I_8 ( .A(N29), .Z(N30) );
  GTECH_NOT I_9 ( .A(N31), .Z(N32) );
  GTECH_NOT I_10 ( .A(N34), .Z(N35) );
  GTECH_NOT I_11 ( .A(arst_i), .Z(N46) );
  GTECH_BUF B_15 ( .A(wb_rst_i), .Z(N47) );
  GTECH_OR2 C474 ( .A(wb_wacc), .B(N47), .Z(N48) );
  GTECH_NOT I_12 ( .A(N48), .Z(N49) );
  GTECH_NOT I_13 ( .A(N47), .Z(N74) );
  GTECH_AND2 C478 ( .A(wb_wacc), .B(N74), .Z(N75) );
  GTECH_BUF B_16 ( .A(wb_rst_i), .Z(N76) );
  GTECH_OR2 C481 ( .A(wb_wacc), .B(N76), .Z(N77) );
  GTECH_NOT I_14 ( .A(N77), .Z(N78) );
  GTECH_AND2 C483 ( .A(ctr[7]), .B(N110), .Z(N79) );
  GTECH_OR2 C485 ( .A(done), .B(i2c_al), .Z(N80) );
  GTECH_NOT I_15 ( .A(N76), .Z(N92) );
  GTECH_AND2 C488 ( .A(wb_wacc), .B(N92), .Z(N93) );
  GTECH_NOT I_16 ( .A(wb_rst_i), .Z(N94) );
  GTECH_BUF B_17 ( .A(wb_rst_i), .Z(N95) );
  GTECH_OR2 C492 ( .A(i2c_al), .B(N114), .Z(N96) );
  GTECH_AND2 C493 ( .A(sr[5]), .B(N113), .Z(N114) );
  GTECH_NOT I_17 ( .A(cr[7]), .Z(N113) );
  GTECH_OR2 C495 ( .A(cr[5]), .B(cr[4]), .Z(N97) );
  GTECH_AND2 C496 ( .A(N116), .B(N117), .Z(N98) );
  GTECH_OR2 C497 ( .A(N115), .B(sr_0), .Z(N116) );
  GTECH_OR2 C498 ( .A(done), .B(i2c_al), .Z(N115) );
  GTECH_NOT I_18 ( .A(cr[0]), .Z(N117) );
  GTECH_NOT I_19 ( .A(wb_rst_i), .Z(N103) );
  GTECH_BUF B_18 ( .A(wb_rst_i), .Z(N104) );
  GTECH_AND2 C503 ( .A(sr_0), .B(ctr[6]), .Z(N105) );
endmodule

