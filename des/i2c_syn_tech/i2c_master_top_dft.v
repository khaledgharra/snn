/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12
// Date      : Sat Jun 27 15:03:41 2026
/////////////////////////////////////////////////////////////


module i2c_master_bit_ctrl_DW01_dec_0_DW01_dec_1 ( A, SUM );
  input [13:0] A;
  output [13:0] SUM;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n19, n20;

  aor21d1 U4 ( .B1(n4), .B2(A[9]), .A(n5), .Z(SUM[9]) );
  oaim21d1 U5 ( .B1(n6), .B2(A[8]), .A(n4), .ZN(SUM[8]) );
  oaim21d1 U6 ( .B1(n7), .B2(A[7]), .A(n6), .ZN(SUM[7]) );
  oaim21d1 U7 ( .B1(n8), .B2(A[6]), .A(n7), .ZN(SUM[6]) );
  oaim21d1 U8 ( .B1(n9), .B2(A[5]), .A(n8), .ZN(SUM[5]) );
  oaim21d1 U9 ( .B1(n10), .B2(A[4]), .A(n9), .ZN(SUM[4]) );
  oaim21d1 U10 ( .B1(n11), .B2(A[3]), .A(n10), .ZN(SUM[3]) );
  oaim21d1 U11 ( .B1(n12), .B2(A[2]), .A(n11), .ZN(SUM[2]) );
  oaim21d1 U12 ( .B1(A[0]), .B2(A[1]), .A(n12), .ZN(SUM[1]) );
  xr02d1 U13 ( .A1(A[13]), .A2(n13), .Z(SUM[13]) );
  xr02d1 U15 ( .A1(A[12]), .A2(n14), .Z(SUM[12]) );
  oaim21d1 U16 ( .B1(n15), .B2(A[11]), .A(n19), .ZN(SUM[11]) );
  oai21d1 U18 ( .B1(n5), .B2(n20), .A(n15), .ZN(SUM[10]) );
  or02d0 U21 ( .A1(n6), .A2(A[8]), .Z(n4) );
  or02d0 U22 ( .A1(n7), .A2(A[7]), .Z(n6) );
  or02d0 U23 ( .A1(n8), .A2(A[6]), .Z(n7) );
  or02d0 U24 ( .A1(n9), .A2(A[5]), .Z(n8) );
  or02d0 U25 ( .A1(n10), .A2(A[4]), .Z(n9) );
  or02d0 U26 ( .A1(n11), .A2(A[3]), .Z(n10) );
  or02d0 U27 ( .A1(n12), .A2(A[2]), .Z(n11) );
  or02d0 U28 ( .A1(A[1]), .A2(A[0]), .Z(n12) );
  nd02d1 U1 ( .A1(n5), .A2(n20), .ZN(n15) );
  inv0d0 U2 ( .I(n14), .ZN(n19) );
  nr02d1 U3 ( .A1(n4), .A2(A[9]), .ZN(n5) );
  nr02d1 U14 ( .A1(n15), .A2(A[11]), .ZN(n14) );
  nr02d1 U17 ( .A1(A[12]), .A2(n19), .ZN(n13) );
  inv0d0 U19 ( .I(A[0]), .ZN(SUM[0]) );
  inv0d0 U20 ( .I(A[10]), .ZN(n20) );
endmodule


module i2c_master_bit_ctrl_DW01_dec_1_DW01_dec_2 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n21,
         n22;

  aor21d1 U4 ( .B1(n4), .B2(A[9]), .A(n5), .Z(SUM[9]) );
  oaim21d1 U5 ( .B1(n6), .B2(A[8]), .A(n4), .ZN(SUM[8]) );
  oaim21d1 U6 ( .B1(n7), .B2(A[7]), .A(n6), .ZN(SUM[7]) );
  oaim21d1 U7 ( .B1(n8), .B2(A[6]), .A(n7), .ZN(SUM[6]) );
  oaim21d1 U8 ( .B1(n9), .B2(A[5]), .A(n8), .ZN(SUM[5]) );
  oaim21d1 U9 ( .B1(n10), .B2(A[4]), .A(n9), .ZN(SUM[4]) );
  oaim21d1 U10 ( .B1(n11), .B2(A[3]), .A(n10), .ZN(SUM[3]) );
  oaim21d1 U11 ( .B1(n12), .B2(A[2]), .A(n11), .ZN(SUM[2]) );
  oaim21d1 U12 ( .B1(A[0]), .B2(A[1]), .A(n12), .ZN(SUM[1]) );
  xr02d1 U13 ( .A1(A[15]), .A2(n13), .Z(SUM[15]) );
  xr02d1 U15 ( .A1(A[14]), .A2(n14), .Z(SUM[14]) );
  oaim21d1 U16 ( .B1(n15), .B2(A[13]), .A(n21), .ZN(SUM[13]) );
  oaim21d1 U18 ( .B1(n16), .B2(A[12]), .A(n15), .ZN(SUM[12]) );
  or02d0 U19 ( .A1(n16), .A2(A[12]), .Z(n15) );
  oaim21d1 U20 ( .B1(n17), .B2(A[11]), .A(n16), .ZN(SUM[11]) );
  or02d0 U21 ( .A1(n17), .A2(A[11]), .Z(n16) );
  oai21d1 U22 ( .B1(n5), .B2(n22), .A(n17), .ZN(SUM[10]) );
  or02d0 U25 ( .A1(n6), .A2(A[8]), .Z(n4) );
  or02d0 U26 ( .A1(n7), .A2(A[7]), .Z(n6) );
  or02d0 U27 ( .A1(n8), .A2(A[6]), .Z(n7) );
  or02d0 U28 ( .A1(n9), .A2(A[5]), .Z(n8) );
  or02d0 U29 ( .A1(n10), .A2(A[4]), .Z(n9) );
  or02d0 U30 ( .A1(n11), .A2(A[3]), .Z(n10) );
  or02d0 U31 ( .A1(n12), .A2(A[2]), .Z(n11) );
  or02d0 U32 ( .A1(A[1]), .A2(A[0]), .Z(n12) );
  nd02d1 U1 ( .A1(n5), .A2(n22), .ZN(n17) );
  inv0d0 U2 ( .I(n14), .ZN(n21) );
  nr02d1 U3 ( .A1(n4), .A2(A[9]), .ZN(n5) );
  nr02d1 U14 ( .A1(n15), .A2(A[13]), .ZN(n14) );
  nr02d1 U17 ( .A1(A[14]), .A2(n21), .ZN(n13) );
  inv0d0 U23 ( .I(A[10]), .ZN(n22) );
  inv0d0 U24 ( .I(A[0]), .ZN(SUM[0]) );
endmodule


