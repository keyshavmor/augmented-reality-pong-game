// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Fri Jun  8 15:52:12 2018
// Host        : morita running 64-bit Ubuntu 16.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_nco_0_0_stub.v
// Design      : system_nco_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "nco_top,Vivado 2018.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_AXI4LiteS_AWADDR, 
  s_axi_AXI4LiteS_AWVALID, s_axi_AXI4LiteS_AWREADY, s_axi_AXI4LiteS_WDATA, 
  s_axi_AXI4LiteS_WSTRB, s_axi_AXI4LiteS_WVALID, s_axi_AXI4LiteS_WREADY, 
  s_axi_AXI4LiteS_BRESP, s_axi_AXI4LiteS_BVALID, s_axi_AXI4LiteS_BREADY, 
  s_axi_AXI4LiteS_ARADDR, s_axi_AXI4LiteS_ARVALID, s_axi_AXI4LiteS_ARREADY, 
  s_axi_AXI4LiteS_RDATA, s_axi_AXI4LiteS_RRESP, s_axi_AXI4LiteS_RVALID, 
  s_axi_AXI4LiteS_RREADY, aclk, aresetn)
/* synthesis syn_black_box black_box_pad_pin="s_axi_AXI4LiteS_AWADDR[4:0],s_axi_AXI4LiteS_AWVALID,s_axi_AXI4LiteS_AWREADY,s_axi_AXI4LiteS_WDATA[31:0],s_axi_AXI4LiteS_WSTRB[3:0],s_axi_AXI4LiteS_WVALID,s_axi_AXI4LiteS_WREADY,s_axi_AXI4LiteS_BRESP[1:0],s_axi_AXI4LiteS_BVALID,s_axi_AXI4LiteS_BREADY,s_axi_AXI4LiteS_ARADDR[4:0],s_axi_AXI4LiteS_ARVALID,s_axi_AXI4LiteS_ARREADY,s_axi_AXI4LiteS_RDATA[31:0],s_axi_AXI4LiteS_RRESP[1:0],s_axi_AXI4LiteS_RVALID,s_axi_AXI4LiteS_RREADY,aclk,aresetn" */;
  input [4:0]s_axi_AXI4LiteS_AWADDR;
  input s_axi_AXI4LiteS_AWVALID;
  output s_axi_AXI4LiteS_AWREADY;
  input [31:0]s_axi_AXI4LiteS_WDATA;
  input [3:0]s_axi_AXI4LiteS_WSTRB;
  input s_axi_AXI4LiteS_WVALID;
  output s_axi_AXI4LiteS_WREADY;
  output [1:0]s_axi_AXI4LiteS_BRESP;
  output s_axi_AXI4LiteS_BVALID;
  input s_axi_AXI4LiteS_BREADY;
  input [4:0]s_axi_AXI4LiteS_ARADDR;
  input s_axi_AXI4LiteS_ARVALID;
  output s_axi_AXI4LiteS_ARREADY;
  output [31:0]s_axi_AXI4LiteS_RDATA;
  output [1:0]s_axi_AXI4LiteS_RRESP;
  output s_axi_AXI4LiteS_RVALID;
  input s_axi_AXI4LiteS_RREADY;
  input aclk;
  input aresetn;
endmodule
