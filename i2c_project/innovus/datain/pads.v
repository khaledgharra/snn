
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