module i2c_master_bit_ctrl_test_1 ( clk, rst, nReset, ena, clk_cnt, cmd, 
        cmd_ack, busy, al, din, dout, scl_i, scl_o, scl_oen, sda_i, sda_o, 
        sda_oen, VDD, VSS, test_si4, test_si3, test_si2, test_si1, test_so3, 
        test_so2, test_so1, test_se );
  input [15:0] clk_cnt;
  input [3:0] cmd;
  input clk, rst, nReset, ena, din, scl_i, sda_i, VDD, VSS, test_si4, test_si3,
         test_si2, test_si1, test_se;
  output cmd_ack, busy, al, dout, scl_o, scl_oen, sda_o, sda_oen, test_so3,
         test_so2, test_so1;
  wire   dscl_oen, slave_wait, sSCL, N29, N34, N35, N36, N37, N38, N39, N40,
         N41, N42, N43, N44, N45, N46, N47, N48, N49, N70, N71, N72, N73, N78,
         N79, N80, N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92,
         N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104, N105,
         N122, N123, N124, N125, sta_condition, sto_condition, N128, N129,
         N131, cmd_stop, N138, N227, n88, n89, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n9, n85, n87, n91,
         n92, n36, n37, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n86, n90, n93, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n6, n7, n8, n10;
  wire   [15:0] cnt;
  wire   [1:0] cSCL;
  wire   [1:0] cSDA;
  wire   [13:0] filter_cnt;
  wire   [17:0] c_state;
  assign sda_o = 1'b0;
  assign scl_o = 1'b0;
  assign test_so1 = cnt[2];
  assign test_so2 = filter_cnt[7];
  assign test_so3 = sto_condition;

  nr03d1 U4 ( .A1(n44), .A2(c_state[1]), .A3(c_state[0]), .ZN(n42) );
  nr04d1 U5 ( .A1(din), .A2(c_state[9]), .A3(c_state[12]), .A4(n249), .ZN(n45)
         );
  nr04d1 U6 ( .A1(n51), .A2(n52), .A3(c_state[1]), .A4(n244), .ZN(n48) );
  nd04d1 U8 ( .A1(n88), .A2(n96), .A3(n95), .A4(n53), .ZN(n51) );
  nd04d1 U9 ( .A1(n9), .A2(cmd[1]), .A3(n55), .A4(n254), .ZN(n54) );
  nd04d1 U11 ( .A1(n231), .A2(n252), .A3(n60), .A4(n61), .ZN(n59) );
  an02d1 U12 ( .A1(n55), .A2(cmd[3]), .Z(n61) );
  nd04d1 U14 ( .A1(cmd[2]), .A2(n58), .A3(n253), .A4(n252), .ZN(n62) );
  nr03d1 U15 ( .A1(n39), .A2(cmd[3]), .A3(n233), .ZN(n58) );
  an02d1 U20 ( .A1(cSDA[0]), .A2(n255), .Z(N73) );
  an02d1 U21 ( .A1(sda_i), .A2(n255), .Z(N72) );
  an02d1 U22 ( .A1(cSCL[0]), .A2(n255), .Z(N71) );
  an02d1 U23 ( .A1(scl_i), .A2(n255), .Z(N70) );
  nd04d1 U25 ( .A1(n67), .A2(n68), .A3(n69), .A4(n70), .ZN(n65) );
  nr04d1 U26 ( .A1(cnt[9]), .A2(cnt[8]), .A3(cnt[7]), .A4(cnt[6]), .ZN(n70) );
  nr04d1 U27 ( .A1(cnt[5]), .A2(cnt[4]), .A3(cnt[3]), .A4(cnt[2]), .ZN(n69) );
  nr04d1 U28 ( .A1(cnt[1]), .A2(cnt[15]), .A3(cnt[14]), .A4(cnt[13]), .ZN(n68)
         );
  nr04d1 U29 ( .A1(cnt[12]), .A2(cnt[11]), .A3(cnt[10]), .A4(cnt[0]), .ZN(n67)
         );
  nd04d1 U32 ( .A1(sto_condition), .A2(n233), .A3(n234), .A4(n255), .ZN(n72)
         );
  nd04d1 U34 ( .A1(n239), .A2(n237), .A3(n73), .A4(n74), .ZN(n50) );
  nr04d1 U35 ( .A1(c_state[7]), .A2(c_state[5]), .A3(c_state[4]), .A4(
        c_state[3]), .ZN(n74) );
  an02d1 U36 ( .A1(n46), .A2(n88), .Z(n73) );
  an04d1 U37 ( .A1(n96), .A2(n95), .A3(n97), .A4(n75), .Z(n46) );
  nr04d1 U38 ( .A1(c_state[9]), .A2(c_state[16]), .A3(c_state[12]), .A4(n249), 
        .ZN(n75) );
  nr03d1 U39 ( .A1(c_state[11]), .A2(c_state[8]), .A3(c_state[10]), .ZN(n53)
         );
  an04d1 U40 ( .A1(n255), .A2(sSCL), .A3(n90), .A4(n93), .Z(N129) );
  nr03d1 U41 ( .A1(n214), .A2(n93), .A3(N125), .ZN(N128) );
  nd04d1 U47 ( .A1(n79), .A2(n80), .A3(n81), .A4(n82), .ZN(n78) );
  nr04d1 U48 ( .A1(filter_cnt[9]), .A2(filter_cnt[8]), .A3(filter_cnt[7]), 
        .A4(filter_cnt[6]), .ZN(n82) );
  nr03d1 U49 ( .A1(filter_cnt[3]), .A2(filter_cnt[5]), .A3(filter_cnt[4]), 
        .ZN(n81) );
  nr04d1 U50 ( .A1(filter_cnt[2]), .A2(filter_cnt[1]), .A3(filter_cnt[13]), 
        .A4(filter_cnt[12]), .ZN(n80) );
  nr03d1 U51 ( .A1(filter_cnt[0]), .A2(filter_cnt[11]), .A3(filter_cnt[10]), 
        .ZN(n79) );
  aor222d1 U86 ( .A1(n36), .A2(cnt[15]), .B1(n227), .B2(N49), .C1(n206), .C2(
        clk_cnt[15]), .Z(n99) );
  oai22d1 U87 ( .A1(n94), .A2(n228), .B1(n95), .B2(n39), .ZN(n98) );
  oaim22d1 U88 ( .A1(n40), .A2(n213), .B1(dout), .B2(n40), .ZN(n89) );
  aor221d1 U89 ( .B1(n87), .B2(n238), .C1(cSDA[1]), .C2(n41), .A(rst), .Z(n140) );
  oai221d1 U90 ( .B1(n41), .B2(n208), .C1(n212), .C2(n238), .A(n255), .ZN(n139) );
  oai221d1 U91 ( .B1(n84), .B2(n41), .C1(n238), .C2(n208), .A(n255), .ZN(n138)
         );
  aor221d1 U92 ( .B1(n92), .B2(n238), .C1(cSCL[1]), .C2(n41), .A(rst), .Z(n137) );
  oai221d1 U93 ( .B1(n41), .B2(n207), .C1(n238), .C2(n211), .A(n255), .ZN(n136) );
  oai221d1 U94 ( .B1(n86), .B2(n41), .C1(n238), .C2(n207), .A(n255), .ZN(n135)
         );
  oaim22d1 U95 ( .A1(n42), .A2(n43), .B1(n43), .B2(sda_oen), .ZN(n134) );
  oai21d1 U96 ( .B1(n244), .B2(n233), .A(n230), .ZN(n43) );
  oai21d1 U97 ( .B1(n45), .B2(n46), .A(n47), .ZN(n44) );
  oaim22d1 U98 ( .A1(n48), .A2(n49), .B1(n49), .B2(scl_oen), .ZN(n133) );
  aon211d1 U99 ( .C1(n236), .C2(n50), .B(n244), .A(n228), .ZN(n49) );
  oan211d1 U100 ( .C1(n9), .C2(n234), .B(n54), .A(rst), .ZN(n132) );
  oai22d1 U101 ( .A1(n228), .A2(n246), .B1(n95), .B2(n39), .ZN(n131) );
  oai21d1 U102 ( .B1(n229), .B2(n236), .A(n56), .ZN(n130) );
  or04d0 U103 ( .A1(n253), .A2(n232), .A3(cmd[1]), .A4(cmd[2]), .Z(n56) );
  oai22d1 U104 ( .A1(n229), .A2(n239), .B1(n39), .B2(n236), .ZN(n129) );
  oai22d1 U105 ( .A1(n230), .A2(n237), .B1(n39), .B2(n239), .ZN(n128) );
  oai22d1 U106 ( .A1(n230), .A2(n240), .B1(n39), .B2(n237), .ZN(n127) );
  oai22d1 U107 ( .A1(n228), .A2(n241), .B1(n39), .B2(n240), .ZN(n126) );
  oai22d1 U108 ( .A1(n229), .A2(n242), .B1(n232), .B2(n57), .ZN(n125) );
  oai22d1 U109 ( .A1(n88), .A2(n229), .B1(n39), .B2(n242), .ZN(n124) );
  oai22d1 U110 ( .A1(n229), .A2(n243), .B1(n88), .B2(n39), .ZN(n123) );
  oai22d1 U111 ( .A1(n230), .A2(n251), .B1(n39), .B2(n243), .ZN(n122) );
  oai21d1 U112 ( .B1(n229), .B2(n247), .A(n59), .ZN(n121) );
  oai22d1 U113 ( .A1(n228), .A2(n248), .B1(n39), .B2(n247), .ZN(n120) );
  oai22d1 U114 ( .A1(n228), .A2(n250), .B1(n39), .B2(n248), .ZN(n119) );
  oai22d1 U115 ( .A1(n229), .A2(n245), .B1(n39), .B2(n250), .ZN(n118) );
  oai21d1 U116 ( .B1(n97), .B2(n228), .A(n62), .ZN(n117) );
  oai22d1 U117 ( .A1(n96), .A2(n230), .B1(n97), .B2(n39), .ZN(n116) );
  oai22d1 U118 ( .A1(n95), .A2(n230), .B1(n96), .B2(n39), .ZN(n115) );
  aor222d1 U119 ( .A1(cnt[0]), .A2(n36), .B1(N34), .B2(n227), .C1(clk_cnt[0]), 
        .C2(n206), .Z(n114) );
  aor222d1 U120 ( .A1(cnt[1]), .A2(n36), .B1(N35), .B2(n227), .C1(clk_cnt[1]), 
        .C2(n206), .Z(n113) );
  aor222d1 U121 ( .A1(n36), .A2(cnt[2]), .B1(n227), .B2(N36), .C1(n206), .C2(
        clk_cnt[2]), .Z(n112) );
  aor222d1 U122 ( .A1(n36), .A2(cnt[3]), .B1(n227), .B2(N37), .C1(n206), .C2(
        clk_cnt[3]), .Z(n111) );
  aor222d1 U123 ( .A1(n36), .A2(cnt[4]), .B1(n227), .B2(N38), .C1(n206), .C2(
        clk_cnt[4]), .Z(n110) );
  aor222d1 U124 ( .A1(n36), .A2(cnt[5]), .B1(n227), .B2(N39), .C1(n206), .C2(
        clk_cnt[5]), .Z(n109) );
  aor222d1 U125 ( .A1(n36), .A2(cnt[6]), .B1(n227), .B2(N40), .C1(n206), .C2(
        clk_cnt[6]), .Z(n108) );
  aor222d1 U126 ( .A1(n36), .A2(cnt[7]), .B1(n227), .B2(N41), .C1(n206), .C2(
        clk_cnt[7]), .Z(n107) );
  aor222d1 U127 ( .A1(n36), .A2(cnt[8]), .B1(n227), .B2(N42), .C1(n206), .C2(
        clk_cnt[8]), .Z(n106) );
  aor222d1 U128 ( .A1(n36), .A2(cnt[9]), .B1(n227), .B2(N43), .C1(n206), .C2(
        clk_cnt[9]), .Z(n105) );
  aor222d1 U129 ( .A1(n36), .A2(cnt[10]), .B1(n227), .B2(N44), .C1(n206), .C2(
        clk_cnt[10]), .Z(n104) );
  aor222d1 U130 ( .A1(n36), .A2(cnt[11]), .B1(n227), .B2(N45), .C1(n206), .C2(
        clk_cnt[11]), .Z(n103) );
  aor222d1 U131 ( .A1(n36), .A2(cnt[12]), .B1(n227), .B2(N46), .C1(n206), .C2(
        clk_cnt[12]), .Z(n102) );
  aor222d1 U132 ( .A1(n36), .A2(cnt[13]), .B1(n227), .B2(N47), .C1(n206), .C2(
        clk_cnt[13]), .Z(n101) );
  aor222d1 U133 ( .A1(n36), .A2(cnt[14]), .B1(n227), .B2(N48), .C1(n206), .C2(
        clk_cnt[14]), .Z(n100) );
  aor22d1 U134 ( .A1(clk_cnt[9]), .A2(n63), .B1(N85), .B2(n64), .Z(N99) );
  aor22d1 U135 ( .A1(clk_cnt[8]), .A2(n63), .B1(N84), .B2(n64), .Z(N98) );
  aor22d1 U136 ( .A1(clk_cnt[7]), .A2(n63), .B1(N83), .B2(n64), .Z(N97) );
  aor22d1 U137 ( .A1(clk_cnt[6]), .A2(n63), .B1(N82), .B2(n64), .Z(N96) );
  aor22d1 U138 ( .A1(clk_cnt[5]), .A2(n63), .B1(N81), .B2(n64), .Z(N95) );
  aor22d1 U139 ( .A1(clk_cnt[4]), .A2(n63), .B1(N80), .B2(n64), .Z(N94) );
  aor22d1 U140 ( .A1(clk_cnt[3]), .A2(n63), .B1(N79), .B2(n64), .Z(N93) );
  aor22d1 U141 ( .A1(clk_cnt[2]), .A2(n63), .B1(N78), .B2(n64), .Z(N92) );
  ora31d1 U142 ( .B1(n83), .B2(sSCL), .B3(n209), .A(ena), .Z(n66) );
  oan211d1 U143 ( .C1(dscl_oen), .C2(n209), .B(n235), .A(sSCL), .ZN(N29) );
  aoi311d1 U144 ( .C1(n245), .C2(n246), .C3(n71), .A(n210), .B(n244), .ZN(N227) );
  oai31d1 U145 ( .B1(n215), .B2(n94), .B3(N125), .A(n72), .ZN(N138) );
  aoim211d1 U146 ( .C1(busy), .C2(sta_condition), .A(sto_condition), .B(rst), 
        .ZN(N131) );
  aor21d1 U147 ( .B1(n87), .B2(n85), .A(n76), .Z(N123) );
  aon211d1 U148 ( .C1(n208), .C2(n212), .B(n84), .A(n255), .ZN(n76) );
  aor21d1 U149 ( .B1(n92), .B2(n91), .A(n77), .Z(N122) );
  aon211d1 U150 ( .C1(n207), .C2(n211), .B(n86), .A(n255), .ZN(n77) );
  aor22d1 U151 ( .A1(clk_cnt[15]), .A2(n63), .B1(N91), .B2(n64), .Z(N105) );
  aor22d1 U152 ( .A1(clk_cnt[14]), .A2(n63), .B1(N90), .B2(n64), .Z(N104) );
  aor22d1 U153 ( .A1(clk_cnt[13]), .A2(n63), .B1(N89), .B2(n64), .Z(N103) );
  aor22d1 U154 ( .A1(clk_cnt[12]), .A2(n63), .B1(N88), .B2(n64), .Z(N102) );
  aor22d1 U155 ( .A1(clk_cnt[11]), .A2(n63), .B1(N87), .B2(n64), .Z(N101) );
  aor22d1 U156 ( .A1(clk_cnt[10]), .A2(n63), .B1(N86), .B2(n64), .Z(N100) );
  i2c_master_bit_ctrl_DW01_dec_0_DW01_dec_1 sub_260 ( .A(filter_cnt), .SUM({
        N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78})
         );
  i2c_master_bit_ctrl_DW01_dec_1_DW01_dec_2 sub_228 ( .A(cnt), .SUM({N49, N48, 
        N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34})
         );
  nd03d1 U3 ( .A1(n65), .A2(n255), .A3(n66), .ZN(n206) );
  buffd1 U7 ( .I(n217), .Z(n220) );
  buffd1 U10 ( .I(n217), .Z(n221) );
  buffd1 U13 ( .I(n218), .Z(n223) );
  buffd1 U16 ( .I(n218), .Z(n224) );
  buffd1 U17 ( .I(n217), .Z(n222) );
  buffd1 U18 ( .I(n218), .Z(n225) );
  buffd1 U19 ( .I(n219), .Z(n226) );
  buffd1 U24 ( .I(nReset), .Z(n219) );
  buffd1 U30 ( .I(nReset), .Z(n217) );
  buffd1 U31 ( .I(nReset), .Z(n218) );
  inv0d0 U33 ( .I(n216), .ZN(n230) );
  inv0d0 U42 ( .I(n216), .ZN(n228) );
  inv0d0 U43 ( .I(n216), .ZN(n229) );
  inv0d0 U44 ( .I(n53), .ZN(n249) );
  inv0d0 U45 ( .I(n58), .ZN(n232) );
  inv0d0 U46 ( .I(n60), .ZN(n233) );
  nr02d1 U52 ( .A1(n235), .A2(n206), .ZN(n36) );
  buffd1 U53 ( .I(n37), .Z(n227) );
  nr02d1 U54 ( .A1(n36), .A2(n206), .ZN(n37) );
  nd02d1 U55 ( .A1(n47), .A2(n230), .ZN(n39) );
  an02d1 U56 ( .A1(n47), .A2(n210), .Z(n216) );
  inv0d0 U57 ( .I(n41), .ZN(n238) );
  inv0d0 U58 ( .I(n47), .ZN(n244) );
  nd02d1 U59 ( .A1(n255), .A2(n213), .ZN(N125) );
  nd02d1 U60 ( .A1(n214), .A2(n255), .ZN(N124) );
  nr02d1 U61 ( .A1(n50), .A2(c_state[0]), .ZN(n60) );
  nd02d1 U62 ( .A1(cmd[1]), .A2(n55), .ZN(n57) );
  nd03d1 U63 ( .A1(n240), .A2(n243), .A3(n237), .ZN(n52) );
  nr02d1 U64 ( .A1(rst), .A2(al), .ZN(n47) );
  inv0d0 U65 ( .I(n39), .ZN(n231) );
  nr02d1 U66 ( .A1(n78), .A2(rst), .ZN(n41) );
  an02d1 U67 ( .A1(n41), .A2(ena), .Z(n63) );
  inv0d0 U68 ( .I(c_state[1]), .ZN(n239) );
  inv0d0 U69 ( .I(c_state[2]), .ZN(n237) );
  inv0d0 U70 ( .I(c_state[8]), .ZN(n251) );
  inv0d0 U71 ( .I(c_state[4]), .ZN(n241) );
  an03d1 U72 ( .A1(n78), .A2(n255), .A3(ena), .Z(n64) );
  inv0d0 U73 ( .I(slave_wait), .ZN(n235) );
  inv0d1 U74 ( .I(rst), .ZN(n255) );
  nr02d1 U75 ( .A1(c_state[8]), .A2(c_state[4]), .ZN(n71) );
  inv0d0 U76 ( .I(c_state[3]), .ZN(n240) );
  inv0d0 U77 ( .I(c_state[7]), .ZN(n243) );
  nr02d1 U78 ( .A1(cmd[0]), .A2(cmd[2]), .ZN(n55) );
  inv0d0 U79 ( .I(cmd[3]), .ZN(n254) );
  inv0d0 U80 ( .I(c_state[0]), .ZN(n236) );
  nd02d1 U81 ( .A1(sSCL), .A2(n83), .ZN(n40) );
  inv0d0 U82 ( .I(cmd[0]), .ZN(n253) );
  inv0d0 U83 ( .I(cmd_stop), .ZN(n234) );
  inv0d0 U84 ( .I(c_state[16]), .ZN(n246) );
  inv0d0 U85 ( .I(c_state[12]), .ZN(n245) );
  inv0d0 U157 ( .I(cmd[1]), .ZN(n252) );
  inv0d0 U158 ( .I(c_state[9]), .ZN(n247) );
  inv0d0 U159 ( .I(c_state[11]), .ZN(n250) );
  inv0d0 U160 ( .I(c_state[10]), .ZN(n248) );
  inv0d0 U161 ( .I(c_state[5]), .ZN(n242) );
  sdprb1 \fSDA_reg[0]  ( .D(n140), .SD(n8), .SC(test_se), .CP(clk), .SDN(n226), 
        .Q(n87), .QN(n212) );
  sdprb1 \fSDA_reg[1]  ( .D(n139), .SD(n87), .SC(test_se), .CP(clk), .SDN(n226), .Q(n85), .QN(n208) );
  sdprb1 \fSDA_reg[2]  ( .D(n138), .SD(n85), .SC(test_se), .CP(clk), .SDN(n226), .Q(n10), .QN(n84) );
  sdprb1 \fSCL_reg[0]  ( .D(n137), .SD(dscl_oen), .SC(test_se), .CP(clk), 
        .SDN(n225), .Q(n92), .QN(n211) );
  sdprb1 \fSCL_reg[1]  ( .D(n136), .SD(n92), .SC(test_se), .CP(clk), .SDN(n226), .Q(n91), .QN(n207) );
  sdprb1 \fSCL_reg[2]  ( .D(n135), .SD(n91), .SC(test_se), .CP(clk), .SDN(n226), .Q(n8), .QN(n86) );
  sdprb1 sSCL_reg ( .D(N122), .SD(filter_cnt[13]), .SC(test_se), .CP(clk), 
        .SDN(n226), .Q(sSCL), .QN(n214) );
  sdprb1 sSDA_reg ( .D(N123), .SD(n214), .SC(test_se), .CP(clk), .SDN(n226), 
        .Q(n90), .QN(n213) );
  sdprb1 dSDA_reg ( .D(N125), .SD(n6), .SC(test_se), .CP(clk), .SDN(n226), .Q(
        n7), .QN(n93) );
  sdprb1 dSCL_reg ( .D(N124), .SD(cnt[15]), .SC(test_se), .CP(clk), .SDN(n226), 
        .Q(n6), .QN(n83) );
  sdprb1 sda_oen_reg ( .D(n134), .SD(test_si4), .SC(test_se), .CP(clk), .SDN(
        n226), .Q(sda_oen), .QN(n215) );
  sdprb1 scl_oen_reg ( .D(n133), .SD(n90), .SC(test_se), .CP(clk), .SDN(n226), 
        .Q(scl_oen), .QN(n209) );
  sdprb1 clk_en_reg ( .D(n206), .SD(c_state[16]), .SC(test_se), .CP(clk), 
        .SDN(n226), .Q(n9), .QN(n210) );
  sdcrn4 \c_state_reg[13]  ( .D(n117), .SD(c_state[12]), .SC(test_se), .CP(clk), .CDN(n225), .QN(n97) );
  sdcrn4 \c_state_reg[14]  ( .D(n116), .SD(n97), .SC(test_se), .CP(clk), .CDN(
        n225), .QN(n96) );
  sdcrn4 \c_state_reg[15]  ( .D(n115), .SD(n96), .SC(test_se), .CP(clk), .CDN(
        n225), .QN(n95) );
  sdcrn4 sda_chk_reg ( .D(n98), .SD(scl_oen), .SC(test_se), .CP(clk), .CDN(
        n225), .QN(n94) );
  sdcrn4 \c_state_reg[6]  ( .D(n124), .SD(c_state[5]), .SC(test_se), .CP(clk), 
        .CDN(n225), .QN(n88) );
  sdcrq1 \cSDA_reg[0]  ( .D(N72), .SD(cSCL[1]), .SC(test_se), .CP(clk), .CDN(
        n222), .Q(cSDA[0]) );
  sdcrq1 \cSCL_reg[0]  ( .D(N70), .SD(busy), .SC(test_se), .CP(clk), .CDN(n225), .Q(cSCL[0]) );
  sdnrq4 dout_reg ( .D(n89), .SD(n7), .SC(test_se), .CP(clk), .Q(dout) );
  sdcrq1 sto_condition_reg ( .D(N129), .SD(sta_condition), .SC(test_se), .CP(
        clk), .CDN(n225), .Q(sto_condition) );
  sdcrq1 sta_condition_reg ( .D(N128), .SD(slave_wait), .SC(test_se), .CP(clk), 
        .CDN(n225), .Q(sta_condition) );
  sdcrq1 busy_reg ( .D(N131), .SD(al), .SC(test_se), .CP(clk), .CDN(n224), .Q(
        busy) );
  sdnrq4 dscl_oen_reg ( .D(scl_oen), .SD(dout), .SC(test_se), .CP(clk), .Q(
        dscl_oen) );
  sdcrq1 \cSDA_reg[1]  ( .D(N73), .SD(cSDA[0]), .SC(test_se), .CP(clk), .CDN(
        n225), .Q(cSDA[1]) );
  sdcrq1 \cSCL_reg[1]  ( .D(N71), .SD(cSCL[0]), .SC(test_se), .CP(clk), .CDN(
        n224), .Q(cSCL[1]) );
  sdcrq1 cmd_stop_reg ( .D(n132), .SD(cmd_ack), .SC(test_se), .CP(clk), .CDN(
        n224), .Q(cmd_stop) );
  sdcrq1 slave_wait_reg ( .D(N29), .SD(n94), .SC(test_se), .CP(clk), .CDN(n224), .Q(slave_wait) );
  sdcrq1 \c_state_reg[0]  ( .D(n130), .SD(cSDA[1]), .SC(test_se), .CP(clk), 
        .CDN(n224), .Q(c_state[0]) );
  sdcrq1 \filter_cnt_reg[10]  ( .D(N102), .SD(filter_cnt[9]), .SC(test_se), 
        .CP(clk), .CDN(n224), .Q(filter_cnt[10]) );
  sdcrq1 \c_state_reg[2]  ( .D(n128), .SD(c_state[1]), .SC(test_se), .CP(clk), 
        .CDN(n224), .Q(c_state[2]) );
  sdcrq1 \filter_cnt_reg[12]  ( .D(N104), .SD(filter_cnt[11]), .SC(test_se), 
        .CP(clk), .CDN(n224), .Q(filter_cnt[12]) );
  sdcrq1 \c_state_reg[1]  ( .D(n129), .SD(c_state[0]), .SC(test_se), .CP(clk), 
        .CDN(n224), .Q(c_state[1]) );
  sdcrq1 \filter_cnt_reg[11]  ( .D(N103), .SD(filter_cnt[10]), .SC(test_se), 
        .CP(clk), .CDN(n224), .Q(filter_cnt[11]) );
  sdcrq1 \filter_cnt_reg[13]  ( .D(N105), .SD(filter_cnt[12]), .SC(test_se), 
        .CP(clk), .CDN(n223), .Q(filter_cnt[13]) );
  sdcrq1 cmd_ack_reg ( .D(N227), .SD(n9), .SC(test_se), .CP(clk), .CDN(n223), 
        .Q(cmd_ack) );
  sdcrq1 \filter_cnt_reg[8]  ( .D(N100), .SD(test_si3), .SC(test_se), .CP(clk), 
        .CDN(n223), .Q(filter_cnt[8]) );
  sdcrq1 \filter_cnt_reg[9]  ( .D(N101), .SD(filter_cnt[8]), .SC(test_se), 
        .CP(clk), .CDN(n223), .Q(filter_cnt[9]) );
  sdcrq1 \c_state_reg[3]  ( .D(n127), .SD(c_state[2]), .SC(test_se), .CP(clk), 
        .CDN(n223), .Q(c_state[3]) );
  sdcrq1 \c_state_reg[4]  ( .D(n126), .SD(c_state[3]), .SC(test_se), .CP(clk), 
        .CDN(n223), .Q(c_state[4]) );
  sdcrq1 \c_state_reg[5]  ( .D(n125), .SD(c_state[4]), .SC(test_se), .CP(clk), 
        .CDN(n223), .Q(c_state[5]) );
  sdcrq1 \c_state_reg[7]  ( .D(n123), .SD(n88), .SC(test_se), .CP(clk), .CDN(
        n223), .Q(c_state[7]) );
  sdcrq1 al_reg ( .D(N138), .SD(test_si1), .SC(test_se), .CP(clk), .CDN(n223), 
        .Q(al) );
  sdcrq1 \cnt_reg[13]  ( .D(n101), .SD(cnt[12]), .SC(test_se), .CP(clk), .CDN(
        n223), .Q(cnt[13]) );
  sdcrq1 \filter_cnt_reg[7]  ( .D(N99), .SD(filter_cnt[6]), .SC(test_se), .CP(
        clk), .CDN(n222), .Q(filter_cnt[7]) );
  sdcrq1 \cnt_reg[14]  ( .D(n100), .SD(cnt[13]), .SC(test_se), .CP(clk), .CDN(
        n222), .Q(cnt[14]) );
  sdcrq1 \cnt_reg[15]  ( .D(n99), .SD(cnt[14]), .SC(test_se), .CP(clk), .CDN(
        n222), .Q(cnt[15]) );
  sdcrq1 \cnt_reg[12]  ( .D(n102), .SD(cnt[11]), .SC(test_se), .CP(clk), .CDN(
        n222), .Q(cnt[12]) );
  sdcrq1 \cnt_reg[11]  ( .D(n103), .SD(cnt[10]), .SC(test_se), .CP(clk), .CDN(
        n222), .Q(cnt[11]) );
  sdcrq1 \c_state_reg[12]  ( .D(n118), .SD(c_state[11]), .SC(test_se), .CP(clk), .CDN(n222), .Q(c_state[12]) );
  sdcrq1 \c_state_reg[16]  ( .D(n131), .SD(n95), .SC(test_se), .CP(clk), .CDN(
        n222), .Q(c_state[16]) );
  sdcrq1 \c_state_reg[9]  ( .D(n121), .SD(c_state[8]), .SC(test_se), .CP(clk), 
        .CDN(n222), .Q(c_state[9]) );
  sdcrq1 \filter_cnt_reg[6]  ( .D(N98), .SD(filter_cnt[5]), .SC(test_se), .CP(
        clk), .CDN(n221), .Q(filter_cnt[6]) );
  sdcrq1 \cnt_reg[10]  ( .D(n104), .SD(cnt[9]), .SC(test_se), .CP(clk), .CDN(
        n222), .Q(cnt[10]) );
  sdcrq1 \cnt_reg[9]  ( .D(n105), .SD(cnt[8]), .SC(test_se), .CP(clk), .CDN(
        n221), .Q(cnt[9]) );
  sdcrq1 \filter_cnt_reg[5]  ( .D(N97), .SD(filter_cnt[4]), .SC(test_se), .CP(
        clk), .CDN(n221), .Q(filter_cnt[5]) );
  sdcrq1 \c_state_reg[10]  ( .D(n120), .SD(c_state[9]), .SC(test_se), .CP(clk), 
        .CDN(n221), .Q(c_state[10]) );
  sdcrq1 \c_state_reg[11]  ( .D(n119), .SD(c_state[10]), .SC(test_se), .CP(clk), .CDN(n221), .Q(c_state[11]) );
  sdcrq1 \c_state_reg[8]  ( .D(n122), .SD(c_state[7]), .SC(test_se), .CP(clk), 
        .CDN(n221), .Q(c_state[8]) );
  sdcrq1 \filter_cnt_reg[4]  ( .D(N96), .SD(filter_cnt[3]), .SC(test_se), .CP(
        clk), .CDN(n221), .Q(filter_cnt[4]) );
  sdcrq1 \cnt_reg[8]  ( .D(n106), .SD(cnt[7]), .SC(test_se), .CP(clk), .CDN(
        n221), .Q(cnt[8]) );
  sdcrq1 \filter_cnt_reg[3]  ( .D(N95), .SD(filter_cnt[2]), .SC(test_se), .CP(
        clk), .CDN(n221), .Q(filter_cnt[3]) );
  sdcrq1 \cnt_reg[7]  ( .D(n107), .SD(cnt[6]), .SC(test_se), .CP(clk), .CDN(
        n221), .Q(cnt[7]) );
  sdcrq1 \filter_cnt_reg[2]  ( .D(N94), .SD(filter_cnt[1]), .SC(test_se), .CP(
        clk), .CDN(n220), .Q(filter_cnt[2]) );
  sdcrq1 \filter_cnt_reg[1]  ( .D(N93), .SD(filter_cnt[0]), .SC(test_se), .CP(
        clk), .CDN(n220), .Q(filter_cnt[1]) );
  sdcrq1 \filter_cnt_reg[0]  ( .D(N92), .SD(n10), .SC(test_se), .CP(clk), 
        .CDN(n220), .Q(filter_cnt[0]) );
  sdcrq1 \cnt_reg[6]  ( .D(n108), .SD(cnt[5]), .SC(test_se), .CP(clk), .CDN(
        n220), .Q(cnt[6]) );
  sdcrq1 \cnt_reg[5]  ( .D(n109), .SD(cnt[4]), .SC(test_se), .CP(clk), .CDN(
        n220), .Q(cnt[5]) );
  sdcrq1 \cnt_reg[4]  ( .D(n110), .SD(cnt[3]), .SC(test_se), .CP(clk), .CDN(
        n220), .Q(cnt[4]) );
  sdcrq1 \cnt_reg[3]  ( .D(n111), .SD(test_si2), .SC(test_se), .CP(clk), .CDN(
        n220), .Q(cnt[3]) );
  sdcrq1 \cnt_reg[2]  ( .D(n112), .SD(cnt[1]), .SC(test_se), .CP(clk), .CDN(
        n220), .Q(cnt[2]) );
  sdcrq1 \cnt_reg[1]  ( .D(n113), .SD(cnt[0]), .SC(test_se), .CP(clk), .CDN(
        n220), .Q(cnt[1]) );
  sdcrq1 \cnt_reg[0]  ( .D(n114), .SD(cmd_stop), .SC(test_se), .CP(clk), .CDN(
        n220), .Q(cnt[0]) );
