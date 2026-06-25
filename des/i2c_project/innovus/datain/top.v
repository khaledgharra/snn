
module pc3d01(CIN, PAD);
inout PAD;
output CIN;
wire  constant_one, constant_zero;
assign constant_one = 1'b1;
assign constant_zero = 1'b0;
PIOH_18_18 I1( .PAD(PAD), .SCHM_ON(constant_zero), .EN(constant_zero), .VDDO_OK(constant_one), .I(constant_zero), .PULL_UP_DOWN(constant_zero), .PULL_ON(constant_zero), .TTL_ON(constant_zero), .DRIVE_STR(constant_zero), .VDD_OK(constant_one), .CIN(CIN),.VDDO(VDD), .VDD(VDD), .VSSO(VSS), .VSS(VSS) );
endmodule

module pt3o01(PAD, I);
inout PAD;
input I;
wire  constant_one, constant_zero;
assign constant_one = 1'b1;
assign constant_zero = 1'b0;
PIOH_18_18 I1( .PAD(PAD), .SCHM_ON(constant_zero), .EN(constant_one), .VDDO_OK(constant_one), .I(I), .PULL_UP_DOWN(constant_zero), .PULL_ON(constant_zero), .TTL_ON(constant_zero), .DRIVE_STR(constant_zero), .VDD_OK(constant_one), .CIN(), .VDDO(VDD), .VDD(VDD), .VSSO(VSS), .VSS(VSS) );


endmodule

module pvdc( VDD );
output VDD;
PVDF_18_18 I1 ( .VDDO(VDD), .VSSO(VSS), .VSS(VSS) );
endmodule

module pv0c( VSS );
output VSS;
PV0F_18_18 I1 ( .VDDO(VDD), .VDD(VDD), .VSSO(VSS) );
endmodule

module pfrelr;
PCORNER_NA_NA I1 (.VDDO(VDD), .VDD(VDD), .VSSO(VSS), .VSS(VSS));
endmodule

module top();
wire wire_VDD;
wire wire_VSS;
wire wire_scl_pad_i;
wire wire_sda_pad_i;
wire [2:0] wire_wb_adr_i;
wire wire_wb_clk_i;
wire wire_wb_cyc_i;
wire [7:0] wire_wb_dat_i;
wire wire_wb_rst_i;
wire wire_wb_stb_i;
wire wire_wb_we_i;
wire wire_scl_pad_o;
wire wire_scl_padoen_o;
wire wire_sda_pad_o;
wire wire_sda_padoen_o;
wire wire_wb_ack_o;
wire [7:0] wire_wb_dat_o;
wire   net1000;
wire   net1001;


specify
    specparam CDS_LIBNAME  = "testLib";
    specparam CDS_CELLNAME = "top";
    specparam CDS_VIEWNAME = "schematic";
endspecify

