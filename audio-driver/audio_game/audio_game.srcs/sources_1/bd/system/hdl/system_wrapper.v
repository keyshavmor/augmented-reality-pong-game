//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
//Date        : Fri Jun  8 15:36:08 2018
//Host        : morita running 64-bit Ubuntu 16.04.4 LTS
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (ADDRESS,
    BCLK_0,
    DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FCLK_CLK1_0,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    IIC_1_0_scl_io,
    IIC_1_0_sda_io,
    LRCLK_0,
    SDATA_I_0,
    SDATA_O_0,
    leds_8bits_tri_o,
    sws_8bits_tri_i);
  output [1:0]ADDRESS;
  output BCLK_0;
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  output FCLK_CLK1_0;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  inout IIC_1_0_scl_io;
  inout IIC_1_0_sda_io;
  output LRCLK_0;
  input SDATA_I_0;
  output SDATA_O_0;
  output [7:0]leds_8bits_tri_o;
  input [7:0]sws_8bits_tri_i;

  wire [1:0]ADDRESS;
  wire BCLK_0;
  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FCLK_CLK1_0;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire IIC_1_0_scl_i;
  wire IIC_1_0_scl_io;
  wire IIC_1_0_scl_o;
  wire IIC_1_0_scl_t;
  wire IIC_1_0_sda_i;
  wire IIC_1_0_sda_io;
  wire IIC_1_0_sda_o;
  wire IIC_1_0_sda_t;
  wire LRCLK_0;
  wire SDATA_I_0;
  wire SDATA_O_0;
  wire [7:0]leds_8bits_tri_o;
  wire [7:0]sws_8bits_tri_i;

  IOBUF IIC_1_0_scl_iobuf
       (.I(IIC_1_0_scl_o),
        .IO(IIC_1_0_scl_io),
        .O(IIC_1_0_scl_i),
        .T(IIC_1_0_scl_t));
  IOBUF IIC_1_0_sda_iobuf
       (.I(IIC_1_0_sda_o),
        .IO(IIC_1_0_sda_io),
        .O(IIC_1_0_sda_i),
        .T(IIC_1_0_sda_t));
  system system_i
       (.ADDRESS(ADDRESS),
        .BCLK_0(BCLK_0),
        .DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FCLK_CLK1_0(FCLK_CLK1_0),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .IIC_1_0_scl_i(IIC_1_0_scl_i),
        .IIC_1_0_scl_o(IIC_1_0_scl_o),
        .IIC_1_0_scl_t(IIC_1_0_scl_t),
        .IIC_1_0_sda_i(IIC_1_0_sda_i),
        .IIC_1_0_sda_o(IIC_1_0_sda_o),
        .IIC_1_0_sda_t(IIC_1_0_sda_t),
        .LRCLK_0(LRCLK_0),
        .SDATA_I_0(SDATA_I_0),
        .SDATA_O_0(SDATA_O_0),
        .leds_8bits_tri_o(leds_8bits_tri_o),
        .sws_8bits_tri_i(sws_8bits_tri_i));
endmodule