endmodule


module i2c_master_byte_ctrl_test_1 ( clk, rst, nReset, ena, clk_cnt, start, 
        stop, read, write, ack_in, din, cmd_ack, ack_out, dout, i2c_busy, 
        i2c_al, scl_i, scl_o, scl_oen, sda_i, sda_o, sda_oen, VDD, VSS, 
        test_si4, test_si3, test_si2, test_si1, test_so3, test_so2, test_so1, 
        test_se );
  input [15:0] clk_cnt;
  input [7:0] din;
  output [7:0] dout;
  input clk, rst, nReset, ena, start, stop, read, write, ack_in, scl_i, sda_i,
         VDD, VSS, test_si4, test_si3, test_si2, test_si1, test_se;
  output cmd_ack, ack_out, i2c_busy, i2c_al, scl_o, scl_oen, sda_o, sda_oen,
         test_so3, test_so2, test_so1;
  wire   core_ack, core_txd, core_rxd, ld, shift, N104, N105, N106, N107, n1,
         n2, n3, n4, n5, n6, n7, n8, n28, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n97, n98, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n10;
  wire   [3:0] core_cmd;
  wire   [2:0] dcnt;
  wire   [4:0] c_state;
  assign scl_o = 1'b0;
  assign sda_o = 1'b0;
  assign test_so3 = n1;

  nr04d1 U3 ( .A1(n54), .A2(read), .A3(start), .A4(write), .ZN(n53) );
  nr03d1 U7 ( .A1(n43), .A2(rst), .A3(n155), .ZN(n61) );
  nd12d1 U8 ( .A1(rst), .A2(ld), .ZN(n45) );
  nd04d1 U10 ( .A1(n28), .A2(n51), .A3(n160), .A4(n162), .ZN(n54) );
  nr03d1 U12 ( .A1(dcnt[1]), .A2(dcnt[2]), .A3(dcnt[0]), .ZN(n55) );
  oai21d1 U45 ( .B1(n38), .B2(n160), .A(n39), .ZN(n98) );
  oai22d1 U46 ( .A1(n28), .A2(n38), .B1(n40), .B2(n41), .ZN(n97) );
  aoi321d1 U47 ( .C1(n43), .C2(n158), .C3(n156), .B1(n44), .B2(dcnt[1]), .A(
        n155), .ZN(n42) );
  oai321d1 U48 ( .C1(n156), .C2(rst), .C3(n43), .B1(dcnt[0]), .B2(n154), .A(
        n45), .ZN(n95) );
  oai211d1 U49 ( .C1(n154), .C2(n157), .A(n46), .B(n45), .ZN(n94) );
  aon211d1 U50 ( .C1(dcnt[1]), .C2(n43), .B(n44), .A(dcnt[2]), .ZN(n46) );
  oai22d1 U51 ( .A1(rst), .A2(n43), .B1(n154), .B2(n156), .ZN(n44) );
  oai21d1 U54 ( .B1(n47), .B2(n163), .A(n48), .ZN(n93) );
  oai21d1 U55 ( .B1(n47), .B2(n161), .A(n49), .ZN(n92) );
  aoi21d1 U56 ( .B1(n157), .B2(n50), .A(n138), .ZN(n47) );
  oai22d1 U57 ( .A1(n38), .A2(n162), .B1(n51), .B2(n139), .ZN(n91) );
  oaim21d1 U58 ( .B1(core_cmd[0]), .B2(n138), .A(n39), .ZN(n90) );
  nd13d1 U59 ( .A1(n41), .A2(n144), .A3(start), .ZN(n39) );
  oaim22d1 U60 ( .A1(n40), .A2(n41), .B1(core_cmd[1]), .B2(n138), .ZN(n89) );
  aoi21d1 U61 ( .B1(c_state[3]), .B2(stop), .A(n53), .ZN(n40) );
  oai311d1 U62 ( .C1(n161), .C2(n55), .C3(n41), .A(n49), .B(n56), .ZN(n88) );
  aoi22d1 U63 ( .A1(n52), .A2(c_state[1]), .B1(core_cmd[2]), .B2(n138), .ZN(
        n56) );
  oai211d1 U64 ( .C1(write), .C2(c_state[0]), .A(n164), .B(n57), .ZN(n49) );
  oai311d1 U65 ( .C1(n163), .C2(n55), .C3(n41), .A(n48), .B(n58), .ZN(n87) );
  aoi22d1 U66 ( .A1(n52), .A2(c_state[2]), .B1(core_cmd[3]), .B2(n138), .ZN(
        n58) );
  oan211d1 U67 ( .C1(n54), .C2(start), .B(n160), .A(n41), .ZN(n57) );
  oai211d1 U68 ( .C1(n144), .C2(n140), .A(n59), .B(n50), .ZN(n38) );
  oai21d1 U69 ( .B1(n8), .B2(n154), .A(n60), .ZN(n86) );
  aoi22d1 U70 ( .A1(n61), .A2(dout[1]), .B1(din[1]), .B2(n155), .ZN(n60) );
  oai21d1 U71 ( .B1(n154), .B2(n137), .A(n62), .ZN(n85) );
  aoi22d1 U72 ( .A1(n61), .A2(dout[0]), .B1(din[0]), .B2(n155), .ZN(n62) );
  oai21d1 U73 ( .B1(n7), .B2(n154), .A(n63), .ZN(n84) );
  aoi22d1 U74 ( .A1(n61), .A2(dout[2]), .B1(din[2]), .B2(n155), .ZN(n63) );
  oai21d1 U75 ( .B1(n6), .B2(n154), .A(n64), .ZN(n83) );
  aoi22d1 U76 ( .A1(n61), .A2(dout[3]), .B1(din[3]), .B2(n155), .ZN(n64) );
  oai21d1 U77 ( .B1(n5), .B2(n154), .A(n65), .ZN(n82) );
  aoi22d1 U78 ( .A1(n61), .A2(dout[4]), .B1(din[4]), .B2(n155), .ZN(n65) );
  oai21d1 U79 ( .B1(n4), .B2(n154), .A(n66), .ZN(n81) );
  aoi22d1 U80 ( .A1(n61), .A2(dout[5]), .B1(din[5]), .B2(n155), .ZN(n66) );
  oai21d1 U81 ( .B1(n3), .B2(n154), .A(n67), .ZN(n80) );
  aoi22d1 U82 ( .A1(n61), .A2(dout[6]), .B1(din[6]), .B2(n155), .ZN(n67) );
  oai21d1 U83 ( .B1(n2), .B2(n154), .A(n68), .ZN(n79) );
  aoi22d1 U84 ( .A1(n61), .A2(dout[7]), .B1(din[7]), .B2(n155), .ZN(n68) );
  oai21d1 U85 ( .B1(n137), .B2(n69), .A(n70), .ZN(n78) );
  oai211d1 U86 ( .C1(n140), .C2(n162), .A(n50), .B(ack_out), .ZN(n70) );
  oai22d1 U87 ( .A1(n28), .A2(n71), .B1(stop), .B2(n69), .ZN(N107) );
  oai22d1 U88 ( .A1(n160), .A2(n71), .B1(n142), .B2(n59), .ZN(N106) );
  oai311d1 U89 ( .C1(stop), .C2(write), .C3(read), .A(n159), .B(n144), .ZN(n59) );
  oan211d1 U90 ( .C1(n55), .C2(n161), .B(n163), .A(n71), .ZN(N105) );
  oai311d1 U91 ( .C1(n142), .C2(n1), .C3(n72), .A(n69), .B(n73), .ZN(N104) );
  aon211d1 U92 ( .C1(n141), .C2(c_state[1]), .B(n74), .A(ack_in), .ZN(n73) );
  aoi211d1 U93 ( .C1(c_state[1]), .C2(n140), .A(n75), .B(n143), .ZN(n72) );
  oai211d1 U94 ( .C1(c_state[3]), .C2(c_state[1]), .A(n160), .B(n161), .ZN(n75) );
  i2c_master_bit_ctrl_test_1 bit_controller ( .clk(clk), .rst(rst), .nReset(
        n136), .ena(ena), .clk_cnt(clk_cnt), .cmd(core_cmd), .cmd_ack(core_ack), .busy(i2c_busy), .al(i2c_al), .din(core_txd), .dout(core_rxd), .scl_i(scl_i), 
        .scl_oen(scl_oen), .sda_i(sda_i), .sda_oen(sda_oen), .VDD(VDD), .VSS(
        VSS), .test_si4(n8), .test_si3(test_si3), .test_si2(test_si2), 
        .test_si1(ack_out), .test_so3(n10), .test_so2(test_so2), .test_so1(
        test_so1), .test_se(test_se) );
  buffd3 U4 ( .I(nReset), .Z(n136) );
  nr02d1 U5 ( .A1(n157), .A2(n41), .ZN(n52) );
  inv0d0 U6 ( .I(n38), .ZN(n138) );
  nd02d1 U9 ( .A1(n50), .A2(n38), .ZN(n41) );
  inv0d0 U11 ( .I(n54), .ZN(n144) );
  inv0d0 U13 ( .I(n52), .ZN(n139) );
  inv0d0 U14 ( .I(n45), .ZN(n155) );
  inv0d0 U15 ( .I(n55), .ZN(n157) );
  inv0d1 U16 ( .I(n43), .ZN(n154) );
  inv0d0 U17 ( .I(n71), .ZN(n141) );
  inv0d0 U18 ( .I(n50), .ZN(n142) );
  nr02d1 U19 ( .A1(n142), .A2(n162), .ZN(n74) );
  inv0d0 U20 ( .I(cmd_ack), .ZN(n159) );
  inv0d0 U21 ( .I(read), .ZN(n164) );
  nr02d1 U22 ( .A1(c_state[2]), .A2(c_state[1]), .ZN(n51) );
  inv0d0 U23 ( .I(c_state[3]), .ZN(n162) );
  inv0d0 U24 ( .I(c_state[0]), .ZN(n160) );
  nd02d1 U25 ( .A1(read), .A2(n57), .ZN(n48) );
  nr13d1 U26 ( .A1(shift), .A2(ld), .A3(rst), .ZN(n43) );
  inv0d0 U27 ( .I(core_ack), .ZN(n140) );
  nr02d1 U28 ( .A1(rst), .A2(i2c_al), .ZN(n50) );
  inv0d0 U29 ( .I(n42), .ZN(n153) );
  inv0d0 U30 ( .I(dcnt[1]), .ZN(n158) );
  nd02d1 U31 ( .A1(n50), .A2(core_ack), .ZN(n71) );
  nd02d1 U32 ( .A1(n141), .A2(c_state[3]), .ZN(n69) );
  inv0d0 U33 ( .I(n28), .ZN(n143) );
  inv0d0 U34 ( .I(dcnt[0]), .ZN(n156) );
  inv0d0 U35 ( .I(c_state[2]), .ZN(n161) );
  inv0d0 U36 ( .I(n6), .ZN(dout[2]) );
  inv0d0 U37 ( .I(n5), .ZN(dout[3]) );
  inv0d0 U38 ( .I(n4), .ZN(dout[4]) );
  inv0d0 U39 ( .I(n1), .ZN(dout[7]) );
  inv0d0 U40 ( .I(n7), .ZN(dout[1]) );
  inv0d0 U41 ( .I(n3), .ZN(dout[5]) );
  inv0d0 U42 ( .I(n8), .ZN(dout[0]) );
  inv0d0 U43 ( .I(n2), .ZN(dout[6]) );
  inv0d0 U44 ( .I(c_state[1]), .ZN(n163) );
  inv0d0 U95 ( .I(core_rxd), .ZN(n137) );
  sdcrn4 \c_state_reg[4]  ( .D(n97), .SD(c_state[3]), .SC(test_se), .CP(clk), 
        .CDN(n136), .QN(n28) );
  sdcrn4 \sr_reg[0]  ( .D(n85), .SD(shift), .SC(test_se), .CP(clk), .CDN(n136), 
        .QN(n8) );
  sdcrn4 \sr_reg[1]  ( .D(n86), .SD(test_si4), .SC(test_se), .CP(clk), .CDN(
        n136), .QN(n7) );
  sdcrn4 \sr_reg[2]  ( .D(n84), .SD(n7), .SC(test_se), .CP(clk), .CDN(n136), 
        .QN(n6) );
  sdcrn4 \sr_reg[3]  ( .D(n83), .SD(n6), .SC(test_se), .CP(clk), .CDN(n136), 
        .QN(n5) );
  sdcrn4 \sr_reg[4]  ( .D(n82), .SD(n5), .SC(test_se), .CP(clk), .CDN(n136), 
        .QN(n4) );
  sdcrn4 \sr_reg[5]  ( .D(n81), .SD(n4), .SC(test_se), .CP(clk), .CDN(n136), 
        .QN(n3) );
  sdcrn4 \sr_reg[6]  ( .D(n80), .SD(n3), .SC(test_se), .CP(clk), .CDN(n136), 
        .QN(n2) );
  sdcrn4 \sr_reg[7]  ( .D(n79), .SD(n2), .SC(test_se), .CP(clk), .CDN(n136), 
        .QN(n1) );
  sdcrq1 ack_out_reg ( .D(n78), .SD(test_si1), .SC(test_se), .CP(clk), .CDN(
        n136), .Q(ack_out) );
  sdcrq1 \core_cmd_reg[1]  ( .D(n89), .SD(core_cmd[0]), .SC(test_se), .CP(clk), 
        .CDN(n136), .Q(core_cmd[1]) );
  sdcrq1 \core_cmd_reg[0]  ( .D(n90), .SD(cmd_ack), .SC(test_se), .CP(clk), 
        .CDN(n136), .Q(core_cmd[0]) );
  sdcrq1 \core_cmd_reg[2]  ( .D(n88), .SD(core_cmd[1]), .SC(test_se), .CP(clk), 
        .CDN(n136), .Q(core_cmd[2]) );
  sdcrq1 core_txd_reg ( .D(N104), .SD(core_cmd[3]), .SC(test_se), .CP(clk), 
        .CDN(n136), .Q(core_txd) );
  sdcrq1 \core_cmd_reg[3]  ( .D(n87), .SD(core_cmd[2]), .SC(test_se), .CP(clk), 
        .CDN(n136), .Q(core_cmd[3]) );
  sdcrq1 \dcnt_reg[0]  ( .D(n95), .SD(core_txd), .SC(test_se), .CP(clk), .CDN(
        n136), .Q(dcnt[0]) );
  sdcrq1 \dcnt_reg[2]  ( .D(n94), .SD(dcnt[1]), .SC(test_se), .CP(clk), .CDN(
        n136), .Q(dcnt[2]) );
  sdcrq1 \dcnt_reg[1]  ( .D(n153), .SD(dcnt[0]), .SC(test_se), .CP(clk), .CDN(
        n136), .Q(dcnt[1]) );
  sdcrq1 cmd_ack_reg ( .D(N107), .SD(n28), .SC(test_se), .CP(clk), .CDN(n136), 
        .Q(cmd_ack) );
  sdcrq1 shift_reg ( .D(N105), .SD(ld), .SC(test_se), .CP(clk), .CDN(n136), 
        .Q(shift) );
  sdcrq1 ld_reg ( .D(N106), .SD(dcnt[2]), .SC(test_se), .CP(clk), .CDN(n136), 
        .Q(ld) );
  sdcrq1 \c_state_reg[0]  ( .D(n98), .SD(n10), .SC(test_se), .CP(clk), .CDN(
        n136), .Q(c_state[0]) );
  sdcrq1 \c_state_reg[2]  ( .D(n92), .SD(c_state[1]), .SC(test_se), .CP(clk), 
        .CDN(n136), .Q(c_state[2]) );
  sdcrq1 \c_state_reg[3]  ( .D(n91), .SD(c_state[2]), .SC(test_se), .CP(clk), 
        .CDN(n136), .Q(c_state[3]) );
  sdcrq1 \c_state_reg[1]  ( .D(n93), .SD(c_state[0]), .SC(test_se), .CP(clk), 
        .CDN(n136), .Q(c_state[1]) );