i2c_master_top I0(.VDD(wire_VDD)
,.VSS(wire_VSS)
,.arst_i(1'b0)
,.scl_pad_i(wire_scl_pad_i)
,.sda_pad_i(wire_sda_pad_i)
,.wb_adr_i(wire_wb_adr_i[2:0])
,.wb_clk_i(wire_wb_clk_i)
,.wb_cyc_i(wire_wb_cyc_i)
,.wb_dat_i(wire_wb_dat_i[7:0])
,.wb_rst_i(wire_wb_rst_i)
,.wb_stb_i(wire_wb_stb_i)
,.wb_we_i(wire_wb_we_i)
,.scl_pad_o(wire_scl_pad_o)
,.scl_padoen_o(wire_scl_padoen_o)
,.sda_pad_o(wire_sda_pad_o)
,.sda_padoen_o(wire_sda_padoen_o)
,.wb_ack_o(wire_wb_ack_o)
,.wb_dat_o(wire_wb_dat_o[7:0])
);

pv0c PAD_G1 (.VSS(VSS));
pvdc PAD_I1 (.VDD(VDD));

pv0c PAD_G3 (.VSS(VSS));
pvdc PAD_I3 (.VDD(VDD));

pv0c PAD_G5 (.VSS(VSS));
pvdc PAD_I5 (.VDD(VDD));

pv0c PAD_G7 (.VSS(VSS));
pvdc PAD_I7 (.VDD(VDD));

pc3d01 I1 ( .CIN(wire_VDD), .PAD(net100));
pc3d01 I2 ( .CIN(wire_VSS), .PAD(net101));
pc3d01 I4 ( .CIN(wire_scl_pad_i), .PAD(net103));
pc3d01 I5 ( .CIN(wire_sda_pad_i), .PAD(net104));
pc3d01 I6 ( .CIN(wire_wb_adr_i[2]), .PAD(net105));
pc3d01 I7 ( .CIN(wire_wb_adr_i[1]), .PAD(net106));
pc3d01 I8 ( .CIN(wire_wb_adr_i[0]), .PAD(net107));
pc3d01 I9 ( .CIN(wire_wb_clk_i), .PAD(net108));
pc3d01 I10 ( .CIN(wire_wb_cyc_i), .PAD(net109));
pc3d01 I11 ( .CIN(wire_wb_dat_i[7]), .PAD(net110));
pc3d01 I12 ( .CIN(wire_wb_dat_i[6]), .PAD(net111));
pc3d01 I13 ( .CIN(wire_wb_dat_i[5]), .PAD(net112));
pc3d01 I14 ( .CIN(wire_wb_dat_i[4]), .PAD(net113));
pc3d01 I15 ( .CIN(wire_wb_dat_i[3]), .PAD(net114));
pc3d01 I16 ( .CIN(wire_wb_dat_i[2]), .PAD(net115));
pc3d01 I17 ( .CIN(wire_wb_dat_i[1]), .PAD(net116));
pc3d01 I18 ( .CIN(wire_wb_dat_i[0]), .PAD(net117));
pc3d01 I19 ( .CIN(wire_wb_rst_i), .PAD(net118));
pc3d01 I20 ( .CIN(wire_wb_stb_i), .PAD(net119));
pc3d01 I21 ( .CIN(wire_wb_we_i), .PAD(net120));

pt3o01 I22 ( .PAD(net121), .I(wire_scl_pad_o));
pt3o01 I23 ( .PAD(net122), .I(wire_scl_padoen_o));
pt3o01 I24 ( .PAD(net123), .I(wire_sda_pad_o));
pt3o01 I25 ( .PAD(net124), .I(wire_sda_padoen_o));
pt3o01 I26 ( .PAD(net125), .I(wire_wb_ack_o));
pt3o01 I27 ( .PAD(net126), .I(wire_wb_dat_o[7]));
pt3o01 I28 ( .PAD(net127), .I(wire_wb_dat_o[6]));
pt3o01 I29 ( .PAD(net128), .I(wire_wb_dat_o[5]));
pt3o01 I30 ( .PAD(net129), .I(wire_wb_dat_o[4]));
pt3o01 I31 ( .PAD(net130), .I(wire_wb_dat_o[3]));
pt3o01 I32 ( .PAD(net131), .I(wire_wb_dat_o[2]));
pt3o01 I33 ( .PAD(net132), .I(wire_wb_dat_o[1]));
pt3o01 I34 ( .PAD(net133), .I(wire_wb_dat_o[0]));
pfrelr Pcornerlr();
pfrelr Pcornerll();
pfrelr Pcornerur();
pfrelr Pcornerul();

endmodule

/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12
// Date      : Tue Jun 16 12:02:08 2026
/////////////////////////////////////////////////////////////


module i2c_master_bit_ctrl_DW01_dec_0_DW01_dec_1 ( A, SUM );
  input [13:0] A;
  output [13:0] SUM;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15;

  inv0d0 U1 ( .I(n14), .ZN(n1) );
  inv0d0 U2 ( .I(A[10]), .ZN(n3) );
  inv0d0 U3 ( .I(A[0]), .ZN(SUM[0]) );
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
  nr02d0 U14 ( .A1(A[12]), .A2(n1), .ZN(n13) );
  xr02d1 U15 ( .A1(A[12]), .A2(n14), .Z(SUM[12]) );
  oaim21d1 U16 ( .B1(n15), .B2(A[11]), .A(n1), .ZN(SUM[11]) );
  nr02d0 U17 ( .A1(n15), .A2(A[11]), .ZN(n14) );
  oai21d1 U18 ( .B1(n5), .B2(n3), .A(n15), .ZN(SUM[10]) );
  nd02d0 U19 ( .A1(n5), .A2(n3), .ZN(n15) );
  nr02d0 U20 ( .A1(n4), .A2(A[9]), .ZN(n5) );
  or02d0 U21 ( .A1(n6), .A2(A[8]), .Z(n4) );
  or02d0 U22 ( .A1(n7), .A2(A[7]), .Z(n6) );
  or02d0 U23 ( .A1(n8), .A2(A[6]), .Z(n7) );
  or02d0 U24 ( .A1(n9), .A2(A[5]), .Z(n8) );
  or02d0 U25 ( .A1(n10), .A2(A[4]), .Z(n9) );
  or02d0 U26 ( .A1(n11), .A2(A[3]), .Z(n10) );
  or02d0 U27 ( .A1(n12), .A2(A[2]), .Z(n11) );
  or02d0 U28 ( .A1(A[1]), .A2(A[0]), .Z(n12) );
endmodule


module i2c_master_bit_ctrl_DW01_dec_1_DW01_dec_2 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17;

  inv0d0 U1 ( .I(n14), .ZN(n1) );
  inv0d0 U2 ( .I(A[10]), .ZN(n3) );
  inv0d0 U3 ( .I(A[0]), .ZN(SUM[0]) );
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
  nr02d0 U14 ( .A1(A[14]), .A2(n1), .ZN(n13) );
  xr02d1 U15 ( .A1(A[14]), .A2(n14), .Z(SUM[14]) );
  oaim21d1 U16 ( .B1(n15), .B2(A[13]), .A(n1), .ZN(SUM[13]) );
  nr02d0 U17 ( .A1(n15), .A2(A[13]), .ZN(n14) );
  oaim21d1 U18 ( .B1(n16), .B2(A[12]), .A(n15), .ZN(SUM[12]) );
  or02d0 U19 ( .A1(n16), .A2(A[12]), .Z(n15) );
  oaim21d1 U20 ( .B1(n17), .B2(A[11]), .A(n16), .ZN(SUM[11]) );
  or02d0 U21 ( .A1(n17), .A2(A[11]), .Z(n16) );
  oai21d1 U22 ( .B1(n5), .B2(n3), .A(n17), .ZN(SUM[10]) );
  nd02d0 U23 ( .A1(n5), .A2(n3), .ZN(n17) );
  nr02d0 U24 ( .A1(n4), .A2(A[9]), .ZN(n5) );
  or02d0 U25 ( .A1(n6), .A2(A[8]), .Z(n4) );
  or02d0 U26 ( .A1(n7), .A2(A[7]), .Z(n6) );
  or02d0 U27 ( .A1(n8), .A2(A[6]), .Z(n7) );
  or02d0 U28 ( .A1(n9), .A2(A[5]), .Z(n8) );
  or02d0 U29 ( .A1(n10), .A2(A[4]), .Z(n9) );
  or02d0 U30 ( .A1(n11), .A2(A[3]), .Z(n10) );
  or02d0 U31 ( .A1(n12), .A2(A[2]), .Z(n11) );
  or02d0 U32 ( .A1(A[1]), .A2(A[0]), .Z(n12) );
endmodule


module i2c_master_bit_ctrl ( clk, rst, nReset, ena, clk_cnt, cmd, cmd_ack, 
        busy, al, din, dout, scl_i, scl_o, scl_oen, sda_i, sda_o, sda_oen, VDD, 
        VSS );
  input [15:0] clk_cnt;
  input [3:0] cmd;
  input clk, rst, nReset, ena, din, scl_i, sda_i, VDD, VSS;
  output cmd_ack, busy, al, dout, scl_o, scl_oen, sda_o, sda_oen;
  wire   dscl_oen, slave_wait, sSCL, N29, N34, N35, N36, N37, N38, N39, N40,
         N41, N42, N43, N44, N45, N46, N47, N48, N49, N66, N70, N71, N72, N73,
         N78, N79, N80, N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91,
         N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104,
         N105, N122, N123, N124, N125, sta_condition, sto_condition, N128,
         N129, N131, cmd_stop, N138, N227, n2, n3, n4, n6, n7, n14, n16, n17,
         n18, n22, n28, n32, n35, n37, n38, n39, n41, n42, n43, n44, n45, n46,
         n47, n48, n50, n55, n57, n58, n59, n60, n62, n63, n64, n65, n66, n68,
         n69, n70, n71, n74, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n1, n5, n8, n9, n10,
         n11, n12, n13, n15, n19, n20, n21, n23, n24, n25, n26, n27, n29, n30,
         n31, n33, n34, n36, n40, n49, n51, n52, n53, n54, n56, n61, n67, n72,
         n73, n75, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154;
  wire   [15:0] cnt;
  wire   [1:0] cSCL;
  wire   [1:0] cSDA;
  wire   [13:0] filter_cnt;
  wire   [17:0] c_state;
  assign sda_o = 1'b0;
  assign scl_o = 1'b0;

  dfprb1 \fSDA_reg[0]  ( .D(n140), .CP(clk), .SDN(n26), .QN(n91) );
  dfprb1 \fSDA_reg[1]  ( .D(n139), .CP(clk), .SDN(n26), .QN(n90) );
  dfprb1 \fSDA_reg[2]  ( .D(n138), .CP(clk), .SDN(n26), .QN(n82) );
  dfprb1 \fSCL_reg[0]  ( .D(n137), .CP(clk), .SDN(n26), .QN(n93) );
  dfprb1 \fSCL_reg[1]  ( .D(n136), .CP(clk), .SDN(n26), .QN(n92) );
  dfprb1 \fSCL_reg[2]  ( .D(n135), .CP(clk), .SDN(n26), .QN(n83) );
  dfprb1 sSCL_reg ( .D(N122), .CP(clk), .SDN(n26), .Q(sSCL), .QN(n8) );
  dfprb1 sSDA_reg ( .D(N123), .CP(clk), .SDN(n26), .Q(n86), .QN(n5) );
  dfprb1 dSDA_reg ( .D(N125), .CP(clk), .SDN(n26), .QN(n84) );
  dfprb1 dSCL_reg ( .D(N124), .CP(clk), .SDN(n26), .QN(n87) );
  dfprb1 sda_oen_reg ( .D(n134), .CP(clk), .SDN(n26), .Q(sda_oen), .QN(n10) );
  dfprb1 scl_oen_reg ( .D(n133), .CP(clk), .SDN(n26), .Q(scl_oen), .QN(n1) );
  dfprb1 clk_en_reg ( .D(N66), .CP(clk), .SDN(n25), .Q(n9), .QN(n85) );
  dfcrn1 \c_state_reg[13]  ( .D(n117), .CP(clk), .CDN(n25), .QN(n97) );
  dfcrn1 \c_state_reg[14]  ( .D(n116), .CP(clk), .CDN(n25), .QN(n96) );
  dfcrn1 \c_state_reg[15]  ( .D(n115), .CP(clk), .CDN(n25), .QN(n95) );
  dfcrn1 sda_chk_reg ( .D(n98), .CP(clk), .CDN(n25), .QN(n94) );
  dfcrn1 \c_state_reg[6]  ( .D(n124), .CP(clk), .CDN(n25), .QN(n88) );
  oai22d1 U3 ( .A1(n94), .A2(n29), .B1(n95), .B2(n2), .ZN(n98) );
  aor222d1 U4 ( .A1(n3), .A2(cnt[15]), .B1(n31), .B2(N49), .C1(N66), .C2(
        clk_cnt[15]), .Z(n99) );
  aor222d1 U5 ( .A1(n3), .A2(cnt[14]), .B1(n31), .B2(N48), .C1(N66), .C2(
        clk_cnt[14]), .Z(n100) );
  aor222d1 U6 ( .A1(n3), .A2(cnt[13]), .B1(n31), .B2(N47), .C1(N66), .C2(
        clk_cnt[13]), .Z(n101) );
  aor222d1 U7 ( .A1(n3), .A2(cnt[12]), .B1(n31), .B2(N46), .C1(N66), .C2(
        clk_cnt[12]), .Z(n102) );
  aor222d1 U8 ( .A1(n3), .A2(cnt[11]), .B1(n31), .B2(N45), .C1(N66), .C2(
        clk_cnt[11]), .Z(n103) );
  aor222d1 U9 ( .A1(n3), .A2(cnt[10]), .B1(n31), .B2(N44), .C1(N66), .C2(
        clk_cnt[10]), .Z(n104) );
  aor222d1 U10 ( .A1(n3), .A2(cnt[9]), .B1(n31), .B2(N43), .C1(N66), .C2(
        clk_cnt[9]), .Z(n105) );
  aor222d1 U11 ( .A1(n3), .A2(cnt[8]), .B1(n31), .B2(N42), .C1(N66), .C2(
        clk_cnt[8]), .Z(n106) );
  aor222d1 U12 ( .A1(n3), .A2(cnt[7]), .B1(n31), .B2(N41), .C1(N66), .C2(
        clk_cnt[7]), .Z(n107) );
  aor222d1 U13 ( .A1(n3), .A2(cnt[6]), .B1(n31), .B2(N40), .C1(N66), .C2(
        clk_cnt[6]), .Z(n108) );
  aor222d1 U14 ( .A1(n3), .A2(cnt[5]), .B1(n31), .B2(N39), .C1(N66), .C2(
        clk_cnt[5]), .Z(n109) );
  aor222d1 U15 ( .A1(n3), .A2(cnt[4]), .B1(n31), .B2(N38), .C1(N66), .C2(
        clk_cnt[4]), .Z(n110) );
  aor222d1 U16 ( .A1(n3), .A2(cnt[3]), .B1(n31), .B2(N37), .C1(N66), .C2(
        clk_cnt[3]), .Z(n111) );
  aor222d1 U17 ( .A1(n3), .A2(cnt[2]), .B1(n31), .B2(N36), .C1(N66), .C2(
        clk_cnt[2]), .Z(n112) );
  aor222d1 U18 ( .A1(cnt[1]), .A2(n3), .B1(N35), .B2(n31), .C1(clk_cnt[1]), 
        .C2(N66), .Z(n113) );
  aor222d1 U19 ( .A1(cnt[0]), .A2(n3), .B1(N34), .B2(n31), .C1(clk_cnt[0]), 
        .C2(N66), .Z(n114) );
  oai22d1 U22 ( .A1(n95), .A2(n30), .B1(n96), .B2(n2), .ZN(n115) );
  oai22d1 U23 ( .A1(n96), .A2(n27), .B1(n97), .B2(n2), .ZN(n116) );
  oai21d1 U24 ( .B1(n97), .B2(n27), .A(n6), .ZN(n117) );
  oai22d1 U27 ( .A1(n29), .A2(n149), .B1(n2), .B2(n148), .ZN(n118) );
  oai22d1 U28 ( .A1(n30), .A2(n148), .B1(n2), .B2(n147), .ZN(n119) );
  oai22d1 U30 ( .A1(n30), .A2(n147), .B1(n2), .B2(n146), .ZN(n120) );
  oai21d1 U32 ( .B1(n29), .B2(n146), .A(n14), .ZN(n121) );
  oai22d1 U37 ( .A1(n27), .A2(n73), .B1(n2), .B2(n72), .ZN(n122) );
  oai22d1 U39 ( .A1(n29), .A2(n72), .B1(n88), .B2(n2), .ZN(n123) );
  oai22d1 U40 ( .A1(n88), .A2(n27), .B1(n2), .B2(n67), .ZN(n124) );
  oai21d1 U41 ( .B1(n30), .B2(n67), .A(n22), .ZN(n125) );
  oai22d1 U44 ( .A1(n29), .A2(n145), .B1(n2), .B2(n144), .ZN(n126) );
  oai22d1 U46 ( .A1(n30), .A2(n144), .B1(n2), .B2(n143), .ZN(n127) );
  oai22d1 U47 ( .A1(n27), .A2(n143), .B1(n2), .B2(n142), .ZN(n128) );
  oai22d1 U48 ( .A1(n27), .A2(n142), .B1(n2), .B2(n141), .ZN(n129) );
  oai21d1 U49 ( .B1(n30), .B2(n141), .A(n28), .ZN(n130) );
  oai22d1 U54 ( .A1(n29), .A2(n61), .B1(n95), .B2(n2), .ZN(n131) );
  oan211d1 U56 ( .C1(n9), .C2(n54), .B(n35), .A(rst), .ZN(n132) );
  oaim22d1 U61 ( .A1(n37), .A2(n38), .B1(n38), .B2(scl_oen), .ZN(n133) );
  aon211d1 U62 ( .C1(n39), .C2(n141), .B(n51), .A(n29), .ZN(n38) );
  oaim22d1 U69 ( .A1(n44), .A2(n45), .B1(n45), .B2(sda_oen), .ZN(n134) );
  oai21d1 U70 ( .B1(n51), .B2(n56), .A(n27), .ZN(n45) );
  oai21d1 U73 ( .B1(n47), .B2(n48), .A(n32), .ZN(n46) );
  oai221d1 U75 ( .B1(n83), .B2(n50), .C1(n92), .C2(n36), .A(n154), .ZN(n135)
         );
  oai221d1 U76 ( .B1(n92), .B2(n50), .C1(n93), .C2(n36), .A(n154), .ZN(n136)
         );
  oai221d1 U77 ( .B1(n50), .B2(n93), .C1(n34), .C2(n36), .A(n154), .ZN(n137)
         );
  oai221d1 U79 ( .B1(n82), .B2(n50), .C1(n90), .C2(n36), .A(n154), .ZN(n138)
         );
  oai221d1 U80 ( .B1(n90), .B2(n50), .C1(n91), .C2(n36), .A(n154), .ZN(n139)
         );
  oai221d1 U81 ( .B1(n50), .B2(n91), .C1(n33), .C2(n36), .A(n154), .ZN(n140)
         );
  oaim22d1 U84 ( .A1(n55), .A2(n5), .B1(dout), .B2(n55), .ZN(n89) );
  aor22d1 U86 ( .A1(clk_cnt[9]), .A2(n57), .B1(N85), .B2(n58), .Z(N99) );
  aor22d1 U87 ( .A1(clk_cnt[8]), .A2(n57), .B1(N84), .B2(n58), .Z(N98) );
  aor22d1 U88 ( .A1(clk_cnt[7]), .A2(n57), .B1(N83), .B2(n58), .Z(N97) );
  aor22d1 U89 ( .A1(clk_cnt[6]), .A2(n57), .B1(N82), .B2(n58), .Z(N96) );
  aor22d1 U90 ( .A1(clk_cnt[5]), .A2(n57), .B1(N81), .B2(n58), .Z(N95) );
  aor22d1 U91 ( .A1(clk_cnt[4]), .A2(n57), .B1(N80), .B2(n58), .Z(N94) );
  aor22d1 U92 ( .A1(clk_cnt[3]), .A2(n57), .B1(N79), .B2(n58), .Z(N93) );
  aor22d1 U93 ( .A1(clk_cnt[2]), .A2(n57), .B1(N78), .B2(n58), .Z(N92) );
  ora31d1 U99 ( .B1(n87), .B2(sSCL), .B3(n1), .A(ena), .Z(n60) );
  oan211d1 U105 ( .C1(dscl_oen), .C2(n1), .B(n53), .A(sSCL), .ZN(N29) );
  aoi311d1 U108 ( .C1(n149), .C2(n61), .C3(n66), .A(n51), .B(n85), .ZN(N227)
         );
  oai31d1 U114 ( .B1(n10), .B2(n94), .B3(N125), .A(n68), .ZN(N138) );
  aoim211d1 U129 ( .C1(busy), .C2(sta_condition), .A(sto_condition), .B(rst), 
        .ZN(N131) );
  oai21d1 U136 ( .B1(n90), .B2(n91), .A(n40), .ZN(N123) );
  aon211d1 U138 ( .C1(n91), .C2(n90), .B(n82), .A(n154), .ZN(n74) );
  oai21d1 U139 ( .B1(n92), .B2(n93), .A(n49), .ZN(N122) );
  aon211d1 U141 ( .C1(n93), .C2(n92), .B(n83), .A(n154), .ZN(n76) );
  aor22d1 U142 ( .A1(clk_cnt[15]), .A2(n57), .B1(N91), .B2(n58), .Z(N105) );
  aor22d1 U143 ( .A1(clk_cnt[14]), .A2(n57), .B1(N90), .B2(n58), .Z(N104) );
  aor22d1 U144 ( .A1(clk_cnt[13]), .A2(n57), .B1(N89), .B2(n58), .Z(N103) );
  aor22d1 U145 ( .A1(clk_cnt[12]), .A2(n57), .B1(N88), .B2(n58), .Z(N102) );
  aor22d1 U146 ( .A1(clk_cnt[11]), .A2(n57), .B1(N87), .B2(n58), .Z(N101) );
  aor22d1 U147 ( .A1(clk_cnt[10]), .A2(n57), .B1(N86), .B2(n58), .Z(N100) );
  nd04d1 U25 ( .A1(cmd[2]), .A2(n7), .A3(n151), .A4(n150), .ZN(n6) );
  nd04d1 U33 ( .A1(n52), .A2(n150), .A3(n16), .A4(n17), .ZN(n14) );
  an02d1 U34 ( .A1(n18), .A2(cmd[3]), .Z(n17) );
  nd04d1 U50 ( .A1(cmd[0]), .A2(n7), .A3(n150), .A4(n153), .ZN(n28) );
  nr03d1 U53 ( .A1(n2), .A2(cmd[3]), .A3(n56), .ZN(n7) );
  nd04d1 U57 ( .A1(cmd[1]), .A2(n18), .A3(n152), .A4(n9), .ZN(n35) );
  nr04d1 U64 ( .A1(n41), .A2(n42), .A3(c_state[1]), .A4(n51), .ZN(n37) );
  nd04d1 U68 ( .A1(n88), .A2(n95), .A3(n96), .A4(n43), .ZN(n41) );
  nr03d1 U72 ( .A1(n46), .A2(c_state[1]), .A3(c_state[0]), .ZN(n44) );
  nr04d1 U74 ( .A1(din), .A2(c_state[9]), .A3(c_state[12]), .A4(n75), .ZN(n47)
         );
  an02d1 U94 ( .A1(cSDA[0]), .A2(n154), .Z(N73) );
  an02d1 U95 ( .A1(sda_i), .A2(n154), .Z(N72) );
  an02d1 U96 ( .A1(cSCL[0]), .A2(n154), .Z(N71) );
  an02d1 U97 ( .A1(scl_i), .A2(n154), .Z(N70) );
  nd04d1 U100 ( .A1(n62), .A2(n63), .A3(n64), .A4(n65), .ZN(n59) );
  nr04d1 U101 ( .A1(cnt[9]), .A2(cnt[8]), .A3(cnt[7]), .A4(cnt[6]), .ZN(n65)
         );
  nr04d1 U102 ( .A1(cnt[5]), .A2(cnt[4]), .A3(cnt[3]), .A4(cnt[2]), .ZN(n64)
         );
  nr04d1 U103 ( .A1(cnt[1]), .A2(cnt[15]), .A3(cnt[14]), .A4(cnt[13]), .ZN(n63) );
  nr04d1 U104 ( .A1(cnt[12]), .A2(cnt[11]), .A3(cnt[10]), .A4(cnt[0]), .ZN(n62) );
  nd04d1 U115 ( .A1(sto_condition), .A2(n56), .A3(n54), .A4(n154), .ZN(n68) );
  nd04d1 U119 ( .A1(n142), .A2(n143), .A3(n69), .A4(n70), .ZN(n39) );
  nr04d1 U120 ( .A1(c_state[7]), .A2(c_state[5]), .A3(c_state[4]), .A4(
        c_state[3]), .ZN(n70) );
  an02d1 U121 ( .A1(n48), .A2(n88), .Z(n69) );
  an04d1 U122 ( .A1(n96), .A2(n97), .A3(n95), .A4(n71), .Z(n48) );
  nr04d1 U123 ( .A1(c_state[9]), .A2(c_state[16]), .A3(c_state[12]), .A4(n75), 
        .ZN(n71) );
  nr03d1 U125 ( .A1(c_state[11]), .A2(c_state[8]), .A3(c_state[10]), .ZN(n43)
         );
  an04d1 U130 ( .A1(n154), .A2(sSCL), .A3(n86), .A4(n84), .Z(N129) );
  nr03d1 U131 ( .A1(n8), .A2(n84), .A3(N125), .ZN(N128) );
  nd04d1 U152 ( .A1(n78), .A2(n79), .A3(n80), .A4(n81), .ZN(n77) );
  nr04d1 U153 ( .A1(filter_cnt[9]), .A2(filter_cnt[8]), .A3(filter_cnt[7]), 
        .A4(filter_cnt[6]), .ZN(n81) );
  nr03d1 U154 ( .A1(filter_cnt[3]), .A2(filter_cnt[5]), .A3(filter_cnt[4]), 
        .ZN(n80) );
  nr04d1 U155 ( .A1(filter_cnt[2]), .A2(filter_cnt[1]), .A3(filter_cnt[13]), 
        .A4(filter_cnt[12]), .ZN(n79) );
  nr03d1 U156 ( .A1(filter_cnt[0]), .A2(filter_cnt[11]), .A3(filter_cnt[10]), 
        .ZN(n78) );
  i2c_master_bit_ctrl_DW01_dec_0_DW01_dec_1 sub_260 ( .A(filter_cnt), .SUM({
        N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78})
         );
  i2c_master_bit_ctrl_DW01_dec_1_DW01_dec_2 sub_228 ( .A(cnt), .SUM({N49, N48, 
        N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34})
         );
  dfcrq1 \cSDA_reg[0]  ( .D(N72), .CP(clk), .CDN(n19), .Q(cSDA[0]) );
  dfcrq1 \cSCL_reg[0]  ( .D(N70), .CP(clk), .CDN(n19), .Q(cSCL[0]) );
  dfcrq1 sto_condition_reg ( .D(N129), .CP(clk), .CDN(n20), .Q(sto_condition)
         );
  dfcrq1 sta_condition_reg ( .D(N128), .CP(clk), .CDN(n20), .Q(sta_condition)
         );
  dfcrq1 busy_reg ( .D(N131), .CP(clk), .CDN(n21), .Q(busy) );
  dfcrq1 \cSDA_reg[1]  ( .D(N73), .CP(clk), .CDN(n19), .Q(cSDA[1]) );
  dfcrq1 \cSCL_reg[1]  ( .D(N71), .CP(clk), .CDN(n19), .Q(cSCL[1]) );
  dfnrq1 dscl_oen_reg ( .D(scl_oen), .CP(clk), .Q(dscl_oen) );
  dfnrq1 dout_reg ( .D(n89), .CP(clk), .Q(dout) );
  dfcrq1 cmd_stop_reg ( .D(n132), .CP(clk), .CDN(n21), .Q(cmd_stop) );
  dfcrq1 \c_state_reg[0]  ( .D(n130), .CP(clk), .CDN(n21), .Q(c_state[0]) );
  dfcrq1 slave_wait_reg ( .D(N29), .CP(clk), .CDN(n21), .Q(slave_wait) );
  dfcrq1 \c_state_reg[2]  ( .D(n128), .CP(clk), .CDN(n23), .Q(c_state[2]) );
  dfcrq1 \c_state_reg[1]  ( .D(n129), .CP(clk), .CDN(n23), .Q(c_state[1]) );
  dfcrq1 \filter_cnt_reg[12]  ( .D(N104), .CP(clk), .CDN(n20), .Q(
        filter_cnt[12]) );
  dfcrq1 \filter_cnt_reg[11]  ( .D(N103), .CP(clk), .CDN(n20), .Q(
        filter_cnt[11]) );
  dfcrq1 \filter_cnt_reg[13]  ( .D(N105), .CP(clk), .CDN(n20), .Q(
        filter_cnt[13]) );
  dfcrq1 \c_state_reg[3]  ( .D(n127), .CP(clk), .CDN(n23), .Q(c_state[3]) );
  dfcrq1 \c_state_reg[4]  ( .D(n126), .CP(clk), .CDN(n23), .Q(c_state[4]) );
  dfcrq1 \c_state_reg[5]  ( .D(n125), .CP(clk), .CDN(n21), .Q(c_state[5]) );
  dfcrq1 \c_state_reg[7]  ( .D(n123), .CP(clk), .CDN(n21), .Q(c_state[7]) );
  dfcrq1 \filter_cnt_reg[10]  ( .D(N102), .CP(clk), .CDN(n20), .Q(
        filter_cnt[10]) );
  dfcrq1 cmd_ack_reg ( .D(N227), .CP(clk), .CDN(n25), .Q(cmd_ack) );
  dfcrq1 \cnt_reg[13]  ( .D(n101), .CP(clk), .CDN(n25), .Q(cnt[13]) );
  dfcrq1 \cnt_reg[14]  ( .D(n100), .CP(clk), .CDN(n25), .Q(cnt[14]) );
  dfcrq1 \c_state_reg[12]  ( .D(n118), .CP(clk), .CDN(n23), .Q(c_state[12]) );
  dfcrq1 \cnt_reg[15]  ( .D(n99), .CP(clk), .CDN(n23), .Q(cnt[15]) );
  dfcrq1 \c_state_reg[16]  ( .D(n131), .CP(clk), .CDN(n21), .Q(c_state[16]) );
  dfcrq1 \cnt_reg[12]  ( .D(n102), .CP(clk), .CDN(n25), .Q(cnt[12]) );
  dfcrq1 \c_state_reg[9]  ( .D(n121), .CP(clk), .CDN(n23), .Q(c_state[9]) );
  dfcrq1 al_reg ( .D(N138), .CP(clk), .CDN(n21), .Q(al) );
  dfcrq1 \cnt_reg[11]  ( .D(n103), .CP(clk), .CDN(n24), .Q(cnt[11]) );
  dfcrq1 \filter_cnt_reg[9]  ( .D(N101), .CP(clk), .CDN(n20), .Q(filter_cnt[9]) );
  dfcrq1 \c_state_reg[10]  ( .D(n120), .CP(clk), .CDN(n23), .Q(c_state[10]) );
  dfcrq1 \c_state_reg[11]  ( .D(n119), .CP(clk), .CDN(n23), .Q(c_state[11]) );
  dfcrq1 \c_state_reg[8]  ( .D(n122), .CP(clk), .CDN(n21), .Q(c_state[8]) );
  dfcrq1 \cnt_reg[10]  ( .D(n104), .CP(clk), .CDN(n24), .Q(cnt[10]) );
  dfcrq1 \filter_cnt_reg[8]  ( .D(N100), .CP(clk), .CDN(n19), .Q(filter_cnt[8]) );
  dfcrq1 \filter_cnt_reg[7]  ( .D(N99), .CP(clk), .CDN(n20), .Q(filter_cnt[7])
         );
  dfcrq1 \cnt_reg[9]  ( .D(n105), .CP(clk), .CDN(n24), .Q(cnt[9]) );
  dfcrq1 \filter_cnt_reg[6]  ( .D(N98), .CP(clk), .CDN(n20), .Q(filter_cnt[6])
         );
  dfcrq1 \cnt_reg[8]  ( .D(n106), .CP(clk), .CDN(n24), .Q(cnt[8]) );
  dfcrq1 \filter_cnt_reg[5]  ( .D(N97), .CP(clk), .CDN(n20), .Q(filter_cnt[5])
         );
  dfcrq1 \cnt_reg[7]  ( .D(n107), .CP(clk), .CDN(n24), .Q(cnt[7]) );
  dfcrq1 \filter_cnt_reg[4]  ( .D(N96), .CP(clk), .CDN(n19), .Q(filter_cnt[4])
         );
  dfcrq1 \cnt_reg[6]  ( .D(n108), .CP(clk), .CDN(n24), .Q(cnt[6]) );
  dfcrq1 \filter_cnt_reg[3]  ( .D(N95), .CP(clk), .CDN(n19), .Q(filter_cnt[3])
         );
  dfcrq1 \cnt_reg[5]  ( .D(n109), .CP(clk), .CDN(n24), .Q(cnt[5]) );
  dfcrq1 \filter_cnt_reg[2]  ( .D(N94), .CP(clk), .CDN(n19), .Q(filter_cnt[2])
         );
  dfcrq1 \cnt_reg[4]  ( .D(n110), .CP(clk), .CDN(n24), .Q(cnt[4]) );
  dfcrq1 \filter_cnt_reg[1]  ( .D(N93), .CP(clk), .CDN(n19), .Q(filter_cnt[1])
         );
  dfcrq1 \filter_cnt_reg[0]  ( .D(N92), .CP(clk), .CDN(n19), .Q(filter_cnt[0])
         );
  dfcrq1 \cnt_reg[3]  ( .D(n111), .CP(clk), .CDN(n24), .Q(cnt[3]) );
  dfcrq1 \cnt_reg[2]  ( .D(n112), .CP(clk), .CDN(n24), .Q(cnt[2]) );
  dfcrq1 \cnt_reg[1]  ( .D(n113), .CP(clk), .CDN(n21), .Q(cnt[1]) );
  dfcrq1 \cnt_reg[0]  ( .D(n114), .CP(clk), .CDN(n23), .Q(cnt[0]) );
  buffd1 U20 ( .I(n13), .Z(n24) );
  buffd1 U21 ( .I(n13), .Z(n23) );
  buffd1 U26 ( .I(n12), .Z(n21) );
  buffd1 U29 ( .I(n12), .Z(n20) );
  buffd1 U31 ( .I(n12), .Z(n19) );
  buffd1 U35 ( .I(n13), .Z(n25) );
  buffd1 U36 ( .I(n15), .Z(n26) );
  buffd1 U38 ( .I(nReset), .Z(n15) );
  buffd1 U42 ( .I(nReset), .Z(n12) );
  buffd1 U43 ( .I(nReset), .Z(n13) );
  inv0d0 U45 ( .I(n43), .ZN(n75) );
  inv0d0 U51 ( .I(n16), .ZN(n56) );
  nr02d1 U52 ( .A1(n53), .A2(N66), .ZN(n3) );
  buffd1 U55 ( .I(n4), .Z(n31) );
  nr02d1 U58 ( .A1(n3), .A2(N66), .ZN(n4) );
  nd02d1 U59 ( .A1(n32), .A2(n30), .ZN(n2) );
  inv0d0 U60 ( .I(n11), .ZN(n30) );
  inv0d0 U63 ( .I(n50), .ZN(n36) );
  inv0d0 U65 ( .I(n11), .ZN(n27) );
  inv0d0 U66 ( .I(n32), .ZN(n51) );
  inv0d0 U67 ( .I(n11), .ZN(n29) );
  nd02d1 U71 ( .A1(n154), .A2(n5), .ZN(N125) );
  nd02d1 U78 ( .A1(n8), .A2(n154), .ZN(N124) );
  inv0d0 U82 ( .I(cmd[2]), .ZN(n153) );
  nr02d1 U83 ( .A1(n39), .A2(c_state[0]), .ZN(n16) );
  inv0d0 U85 ( .I(cmd[0]), .ZN(n151) );
  nd03d1 U98 ( .A1(n18), .A2(n7), .A3(cmd[1]), .ZN(n22) );
  nd03d1 U106 ( .A1(n59), .A2(n154), .A3(n60), .ZN(N66) );
  nd03d1 U107 ( .A1(n144), .A2(n72), .A3(n143), .ZN(n42) );
  inv0d0 U109 ( .I(n2), .ZN(n52) );
  nr02d1 U110 ( .A1(rst), .A2(al), .ZN(n32) );
  an02d1 U111 ( .A1(n85), .A2(n32), .Z(n11) );
  nr02d1 U112 ( .A1(n77), .A2(rst), .ZN(n50) );
  an02d1 U113 ( .A1(n50), .A2(ena), .Z(n57) );
  inv0d0 U116 ( .I(cSCL[1]), .ZN(n34) );
  inv0d0 U117 ( .I(cSDA[1]), .ZN(n33) );
  inv0d0 U118 ( .I(c_state[1]), .ZN(n142) );
  inv0d0 U124 ( .I(c_state[2]), .ZN(n143) );
  an03d1 U126 ( .A1(n77), .A2(n154), .A3(ena), .Z(n58) );
  inv0d0 U127 ( .I(slave_wait), .ZN(n53) );
  inv0d0 U128 ( .I(c_state[4]), .ZN(n145) );
  inv0d0 U132 ( .I(c_state[8]), .ZN(n73) );
  inv0d1 U133 ( .I(rst), .ZN(n154) );
  nr02d1 U134 ( .A1(c_state[8]), .A2(c_state[4]), .ZN(n66) );
  inv0d0 U135 ( .I(c_state[3]), .ZN(n144) );
  inv0d0 U137 ( .I(c_state[7]), .ZN(n72) );
  nr02d1 U140 ( .A1(cmd[0]), .A2(cmd[2]), .ZN(n18) );
  inv0d0 U148 ( .I(cmd[3]), .ZN(n152) );
  inv0d0 U149 ( .I(c_state[0]), .ZN(n141) );
  nd02d1 U150 ( .A1(sSCL), .A2(n87), .ZN(n55) );
  inv0d0 U151 ( .I(n74), .ZN(n40) );
  inv0d0 U157 ( .I(n76), .ZN(n49) );
  inv0d0 U158 ( .I(cmd_stop), .ZN(n54) );
  inv0d0 U159 ( .I(c_state[16]), .ZN(n61) );
  inv0d0 U160 ( .I(c_state[12]), .ZN(n149) );
  inv0d0 U161 ( .I(cmd[1]), .ZN(n150) );
  inv0d0 U162 ( .I(c_state[9]), .ZN(n146) );
  inv0d0 U163 ( .I(c_state[11]), .ZN(n148) );
  inv0d0 U164 ( .I(c_state[10]), .ZN(n147) );
  inv0d0 U165 ( .I(c_state[5]), .ZN(n67) );
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
  wire   core_ack, core_txd, core_rxd, ld, shift, N104, N105, N106, N107, n1,
         n2, n3, n4, n5, n6, n7, n8, n28, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n34, n99;
  wire   [3:0] core_cmd;
  wire   [2:0] dcnt;
  wire   [4:0] c_state;
  assign scl_o = 1'b0;
  assign sda_o = 1'b0;

  dfcrn1 \c_state_reg[4]  ( .D(n97), .CP(clk), .CDN(n9), .QN(n28) );
  dfcrn1 \sr_reg[0]  ( .D(n85), .CP(clk), .CDN(n9), .QN(n8) );
  dfcrn1 \sr_reg[1]  ( .D(n86), .CP(clk), .CDN(n9), .QN(n7) );
  dfcrn1 \sr_reg[2]  ( .D(n84), .CP(clk), .CDN(n9), .QN(n6) );
  dfcrn1 \sr_reg[3]  ( .D(n83), .CP(clk), .CDN(n9), .QN(n5) );
  dfcrn1 \sr_reg[4]  ( .D(n82), .CP(clk), .CDN(n9), .QN(n4) );
  dfcrn1 \sr_reg[5]  ( .D(n81), .CP(clk), .CDN(n9), .QN(n3) );
  dfcrn1 \sr_reg[6]  ( .D(n80), .CP(clk), .CDN(n9), .QN(n2) );
  dfcrn1 \sr_reg[7]  ( .D(n79), .CP(clk), .CDN(n9), .QN(n1) );
  an02d1 U18 ( .A1(n62), .A2(write), .Z(n61) );
  nd04d1 U27 ( .A1(n20), .A2(n28), .A3(n22), .A4(n73), .ZN(n69) );
  nr03d1 U30 ( .A1(dcnt[1]), .A2(dcnt[2]), .A3(dcnt[0]), .ZN(n56) );
  oan211d1 U59 ( .C1(n35), .C2(n10), .B(n36), .A(n13), .ZN(n78) );
  oai21d1 U60 ( .B1(n37), .B2(n1), .A(n38), .ZN(n79) );
  aoi22d1 U61 ( .A1(dout[6]), .A2(n16), .B1(din[7]), .B2(n23), .ZN(n38) );
  oai21d1 U62 ( .B1(n2), .B2(n37), .A(n39), .ZN(n80) );
  aoi22d1 U63 ( .A1(dout[5]), .A2(n16), .B1(din[6]), .B2(n23), .ZN(n39) );
  oai21d1 U64 ( .B1(n37), .B2(n3), .A(n40), .ZN(n81) );
  aoi22d1 U65 ( .A1(dout[4]), .A2(n16), .B1(din[5]), .B2(n23), .ZN(n40) );
  oai21d1 U66 ( .B1(n37), .B2(n4), .A(n41), .ZN(n82) );
  aoi22d1 U67 ( .A1(dout[3]), .A2(n16), .B1(din[4]), .B2(n23), .ZN(n41) );
  oai21d1 U68 ( .B1(n37), .B2(n5), .A(n42), .ZN(n83) );
  aoi22d1 U69 ( .A1(dout[2]), .A2(n16), .B1(din[3]), .B2(n23), .ZN(n42) );
  oai21d1 U70 ( .B1(n37), .B2(n6), .A(n43), .ZN(n84) );
  aoi22d1 U71 ( .A1(dout[1]), .A2(n16), .B1(din[2]), .B2(n23), .ZN(n43) );
  oai21d1 U72 ( .B1(n37), .B2(n8), .A(n44), .ZN(n85) );
  aoi22d1 U73 ( .A1(n16), .A2(core_rxd), .B1(din[0]), .B2(n23), .ZN(n44) );
  oai21d1 U74 ( .B1(n37), .B2(n7), .A(n45), .ZN(n86) );
  aoi22d1 U75 ( .A1(dout[0]), .A2(n16), .B1(din[1]), .B2(n23), .ZN(n45) );
  aoi22d1 U76 ( .A1(n51), .A2(c_state[1]), .B1(core_cmd[3]), .B2(n52), .ZN(n50) );
  aoi22d1 U77 ( .A1(n51), .A2(c_state[2]), .B1(core_cmd[2]), .B2(n52), .ZN(n55) );
  oaim22d1 U78 ( .A1(n58), .A2(n57), .B1(core_cmd[1]), .B2(n52), .ZN(n89) );
  oaim21d1 U79 ( .B1(core_cmd[0]), .B2(n52), .A(n59), .ZN(n90) );
  oai211d1 U80 ( .C1(n20), .C2(n12), .A(n54), .B(n49), .ZN(n91) );
  oai21d1 U81 ( .B1(n60), .B2(n22), .A(n53), .ZN(n92) );
  oai211d1 U82 ( .C1(n61), .C2(c_state[0]), .A(n99), .B(n11), .ZN(n53) );
  oai21d1 U83 ( .B1(n60), .B2(n21), .A(n48), .ZN(n93) );
  oai211d1 U84 ( .C1(n62), .C2(c_state[0]), .A(n11), .B(read), .ZN(n48) );
  aoi21d1 U85 ( .B1(n19), .B2(n63), .A(n52), .ZN(n60) );
  oai211d1 U86 ( .C1(n47), .C2(n19), .A(n46), .B(n64), .ZN(n94) );
  aon211d1 U87 ( .C1(dcnt[1]), .C2(n16), .B(n65), .A(dcnt[2]), .ZN(n64) );
  oai211d1 U88 ( .C1(n24), .C2(n66), .A(n67), .B(n46), .ZN(n95) );
  oai221d1 U89 ( .B1(dcnt[1]), .B2(n67), .C1(n17), .C2(n18), .A(n46), .ZN(n96)
         );
  oai21d1 U90 ( .B1(n47), .B2(n24), .A(n66), .ZN(n65) );
  nd13d1 U91 ( .A1(ld), .A2(shift), .A3(n34), .ZN(n47) );
  oai22d1 U92 ( .A1(n12), .A2(n28), .B1(n58), .B2(n57), .ZN(n97) );
  aoi21d1 U93 ( .B1(c_state[3]), .B2(stop), .A(n68), .ZN(n58) );
  oai21d1 U94 ( .B1(n12), .B2(n14), .A(n59), .ZN(n98) );
  aoi221d1 U95 ( .B1(n69), .B2(core_ack), .C1(n15), .C2(n70), .A(n13), .ZN(n52) );
  oan211d1 U96 ( .C1(stop), .C2(n20), .B(n28), .A(n71), .ZN(N107) );
  oai21d1 U97 ( .B1(n14), .B2(n71), .A(n72), .ZN(N106) );
  aoim31d1 U98 ( .B1(stop), .B2(write), .B3(read), .A(cmd_ack), .ZN(n70) );
  oan211d1 U99 ( .C1(n56), .C2(n22), .B(n21), .A(n71), .ZN(N105) );
  aoi31d1 U100 ( .B1(n74), .B2(n35), .B3(n75), .A(n13), .ZN(N104) );
  oai21d1 U101 ( .B1(n76), .B2(n77), .A(dout[7]), .ZN(n75) );
  oai22d1 U102 ( .A1(core_ack), .A2(n21), .B1(c_state[3]), .B2(c_state[1]), 
        .ZN(n77) );
  aon211d1 U103 ( .C1(c_state[1]), .C2(core_ack), .B(c_state[3]), .A(ack_in), 
        .ZN(n74) );
  i2c_master_bit_ctrl bit_controller ( .clk(clk), .rst(rst), .nReset(n9), 
        .ena(ena), .clk_cnt(clk_cnt), .cmd(core_cmd), .cmd_ack(core_ack), 
        .busy(i2c_busy), .al(i2c_al), .din(core_txd), .dout(core_rxd), .scl_i(
        scl_i), .scl_oen(scl_oen), .sda_i(sda_i), .sda_oen(sda_oen), .VDD(VDD), 
        .VSS(VSS) );
  dfcrq1 ack_out_reg ( .D(n78), .CP(clk), .CDN(n9), .Q(ack_out) );
  dfcrq1 \core_cmd_reg[1]  ( .D(n89), .CP(clk), .CDN(n9), .Q(core_cmd[1]) );
  dfcrq1 \core_cmd_reg[0]  ( .D(n90), .CP(clk), .CDN(n9), .Q(core_cmd[0]) );
  dfcrq1 \core_cmd_reg[2]  ( .D(n88), .CP(clk), .CDN(n9), .Q(core_cmd[2]) );
  dfcrq1 \core_cmd_reg[3]  ( .D(n87), .CP(clk), .CDN(n9), .Q(core_cmd[3]) );
  dfcrq1 core_txd_reg ( .D(N104), .CP(clk), .CDN(n9), .Q(core_txd) );
  dfcrq1 shift_reg ( .D(N105), .CP(clk), .CDN(n9), .Q(shift) );
  dfcrq1 ld_reg ( .D(N106), .CP(clk), .CDN(n9), .Q(ld) );
  dfcrq1 \dcnt_reg[0]  ( .D(n95), .CP(clk), .CDN(n9), .Q(dcnt[0]) );
  dfcrq1 \dcnt_reg[2]  ( .D(n94), .CP(clk), .CDN(n9), .Q(dcnt[2]) );
  dfcrq1 \dcnt_reg[1]  ( .D(n96), .CP(clk), .CDN(n9), .Q(dcnt[1]) );
  dfcrq1 cmd_ack_reg ( .D(N107), .CP(clk), .CDN(n9), .Q(cmd_ack) );
  dfcrq1 \c_state_reg[0]  ( .D(n98), .CP(clk), .CDN(n9), .Q(c_state[0]) );
  dfcrq1 \c_state_reg[1]  ( .D(n93), .CP(clk), .CDN(n9), .Q(c_state[1]) );
  dfcrq1 \c_state_reg[2]  ( .D(n92), .CP(clk), .CDN(n9), .Q(c_state[2]) );
  dfcrq1 \c_state_reg[3]  ( .D(n91), .CP(clk), .CDN(n9), .Q(c_state[3]) );
  buffd3 U3 ( .I(nReset), .Z(n9) );
  inv0d0 U4 ( .I(n57), .ZN(n11) );
  inv0d0 U5 ( .I(n52), .ZN(n12) );
  nd02d1 U6 ( .A1(n63), .A2(n12), .ZN(n57) );
  inv0d0 U7 ( .I(n69), .ZN(n15) );
  nr02d1 U8 ( .A1(n56), .A2(n57), .ZN(n51) );
  inv0d0 U9 ( .I(n63), .ZN(n13) );
  inv0d0 U10 ( .I(n56), .ZN(n19) );
  nd02d1 U11 ( .A1(n47), .A2(n34), .ZN(n66) );
  nd03d1 U12 ( .A1(n46), .A2(n34), .A3(n47), .ZN(n37) );
  inv0d0 U13 ( .I(n47), .ZN(n16) );
  nd02d1 U14 ( .A1(n16), .A2(n24), .ZN(n67) );
  nd03d1 U15 ( .A1(n15), .A2(n63), .A3(n70), .ZN(n72) );
  inv0d0 U16 ( .I(n46), .ZN(n23) );
  nr02d1 U17 ( .A1(c_state[1]), .A2(c_state[0]), .ZN(n73) );
  inv0d0 U19 ( .I(read), .ZN(n99) );
  inv0d0 U20 ( .I(c_state[3]), .ZN(n20) );
  inv0d0 U21 ( .I(c_state[2]), .ZN(n22) );
  nd03d1 U22 ( .A1(n53), .A2(n54), .A3(n55), .ZN(n88) );
  nd03d1 U23 ( .A1(n48), .A2(n49), .A3(n50), .ZN(n87) );
  nd03d1 U24 ( .A1(n11), .A2(n56), .A3(c_state[2]), .ZN(n49) );
  nd03d1 U25 ( .A1(n11), .A2(n56), .A3(c_state[1]), .ZN(n54) );
  nd03d1 U26 ( .A1(n11), .A2(n15), .A3(start), .ZN(n59) );
  nr02d1 U28 ( .A1(i2c_al), .A2(rst), .ZN(n63) );
  inv0d0 U29 ( .I(dcnt[1]), .ZN(n18) );
  inv0d0 U31 ( .I(n65), .ZN(n17) );
  nr02d1 U32 ( .A1(n69), .A2(start), .ZN(n62) );
  nr13d1 U33 ( .A1(n62), .A2(read), .A3(write), .ZN(n68) );
  inv0d0 U34 ( .I(rst), .ZN(n34) );
  inv0d0 U35 ( .I(dcnt[0]), .ZN(n24) );
  nd02d1 U36 ( .A1(n63), .A2(core_ack), .ZN(n71) );
  inv0d0 U37 ( .I(core_rxd), .ZN(n10) );
  nd02d1 U38 ( .A1(ack_out), .A2(n35), .ZN(n36) );
  nd03d1 U39 ( .A1(n22), .A2(n28), .A3(n14), .ZN(n76) );
  nd02d1 U40 ( .A1(ld), .A2(n34), .ZN(n46) );
  inv0d0 U41 ( .I(c_state[1]), .ZN(n21) );
  inv0d0 U42 ( .I(c_state[0]), .ZN(n14) );
  nd02d1 U43 ( .A1(core_ack), .A2(c_state[3]), .ZN(n35) );
  inv0d0 U44 ( .I(n6), .ZN(dout[2]) );
  inv0d0 U45 ( .I(n5), .ZN(dout[3]) );
  inv0d0 U46 ( .I(n4), .ZN(dout[4]) );
  inv0d0 U47 ( .I(n1), .ZN(dout[7]) );
  inv0d0 U48 ( .I(n7), .ZN(dout[1]) );
  inv0d0 U49 ( .I(n3), .ZN(dout[5]) );
  inv0d0 U50 ( .I(n8), .ZN(dout[0]) );
  inv0d0 U51 ( .I(n2), .ZN(dout[6]) );
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
  wire   N15, sr_1, sr_0, N38, N39, N40, N41, N42, N43, N44, N45, N54, N55,
         N56, N57, N58, N59, N60, N61, N62, N63, N64, N73, done, i2c_al, N87,
         irxack, N100, N101, N102, N106, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87;
  wire   [15:0] prer;
  wire   [7:0] ctr;
  wire   [7:0] rxr;
  wire   [7:5] sr;
  wire   [7:0] txr;
  wire   [7:0] cr;
  assign scl_pad_o = 1'b0;
  assign sda_pad_o = 1'b0;

  decrq1 \txr_reg[7]  ( .D(n81), .ENN(n73), .CP(wb_clk_i), .CDN(arst_i), .Q(
        txr[7]) );
  decrq1 \txr_reg[6]  ( .D(n80), .ENN(n73), .CP(wb_clk_i), .CDN(n66), .Q(
        txr[6]) );
  decrq1 \txr_reg[5]  ( .D(n79), .ENN(n73), .CP(wb_clk_i), .CDN(arst_i), .Q(
        txr[5]) );
  decrq1 \txr_reg[4]  ( .D(n78), .ENN(n73), .CP(wb_clk_i), .CDN(n66), .Q(
        txr[4]) );
  decrq1 \txr_reg[3]  ( .D(n77), .ENN(n73), .CP(wb_clk_i), .CDN(arst_i), .Q(
        txr[3]) );
  decrq1 \txr_reg[2]  ( .D(n76), .ENN(n73), .CP(wb_clk_i), .CDN(n66), .Q(
        txr[2]) );
  decrq1 \txr_reg[1]  ( .D(n75), .ENN(n73), .CP(wb_clk_i), .CDN(arst_i), .Q(
        txr[1]) );
  decrq1 \txr_reg[0]  ( .D(n74), .ENN(n73), .CP(wb_clk_i), .CDN(n66), .Q(
        txr[0]) );
  deprq1 \prer_reg[15]  ( .D(N62), .ENN(n71), .CP(wb_clk_i), .SDN(arst_i), .Q(
        prer[15]) );
  deprq1 \prer_reg[14]  ( .D(N61), .ENN(n71), .CP(wb_clk_i), .SDN(n66), .Q(
        prer[14]) );
  deprq1 \prer_reg[13]  ( .D(N60), .ENN(n71), .CP(wb_clk_i), .SDN(arst_i), .Q(
        prer[13]) );
  deprq1 \prer_reg[12]  ( .D(N59), .ENN(n71), .CP(wb_clk_i), .SDN(arst_i), .Q(
        prer[12]) );
  deprq1 \prer_reg[11]  ( .D(N58), .ENN(n71), .CP(wb_clk_i), .SDN(n66), .Q(
        prer[11]) );
  deprq1 \prer_reg[10]  ( .D(N57), .ENN(n71), .CP(wb_clk_i), .SDN(n66), .Q(
        prer[10]) );
  deprq1 \prer_reg[9]  ( .D(N56), .ENN(n71), .CP(wb_clk_i), .SDN(n66), .Q(
        prer[9]) );
  deprq1 \prer_reg[8]  ( .D(N55), .ENN(n71), .CP(wb_clk_i), .SDN(arst_i), .Q(
        prer[8]) );
  deprq1 \prer_reg[7]  ( .D(N62), .ENN(n70), .CP(wb_clk_i), .SDN(arst_i), .Q(
        prer[7]) );
  deprq1 \prer_reg[6]  ( .D(N61), .ENN(n70), .CP(wb_clk_i), .SDN(n66), .Q(
        prer[6]) );
  deprq1 \prer_reg[5]  ( .D(N60), .ENN(n70), .CP(wb_clk_i), .SDN(n66), .Q(
        prer[5]) );
  deprq1 \prer_reg[4]  ( .D(N59), .ENN(n70), .CP(wb_clk_i), .SDN(n66), .Q(
        prer[4]) );
  deprq1 \prer_reg[3]  ( .D(N58), .ENN(n70), .CP(wb_clk_i), .SDN(arst_i), .Q(
        prer[3]) );
  deprq1 \prer_reg[2]  ( .D(N57), .ENN(n70), .CP(wb_clk_i), .SDN(arst_i), .Q(
        prer[2]) );
  deprq1 \prer_reg[1]  ( .D(N56), .ENN(n70), .CP(wb_clk_i), .SDN(arst_i), .Q(
        prer[1]) );
  deprq1 \prer_reg[0]  ( .D(N55), .ENN(n70), .CP(wb_clk_i), .SDN(n66), .Q(
        prer[0]) );
  decrq1 \ctr_reg[7]  ( .D(n81), .ENN(n72), .CP(wb_clk_i), .CDN(n66), .Q(
        ctr[7]) );
  decrq1 \ctr_reg[6]  ( .D(n80), .ENN(n72), .CP(wb_clk_i), .CDN(arst_i), .Q(
        ctr[6]) );
  decrq1 \ctr_reg[5]  ( .D(n79), .ENN(n72), .CP(wb_clk_i), .CDN(arst_i), .Q(
        ctr[5]) );
  decrq1 \ctr_reg[4]  ( .D(n78), .ENN(n72), .CP(wb_clk_i), .CDN(n66), .Q(
        ctr[4]) );
  decrq1 \ctr_reg[3]  ( .D(n77), .ENN(n72), .CP(wb_clk_i), .CDN(n65), .Q(
        ctr[3]) );
  decrq1 \ctr_reg[2]  ( .D(n76), .ENN(n72), .CP(wb_clk_i), .CDN(n66), .Q(
        ctr[2]) );
  decrq1 \ctr_reg[1]  ( .D(n75), .ENN(n72), .CP(wb_clk_i), .CDN(n65), .Q(
        ctr[1]) );
  decrq1 \ctr_reg[0]  ( .D(n74), .ENN(n72), .CP(wb_clk_i), .CDN(arst_i), .Q(
        ctr[0]) );
  decrq1 \cr_reg[3]  ( .D(n77), .ENN(n25), .CP(wb_clk_i), .CDN(arst_i), .Q(
        cr[3]) );
  decrq1 \cr_reg[4]  ( .D(n78), .ENN(n68), .CP(wb_clk_i), .CDN(n66), .Q(cr[4])
         );
  decrq1 \cr_reg[5]  ( .D(n79), .ENN(n68), .CP(wb_clk_i), .CDN(n65), .Q(cr[5])
         );
  decrq1 \cr_reg[6]  ( .D(n80), .ENN(n68), .CP(wb_clk_i), .CDN(arst_i), .Q(
        cr[6]) );
  decrq1 \cr_reg[7]  ( .D(n81), .ENN(n68), .CP(wb_clk_i), .CDN(n65), .Q(cr[7])
         );
  decrq1 \cr_reg[2]  ( .D(n76), .ENN(n63), .CP(wb_clk_i), .CDN(n66), .Q(cr[2])
         );
  decrq1 \cr_reg[1]  ( .D(n75), .ENN(n63), .CP(wb_clk_i), .CDN(n66), .Q(cr[1])
         );
  decrq1 \cr_reg[0]  ( .D(n74), .ENN(n63), .CP(wb_clk_i), .CDN(arst_i), .Q(
        cr[0]) );
  an02d1 U10 ( .A1(wb_we_i), .A2(wb_ack_o), .Z(n23) );
  nr03d1 U39 ( .A1(n83), .A2(wb_adr_i[1]), .A3(n85), .ZN(n44) );
  nr03d1 U40 ( .A1(n83), .A2(wb_adr_i[0]), .A3(n84), .ZN(n43) );
  nr03d1 U42 ( .A1(wb_adr_i[0]), .A2(wb_adr_i[1]), .A3(n83), .ZN(n26) );
  an03d1 U44 ( .A1(sr_0), .A2(n82), .A3(ctr[6]), .Z(N106) );
  an02d1 U46 ( .A1(irxack), .A2(n82), .Z(N100) );
  aon211d1 U62 ( .C1(n86), .C2(sr[5]), .B(i2c_al), .A(n82), .ZN(n22) );
  oai21d1 U63 ( .B1(n23), .B2(n24), .A(n25), .ZN(N87) );
  aoi31d1 U64 ( .B1(n26), .B2(n27), .B3(ctr[7]), .A(wb_rst_i), .ZN(n25) );
  oaim21d1 U65 ( .B1(n27), .B2(n28), .A(n82), .ZN(N73) );
  oaim21d1 U66 ( .B1(n27), .B2(n37), .A(n82), .ZN(N64) );
  oaim21d1 U67 ( .B1(n27), .B2(n38), .A(n82), .ZN(N63) );
  oaim21d1 U68 ( .B1(n27), .B2(n39), .A(n82), .ZN(N54) );
  aoi222d1 U69 ( .A1(prer[7]), .A2(n39), .B1(n37), .B2(ctr[7]), .C1(prer[15]), 
        .C2(n38), .ZN(n42) );
  aoi22d1 U70 ( .A1(cr[7]), .A2(n43), .B1(txr[7]), .B2(n44), .ZN(n41) );
  aoi22d1 U71 ( .A1(sr[7]), .A2(n26), .B1(rxr[7]), .B2(n28), .ZN(n40) );
  aoi222d1 U72 ( .A1(prer[6]), .A2(n39), .B1(ctr[6]), .B2(n37), .C1(prer[14]), 
        .C2(n38), .ZN(n47) );
  aoi22d1 U73 ( .A1(cr[6]), .A2(n43), .B1(txr[6]), .B2(n44), .ZN(n46) );
  aoi22d1 U74 ( .A1(sr[6]), .A2(n26), .B1(rxr[6]), .B2(n28), .ZN(n45) );
  aoi222d1 U75 ( .A1(prer[5]), .A2(n39), .B1(ctr[5]), .B2(n37), .C1(prer[13]), 
        .C2(n38), .ZN(n50) );
  aoi22d1 U76 ( .A1(cr[5]), .A2(n43), .B1(txr[5]), .B2(n44), .ZN(n49) );
  aoi22d1 U77 ( .A1(n26), .A2(sr[5]), .B1(rxr[5]), .B2(n28), .ZN(n48) );
  aoi222d1 U78 ( .A1(rxr[4]), .A2(n28), .B1(cr[4]), .B2(n43), .C1(txr[4]), 
        .C2(n44), .ZN(n52) );
  aoi222d1 U79 ( .A1(prer[4]), .A2(n39), .B1(ctr[4]), .B2(n37), .C1(prer[12]), 
        .C2(n38), .ZN(n51) );
  aoi222d1 U80 ( .A1(rxr[3]), .A2(n28), .B1(cr[3]), .B2(n43), .C1(txr[3]), 
        .C2(n44), .ZN(n54) );
  aoi222d1 U81 ( .A1(prer[3]), .A2(n39), .B1(ctr[3]), .B2(n37), .C1(prer[11]), 
        .C2(n38), .ZN(n53) );
  aoi222d1 U82 ( .A1(rxr[2]), .A2(n28), .B1(cr[2]), .B2(n43), .C1(txr[2]), 
        .C2(n44), .ZN(n56) );
  aoi222d1 U83 ( .A1(prer[2]), .A2(n39), .B1(ctr[2]), .B2(n37), .C1(prer[10]), 
        .C2(n38), .ZN(n55) );
  aoi222d1 U84 ( .A1(prer[1]), .A2(n39), .B1(ctr[1]), .B2(n37), .C1(prer[9]), 
        .C2(n38), .ZN(n59) );
  aoi22d1 U85 ( .A1(cr[1]), .A2(n43), .B1(txr[1]), .B2(n44), .ZN(n58) );
  aoi22d1 U86 ( .A1(sr_1), .A2(n26), .B1(rxr[1]), .B2(n28), .ZN(n57) );
  aoi222d1 U87 ( .A1(prer[0]), .A2(n39), .B1(ctr[0]), .B2(n37), .C1(prer[8]), 
        .C2(n38), .ZN(n62) );
  aoi22d1 U88 ( .A1(cr[0]), .A2(n43), .B1(txr[0]), .B2(n44), .ZN(n61) );
  aoi22d1 U89 ( .A1(sr_0), .A2(n26), .B1(rxr[0]), .B2(n28), .ZN(n60) );
  aoi211d1 U90 ( .C1(n24), .C2(n87), .A(wb_rst_i), .B(cr[0]), .ZN(N102) );
  aoim21d1 U91 ( .B1(cr[5]), .B2(cr[4]), .A(wb_rst_i), .ZN(N101) );
  i2c_master_byte_ctrl byte_controller ( .clk(wb_clk_i), .rst(wb_rst_i), 
        .nReset(n65), .ena(ctr[7]), .clk_cnt(prer), .start(cr[7]), .stop(cr[6]), .read(cr[5]), .write(cr[4]), .ack_in(cr[3]), .din(txr), .cmd_ack(done), 
        .ack_out(irxack), .dout(rxr), .i2c_busy(sr[6]), .i2c_al(i2c_al), 
        .scl_i(scl_pad_i), .scl_oen(scl_padoen_o), .sda_i(sda_pad_i), 
        .sda_oen(sda_padoen_o), .VDD(VDD), .VSS(VSS) );
  dfcrq1 rxack_reg ( .D(N100), .CP(wb_clk_i), .CDN(n65), .Q(sr[7]) );
  dfcrq1 tip_reg ( .D(N101), .CP(wb_clk_i), .CDN(n65), .Q(sr_1) );
  dfcrq1 al_reg ( .D(n69), .CP(wb_clk_i), .CDN(n65), .Q(sr[5]) );
  dfcrq1 irq_flag_reg ( .D(N102), .CP(wb_clk_i), .CDN(n65), .Q(sr_0) );
  dfnrq1 wb_ack_o_reg ( .D(N15), .CP(wb_clk_i), .Q(wb_ack_o) );
  dfnrq1 \wb_dat_o_reg[4]  ( .D(N42), .CP(wb_clk_i), .Q(wb_dat_o[4]) );
  dfnrq1 \wb_dat_o_reg[6]  ( .D(N44), .CP(wb_clk_i), .Q(wb_dat_o[6]) );
  dfnrq1 \wb_dat_o_reg[3]  ( .D(N41), .CP(wb_clk_i), .Q(wb_dat_o[3]) );
  dfnrq1 \wb_dat_o_reg[2]  ( .D(N40), .CP(wb_clk_i), .Q(wb_dat_o[2]) );
  dfnrq1 \wb_dat_o_reg[0]  ( .D(N38), .CP(wb_clk_i), .Q(wb_dat_o[0]) );
  dfnrq1 \wb_dat_o_reg[5]  ( .D(N43), .CP(wb_clk_i), .Q(wb_dat_o[5]) );
  dfnrq1 \wb_dat_o_reg[7]  ( .D(N45), .CP(wb_clk_i), .Q(wb_dat_o[7]) );
  dfnrq1 \wb_dat_o_reg[1]  ( .D(N39), .CP(wb_clk_i), .Q(wb_dat_o[1]) );
  dfcrq1 wb_inta_o_reg ( .D(N106), .CP(wb_clk_i), .CDN(n65), .Q(wb_inta_o) );
  inv0d0 U92 ( .I(N87), .ZN(n68) );
  an02d1 U93 ( .A1(n23), .A2(n25), .Z(n63) );
  inv0d0 U94 ( .I(N54), .ZN(n70) );
  inv0d0 U95 ( .I(N63), .ZN(n71) );
  inv0d0 U96 ( .I(N64), .ZN(n72) );
  inv0d0 U97 ( .I(N73), .ZN(n73) );
  nd02d1 U98 ( .A1(n82), .A2(n36), .ZN(N55) );
  nd02d1 U99 ( .A1(n82), .A2(n35), .ZN(N56) );
  nd02d1 U100 ( .A1(n82), .A2(n34), .ZN(N57) );
  nd02d1 U101 ( .A1(n82), .A2(n33), .ZN(N58) );
  nd02d1 U102 ( .A1(n82), .A2(n32), .ZN(N59) );
  nd02d1 U103 ( .A1(n82), .A2(n31), .ZN(N60) );
  nd02d1 U104 ( .A1(n82), .A2(n30), .ZN(N61) );
  nd02d1 U105 ( .A1(n82), .A2(n29), .ZN(N62) );
  inv0d0 U106 ( .I(n36), .ZN(n74) );
  inv0d0 U107 ( .I(n35), .ZN(n75) );
  inv0d0 U108 ( .I(n34), .ZN(n76) );
  inv0d0 U109 ( .I(n33), .ZN(n77) );
  inv0d0 U110 ( .I(n32), .ZN(n78) );
  inv0d0 U111 ( .I(n31), .ZN(n79) );
  inv0d0 U112 ( .I(n30), .ZN(n80) );
  inv0d0 U113 ( .I(n29), .ZN(n81) );
  inv0d1 U114 ( .I(n67), .ZN(n66) );
  inv0d1 U115 ( .I(n67), .ZN(n65) );
  nd02d1 U116 ( .A1(n55), .A2(n56), .ZN(N40) );
  nd02d1 U117 ( .A1(n53), .A2(n54), .ZN(N41) );
  nd02d1 U118 ( .A1(n51), .A2(n52), .ZN(N42) );
  inv0d0 U119 ( .I(wb_adr_i[2]), .ZN(n83) );
  inv0d0 U120 ( .I(wb_adr_i[0]), .ZN(n85) );
  nd03d1 U121 ( .A1(n48), .A2(n49), .A3(n50), .ZN(N43) );
  nd03d1 U122 ( .A1(n57), .A2(n58), .A3(n59), .ZN(N39) );
  nd03d1 U123 ( .A1(n40), .A2(n41), .A3(n42), .ZN(N45) );
  nd03d1 U124 ( .A1(n60), .A2(n61), .A3(n62), .ZN(N38) );
  nd03d1 U125 ( .A1(n45), .A2(n46), .A3(n47), .ZN(N44) );
  inv0d0 U126 ( .I(wb_adr_i[1]), .ZN(n84) );
  an03d1 U127 ( .A1(wb_ack_o), .A2(n82), .A3(wb_we_i), .Z(n27) );
  inv0d1 U128 ( .I(wb_rst_i), .ZN(n82) );
  nr02d1 U129 ( .A1(done), .A2(i2c_al), .ZN(n24) );
  nr03d1 U130 ( .A1(wb_adr_i[1]), .A2(wb_adr_i[2]), .A3(n85), .ZN(n38) );
  nr03d1 U131 ( .A1(wb_adr_i[0]), .A2(wb_adr_i[2]), .A3(n84), .ZN(n37) );
  nr03d1 U132 ( .A1(n85), .A2(wb_adr_i[2]), .A3(n84), .ZN(n28) );
  nd02d1 U133 ( .A1(wb_dat_i[0]), .A2(n27), .ZN(n36) );
  nd02d1 U134 ( .A1(wb_dat_i[1]), .A2(n27), .ZN(n35) );
  nd02d1 U135 ( .A1(wb_dat_i[2]), .A2(n27), .ZN(n34) );
  nd02d1 U136 ( .A1(wb_dat_i[3]), .A2(n27), .ZN(n33) );
  nd02d1 U137 ( .A1(wb_dat_i[4]), .A2(n27), .ZN(n32) );
  nd02d1 U138 ( .A1(wb_dat_i[5]), .A2(n27), .ZN(n31) );
  nd02d1 U139 ( .A1(wb_dat_i[6]), .A2(n27), .ZN(n30) );
  nd02d1 U140 ( .A1(wb_dat_i[7]), .A2(n27), .ZN(n29) );
  nr03d1 U141 ( .A1(wb_adr_i[1]), .A2(wb_adr_i[2]), .A3(wb_adr_i[0]), .ZN(n39)
         );
  inv0d0 U142 ( .I(n22), .ZN(n69) );
  inv0d0 U143 ( .I(cr[7]), .ZN(n86) );
  inv0d0 U144 ( .I(sr_0), .ZN(n87) );
  nr23d1 U145 ( .A1(wb_cyc_i), .A2(wb_stb_i), .A3(wb_ack_o), .ZN(N15) );
  inv0d0 U146 ( .I(arst_i), .ZN(n67) );
endmodule

