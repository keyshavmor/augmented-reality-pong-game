// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Fri Jun  8 16:01:58 2018
// Host        : morita running 64-bit Ubuntu 16.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/lina/Dokumente/TUB/SoSe2018/AES/audio_game/audio_game.srcs/sources_1/bd/system/ip/system_xlconstant_0_0/system_xlconstant_0_0_stub.v
// Design      : system_xlconstant_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xlconstant_v1_1_4_xlconstant,Vivado 2018.1" *)
module system_xlconstant_0_0(dout)
/* synthesis syn_black_box black_box_pad_pin="dout[1:0]" */;
  output [1:0]dout;
endmodule