endmodule


module i2c_master_top ( wb_clk_i, wb_rst_i, arst_i, wb_adr_i, wb_dat_i, 
        wb_dat_o, wb_we_i, wb_stb_i, wb_cyc_i, wb_ack_o, wb_inta_o, scl_pad_i, 
        scl_pad_o, scl_padoen_o, sda_pad_i, sda_pad_o, sda_padoen_o, VDD, VSS, 
        test_se, test_si1, test_so1, test_si2, test_so2, test_si3, test_si4, 
        test_so4, test_si5 );
  input [2:0] wb_adr_i;
  input [7:0] wb_dat_i;
  output [7:0] wb_dat_o;
  input wb_clk_i, wb_rst_i, arst_i, wb_we_i, wb_stb_i, wb_cyc_i, scl_pad_i,
         sda_pad_i, VDD, VSS, test_se, test_si1, test_si2, test_si3, test_si4,
         test_si5;
  output wb_ack_o, wb_inta_o, scl_pad_o, scl_padoen_o, sda_pad_o, sda_padoen_o,
         test_so1, test_so2, test_so4;
  wire   N15, sr_1, sr_0, N38, N39, N40, N41, N42, N43, N44, N45, N55, N56,
         N57, N58, N59, N60, N61, N62, done, i2c_al, irxack, N100, N101, N102,
         N106, n25, n63, n143, n144, n145, n146, n147, n148, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n246;
  wire   [15:0] prer;
  wire   [7:0] ctr;
  wire   [7:0] rxr;
  wire   [7:5] sr;
  wire   [7:0] txr;
  wire   [7:0] cr;
  assign test_so4 = prer[5];
  assign sda_pad_o = 1'b0;
  assign scl_pad_o = 1'b0;

  an03d1 U178 ( .A1(wb_we_i), .A2(wb_ack_o), .A3(n25), .Z(n63) );
  nr03d1 U204 ( .A1(n239), .A2(wb_adr_i[1]), .A3(n241), .ZN(n204) );
  nr03d1 U207 ( .A1(n239), .A2(wb_adr_i[0]), .A3(n240), .ZN(n205) );
  nr03d1 U210 ( .A1(wb_adr_i[0]), .A2(wb_adr_i[1]), .A3(n239), .ZN(n200) );
  an03d1 U212 ( .A1(sr_0), .A2(n238), .A3(ctr[6]), .Z(N106) );
  an02d1 U213 ( .A1(irxack), .A2(n238), .Z(N100) );
  oai21d1 U231 ( .B1(wb_rst_i), .B2(n194), .A(n195), .ZN(n148) );
  oai21d1 U232 ( .B1(wb_rst_i), .B2(n196), .A(n195), .ZN(n147) );
  oai21d1 U233 ( .B1(wb_rst_i), .B2(n197), .A(n195), .ZN(n146) );
  oai21d1 U234 ( .B1(wb_rst_i), .B2(n198), .A(n195), .ZN(n145) );
  oan211d1 U235 ( .C1(cr[7]), .C2(n242), .B(n227), .A(wb_rst_i), .ZN(n144) );
  aor31d1 U236 ( .B1(n25), .B2(n227), .B3(n228), .A(n63), .Z(n143) );
  aoi31d1 U237 ( .B1(n200), .B2(n237), .B3(ctr[7]), .A(wb_rst_i), .ZN(n25) );
  aoi222d1 U238 ( .A1(prer[7]), .A2(n198), .B1(prer[15]), .B2(n197), .C1(
        txr[7]), .C2(n204), .ZN(n203) );
  aoi22d1 U239 ( .A1(rxr[7]), .A2(n194), .B1(cr[7]), .B2(n205), .ZN(n202) );
  aoi22d1 U240 ( .A1(sr[7]), .A2(n200), .B1(n196), .B2(ctr[7]), .ZN(n201) );
  aoi222d1 U241 ( .A1(prer[6]), .A2(n198), .B1(prer[14]), .B2(n197), .C1(
        txr[6]), .C2(n204), .ZN(n208) );
  aoi22d1 U242 ( .A1(rxr[6]), .A2(n194), .B1(cr[6]), .B2(n205), .ZN(n207) );
  aoi22d1 U243 ( .A1(sr[6]), .A2(n200), .B1(ctr[6]), .B2(n196), .ZN(n206) );
  aoi222d1 U244 ( .A1(prer[5]), .A2(n198), .B1(prer[13]), .B2(n197), .C1(
        txr[5]), .C2(n204), .ZN(n211) );
  aoi22d1 U245 ( .A1(rxr[5]), .A2(n194), .B1(cr[5]), .B2(n205), .ZN(n210) );
  aoi22d1 U246 ( .A1(sr[5]), .A2(n200), .B1(ctr[5]), .B2(n196), .ZN(n209) );
  aoi222d1 U247 ( .A1(ctr[4]), .A2(n196), .B1(rxr[4]), .B2(n194), .C1(cr[4]), 
        .C2(n205), .ZN(n213) );
  aoi222d1 U248 ( .A1(prer[4]), .A2(n198), .B1(prer[12]), .B2(n197), .C1(
        txr[4]), .C2(n204), .ZN(n212) );
  aoi222d1 U249 ( .A1(ctr[3]), .A2(n196), .B1(rxr[3]), .B2(n194), .C1(cr[3]), 
        .C2(n205), .ZN(n215) );
  aoi222d1 U250 ( .A1(prer[3]), .A2(n198), .B1(prer[11]), .B2(n197), .C1(
        txr[3]), .C2(n204), .ZN(n214) );
  aoi222d1 U251 ( .A1(ctr[2]), .A2(n196), .B1(rxr[2]), .B2(n194), .C1(cr[2]), 
        .C2(n205), .ZN(n217) );
  aoi222d1 U252 ( .A1(prer[2]), .A2(n198), .B1(prer[10]), .B2(n197), .C1(
        txr[2]), .C2(n204), .ZN(n216) );
  aoi222d1 U253 ( .A1(prer[1]), .A2(n198), .B1(prer[9]), .B2(n197), .C1(txr[1]), .C2(n204), .ZN(n220) );
  aoi22d1 U254 ( .A1(rxr[1]), .A2(n194), .B1(cr[1]), .B2(n205), .ZN(n219) );
  aoi22d1 U255 ( .A1(sr_1), .A2(n200), .B1(ctr[1]), .B2(n196), .ZN(n218) );
  aoi222d1 U256 ( .A1(prer[0]), .A2(n198), .B1(prer[8]), .B2(n197), .C1(txr[0]), .C2(n204), .ZN(n223) );
  aoi22d1 U257 ( .A1(rxr[0]), .A2(n194), .B1(cr[0]), .B2(n205), .ZN(n222) );
  aoi22d1 U258 ( .A1(sr_0), .A2(n200), .B1(ctr[0]), .B2(n196), .ZN(n221) );
  aoi311d1 U259 ( .C1(n227), .C2(n243), .C3(n228), .A(wb_rst_i), .B(cr[0]), 
        .ZN(N102) );
  aoim21d1 U260 ( .B1(cr[5]), .B2(cr[4]), .A(wb_rst_i), .ZN(N101) );
  i2c_master_byte_ctrl_test_1 byte_controller ( .clk(wb_clk_i), .rst(wb_rst_i), 
        .nReset(n224), .ena(ctr[7]), .clk_cnt(prer), .start(cr[7]), .stop(
        cr[6]), .read(cr[5]), .write(cr[4]), .ack_in(cr[3]), .din(txr), 
        .cmd_ack(done), .ack_out(irxack), .dout(rxr), .i2c_busy(sr[6]), 
        .i2c_al(i2c_al), .scl_i(scl_pad_i), .scl_oen(scl_padoen_o), .sda_i(
        sda_pad_i), .sda_oen(sda_padoen_o), .VDD(VDD), .VSS(VSS), .test_si4(
        test_si4), .test_si3(test_si3), .test_si2(test_si2), .test_si1(sr[5]), 
        .test_so3(n246), .test_so2(test_so2), .test_so1(test_so1), .test_se(
        test_se) );
  inv0d0 U261 ( .I(n199), .ZN(n237) );
  nd02d1 U262 ( .A1(n199), .A2(n238), .ZN(n195) );
  nd02d1 U263 ( .A1(n238), .A2(n186), .ZN(N55) );
  nd02d1 U264 ( .A1(n238), .A2(n187), .ZN(N56) );
  nd02d1 U265 ( .A1(n238), .A2(n188), .ZN(N57) );
  nd02d1 U266 ( .A1(n238), .A2(n189), .ZN(N58) );
  nd02d1 U267 ( .A1(n238), .A2(n190), .ZN(N59) );
  nd02d1 U268 ( .A1(n238), .A2(n191), .ZN(N60) );
  nd02d1 U269 ( .A1(n238), .A2(n192), .ZN(N61) );
  nd02d1 U270 ( .A1(n238), .A2(n193), .ZN(N62) );
  inv0d0 U271 ( .I(n186), .ZN(n236) );
  inv0d0 U272 ( .I(n187), .ZN(n235) );
  inv0d0 U273 ( .I(n188), .ZN(n234) );
  inv0d0 U274 ( .I(n189), .ZN(n233) );
  inv0d0 U275 ( .I(n190), .ZN(n232) );
  inv0d0 U276 ( .I(n191), .ZN(n231) );
  inv0d0 U277 ( .I(n192), .ZN(n230) );
  inv0d0 U278 ( .I(n193), .ZN(n229) );
  inv0d1 U279 ( .I(n226), .ZN(n225) );
  inv0d1 U280 ( .I(n226), .ZN(n224) );
  inv0d0 U281 ( .I(wb_adr_i[2]), .ZN(n239) );
  nd02d1 U282 ( .A1(n216), .A2(n217), .ZN(N40) );
  nd02d1 U283 ( .A1(n214), .A2(n215), .ZN(N41) );
  nd02d1 U284 ( .A1(n212), .A2(n213), .ZN(N42) );
  nd03d1 U285 ( .A1(wb_ack_o), .A2(n238), .A3(wb_we_i), .ZN(n199) );
  nd03d1 U286 ( .A1(n218), .A2(n219), .A3(n220), .ZN(N39) );
  nd03d1 U287 ( .A1(n201), .A2(n202), .A3(n203), .ZN(N45) );
  nd03d1 U288 ( .A1(n209), .A2(n210), .A3(n211), .ZN(N43) );
  nd03d1 U289 ( .A1(n221), .A2(n222), .A3(n223), .ZN(N38) );
  nd03d1 U290 ( .A1(n206), .A2(n207), .A3(n208), .ZN(N44) );
  inv0d0 U291 ( .I(wb_adr_i[1]), .ZN(n240) );
  inv0d0 U292 ( .I(wb_adr_i[0]), .ZN(n241) );
  nr03d1 U293 ( .A1(n241), .A2(wb_adr_i[2]), .A3(n240), .ZN(n194) );
  nr03d1 U294 ( .A1(wb_adr_i[0]), .A2(wb_adr_i[2]), .A3(n240), .ZN(n196) );
  inv0d1 U295 ( .I(wb_rst_i), .ZN(n238) );
  nr03d1 U296 ( .A1(wb_adr_i[1]), .A2(wb_adr_i[2]), .A3(n241), .ZN(n197) );
  nr03d1 U297 ( .A1(wb_adr_i[1]), .A2(wb_adr_i[2]), .A3(wb_adr_i[0]), .ZN(n198) );
  inv0d0 U298 ( .I(done), .ZN(n228) );
  inv0d0 U299 ( .I(i2c_al), .ZN(n227) );
  nd02d1 U300 ( .A1(wb_dat_i[0]), .A2(n237), .ZN(n186) );
  nd02d1 U301 ( .A1(wb_dat_i[1]), .A2(n237), .ZN(n187) );
  nd02d1 U302 ( .A1(wb_dat_i[2]), .A2(n237), .ZN(n188) );
  nd02d1 U303 ( .A1(wb_dat_i[3]), .A2(n237), .ZN(n189) );
  nd02d1 U304 ( .A1(wb_dat_i[4]), .A2(n237), .ZN(n190) );
  nd02d1 U305 ( .A1(wb_dat_i[5]), .A2(n237), .ZN(n191) );
  nd02d1 U306 ( .A1(wb_dat_i[6]), .A2(n237), .ZN(n192) );
  nd02d1 U307 ( .A1(wb_dat_i[7]), .A2(n237), .ZN(n193) );
  inv0d0 U308 ( .I(sr_0), .ZN(n243) );
  inv0d0 U309 ( .I(sr[5]), .ZN(n242) );
  nr23d1 U310 ( .A1(wb_cyc_i), .A2(wb_stb_i), .A3(wb_ack_o), .ZN(N15) );
  inv0d0 U311 ( .I(arst_i), .ZN(n226) );
  secrq4 \txr_reg[7]  ( .D(n229), .SD(txr[6]), .ENN(n148), .SC(test_se), .CP(
        wb_clk_i), .CDN(arst_i), .Q(txr[7]) );
  secrq4 \txr_reg[6]  ( .D(n230), .SD(txr[5]), .ENN(n148), .SC(test_se), .CP(
        wb_clk_i), .CDN(arst_i), .Q(txr[6]) );
  secrq4 \txr_reg[5]  ( .D(n231), .SD(txr[4]), .ENN(n148), .SC(test_se), .CP(
        wb_clk_i), .CDN(arst_i), .Q(txr[5]) );
  secrq4 \txr_reg[4]  ( .D(n232), .SD(txr[3]), .ENN(n148), .SC(test_se), .CP(
        wb_clk_i), .CDN(n225), .Q(txr[4]) );
  secrq4 \txr_reg[3]  ( .D(n233), .SD(txr[2]), .ENN(n148), .SC(test_se), .CP(
        wb_clk_i), .CDN(arst_i), .Q(txr[3]) );
  secrq4 \txr_reg[2]  ( .D(n234), .SD(txr[1]), .ENN(n148), .SC(test_se), .CP(
        wb_clk_i), .CDN(arst_i), .Q(txr[2]) );
  secrq4 \txr_reg[1]  ( .D(n235), .SD(txr[0]), .ENN(n148), .SC(test_se), .CP(
        wb_clk_i), .CDN(n225), .Q(txr[1]) );
  secrq4 \txr_reg[0]  ( .D(n236), .SD(sr_1), .ENN(n148), .SC(test_se), .CP(
        wb_clk_i), .CDN(n224), .Q(txr[0]) );
  seprq4 \prer_reg[15]  ( .D(N62), .SD(prer[14]), .ENN(n146), .SC(test_se), 
        .CP(wb_clk_i), .SDN(arst_i), .Q(prer[15]) );
  seprq4 \prer_reg[14]  ( .D(N61), .SD(prer[13]), .ENN(n146), .SC(test_se), 
        .CP(wb_clk_i), .SDN(arst_i), .Q(prer[14]) );
  seprq4 \prer_reg[13]  ( .D(N60), .SD(prer[12]), .ENN(n146), .SC(test_se), 
        .CP(wb_clk_i), .SDN(n225), .Q(prer[13]) );
  seprq4 \prer_reg[12]  ( .D(N59), .SD(prer[11]), .ENN(n146), .SC(test_se), 
        .CP(wb_clk_i), .SDN(n225), .Q(prer[12]) );
  seprq4 \prer_reg[11]  ( .D(N58), .SD(prer[10]), .ENN(n146), .SC(test_se), 
        .CP(wb_clk_i), .SDN(arst_i), .Q(prer[11]) );
  seprq4 \prer_reg[10]  ( .D(N57), .SD(prer[9]), .ENN(n146), .SC(test_se), 
        .CP(wb_clk_i), .SDN(arst_i), .Q(prer[10]) );
  seprq4 \prer_reg[9]  ( .D(N56), .SD(prer[8]), .ENN(n146), .SC(test_se), .CP(
        wb_clk_i), .SDN(n225), .Q(prer[9]) );
  seprq4 \prer_reg[8]  ( .D(N55), .SD(prer[7]), .ENN(n146), .SC(test_se), .CP(
        wb_clk_i), .SDN(arst_i), .Q(prer[8]) );
  seprq4 \prer_reg[7]  ( .D(N62), .SD(prer[6]), .ENN(n145), .SC(test_se), .CP(
        wb_clk_i), .SDN(n225), .Q(prer[7]) );
  seprq4 \prer_reg[6]  ( .D(N61), .SD(test_si5), .ENN(n145), .SC(test_se), 
        .CP(wb_clk_i), .SDN(arst_i), .Q(prer[6]) );
  seprq4 \prer_reg[5]  ( .D(N60), .SD(prer[4]), .ENN(n145), .SC(test_se), .CP(
        wb_clk_i), .SDN(n225), .Q(prer[5]) );
  seprq4 \prer_reg[4]  ( .D(N59), .SD(prer[3]), .ENN(n145), .SC(test_se), .CP(
        wb_clk_i), .SDN(n225), .Q(prer[4]) );
  seprq4 \prer_reg[3]  ( .D(N58), .SD(prer[2]), .ENN(n145), .SC(test_se), .CP(
        wb_clk_i), .SDN(arst_i), .Q(prer[3]) );
  seprq4 \prer_reg[2]  ( .D(N57), .SD(prer[1]), .ENN(n145), .SC(test_se), .CP(
        wb_clk_i), .SDN(n225), .Q(prer[2]) );
  seprq4 \prer_reg[1]  ( .D(N56), .SD(prer[0]), .ENN(n145), .SC(test_se), .CP(
        wb_clk_i), .SDN(arst_i), .Q(prer[1]) );
  seprq4 \prer_reg[0]  ( .D(N55), .SD(sr_0), .ENN(n145), .SC(test_se), .CP(
        wb_clk_i), .SDN(n225), .Q(prer[0]) );
  secrq4 \ctr_reg[7]  ( .D(n229), .SD(ctr[6]), .ENN(n147), .SC(test_se), .CP(
        wb_clk_i), .CDN(n225), .Q(ctr[7]) );
  secrq4 \ctr_reg[6]  ( .D(n230), .SD(ctr[5]), .ENN(n147), .SC(test_se), .CP(
        wb_clk_i), .CDN(arst_i), .Q(ctr[6]) );
  secrq4 \ctr_reg[5]  ( .D(n231), .SD(ctr[4]), .ENN(n147), .SC(test_se), .CP(
        wb_clk_i), .CDN(n225), .Q(ctr[5]) );
  secrq4 \ctr_reg[4]  ( .D(n232), .SD(ctr[3]), .ENN(n147), .SC(test_se), .CP(
        wb_clk_i), .CDN(n224), .Q(ctr[4]) );
  secrq4 \ctr_reg[3]  ( .D(n233), .SD(ctr[2]), .ENN(n147), .SC(test_se), .CP(
        wb_clk_i), .CDN(n224), .Q(ctr[3]) );
  secrq4 \ctr_reg[2]  ( .D(n234), .SD(ctr[1]), .ENN(n147), .SC(test_se), .CP(
        wb_clk_i), .CDN(arst_i), .Q(ctr[2]) );
  secrq4 \ctr_reg[1]  ( .D(n235), .SD(ctr[0]), .ENN(n147), .SC(test_se), .CP(
        wb_clk_i), .CDN(arst_i), .Q(ctr[1]) );
  secrq4 \ctr_reg[0]  ( .D(n236), .SD(cr[7]), .ENN(n147), .SC(test_se), .CP(
        wb_clk_i), .CDN(n225), .Q(ctr[0]) );
  secrq4 \cr_reg[3]  ( .D(n233), .SD(cr[2]), .ENN(n25), .SC(test_se), .CP(
        wb_clk_i), .CDN(n225), .Q(cr[3]) );
  secrq4 \cr_reg[4]  ( .D(n232), .SD(cr[3]), .ENN(n143), .SC(test_se), .CP(
        wb_clk_i), .CDN(arst_i), .Q(cr[4]) );
  secrq4 \cr_reg[5]  ( .D(n231), .SD(cr[4]), .ENN(n143), .SC(test_se), .CP(
        wb_clk_i), .CDN(arst_i), .Q(cr[5]) );
  secrq4 \cr_reg[6]  ( .D(n230), .SD(cr[5]), .ENN(n143), .SC(test_se), .CP(
        wb_clk_i), .CDN(n225), .Q(cr[6]) );
  secrq4 \cr_reg[7]  ( .D(n229), .SD(cr[6]), .ENN(n143), .SC(test_se), .CP(
        wb_clk_i), .CDN(n225), .Q(cr[7]) );
  secrq4 \cr_reg[2]  ( .D(n234), .SD(cr[1]), .ENN(n63), .SC(test_se), .CP(
        wb_clk_i), .CDN(n225), .Q(cr[2]) );
  secrq4 \cr_reg[1]  ( .D(n235), .SD(cr[0]), .ENN(n63), .SC(test_se), .CP(
        wb_clk_i), .CDN(n224), .Q(cr[1]) );
  secrq4 \cr_reg[0]  ( .D(n236), .SD(n246), .ENN(n63), .SC(test_se), .CP(
        wb_clk_i), .CDN(n225), .Q(cr[0]) );
  sdcrq1 rxack_reg ( .D(N100), .SD(prer[15]), .SC(test_se), .CP(wb_clk_i), 
        .CDN(n224), .Q(sr[7]) );
  sdcrq1 tip_reg ( .D(N101), .SD(sr[7]), .SC(test_se), .CP(wb_clk_i), .CDN(
        n224), .Q(sr_1) );
  sdcrq1 irq_flag_reg ( .D(N102), .SD(ctr[7]), .SC(test_se), .CP(wb_clk_i), 
        .CDN(n224), .Q(sr_0) );
  sdcrq1 al_reg ( .D(n144), .SD(test_si1), .SC(test_se), .CP(wb_clk_i), .CDN(
        n224), .Q(sr[5]) );
  sdnrq4 wb_ack_o_reg ( .D(N15), .SD(txr[7]), .SC(test_se), .CP(wb_clk_i), .Q(
        wb_ack_o) );
  sdnrq4 \wb_dat_o_reg[4]  ( .D(N42), .SD(wb_dat_o[3]), .SC(test_se), .CP(
        wb_clk_i), .Q(wb_dat_o[4]) );
  sdnrq4 \wb_dat_o_reg[6]  ( .D(N44), .SD(wb_dat_o[5]), .SC(test_se), .CP(
        wb_clk_i), .Q(wb_dat_o[6]) );
  sdnrq4 \wb_dat_o_reg[3]  ( .D(N41), .SD(wb_dat_o[2]), .SC(test_se), .CP(
        wb_clk_i), .Q(wb_dat_o[3]) );
  sdnrq4 \wb_dat_o_reg[2]  ( .D(N40), .SD(wb_dat_o[1]), .SC(test_se), .CP(
        wb_clk_i), .Q(wb_dat_o[2]) );
  sdnrq4 \wb_dat_o_reg[0]  ( .D(N38), .SD(wb_ack_o), .SC(test_se), .CP(
        wb_clk_i), .Q(wb_dat_o[0]) );
  sdnrq4 \wb_dat_o_reg[5]  ( .D(N43), .SD(wb_dat_o[4]), .SC(test_se), .CP(
        wb_clk_i), .Q(wb_dat_o[5]) );
  sdnrq4 \wb_dat_o_reg[7]  ( .D(N45), .SD(wb_dat_o[6]), .SC(test_se), .CP(
        wb_clk_i), .Q(wb_dat_o[7]) );
  sdnrq4 \wb_dat_o_reg[1]  ( .D(N39), .SD(wb_dat_o[0]), .SC(test_se), .CP(
        wb_clk_i), .Q(wb_dat_o[1]) );
  sdcrq1 wb_inta_o_reg ( .D(N106), .SD(wb_dat_o[7]), .SC(test_se), .CP(
        wb_clk_i), .CDN(n224), .Q(wb_inta_o) );
endmodule

