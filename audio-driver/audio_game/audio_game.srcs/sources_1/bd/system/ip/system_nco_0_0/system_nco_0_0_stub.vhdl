-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Fri Jun  8 15:52:13 2018
-- Host        : morita running 64-bit Ubuntu 16.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/lina/Dokumente/TUB/SoSe2018/AES/audio_game/audio_game.srcs/sources_1/bd/system/ip/system_nco_0_0/system_nco_0_0_stub.vhdl
-- Design      : system_nco_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_nco_0_0 is
  Port ( 
    s_axi_AXI4LiteS_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_AXI4LiteS_AWVALID : in STD_LOGIC;
    s_axi_AXI4LiteS_AWREADY : out STD_LOGIC;
    s_axi_AXI4LiteS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXI4LiteS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AXI4LiteS_WVALID : in STD_LOGIC;
    s_axi_AXI4LiteS_WREADY : out STD_LOGIC;
    s_axi_AXI4LiteS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXI4LiteS_BVALID : out STD_LOGIC;
    s_axi_AXI4LiteS_BREADY : in STD_LOGIC;
    s_axi_AXI4LiteS_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_AXI4LiteS_ARVALID : in STD_LOGIC;
    s_axi_AXI4LiteS_ARREADY : out STD_LOGIC;
    s_axi_AXI4LiteS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXI4LiteS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXI4LiteS_RVALID : out STD_LOGIC;
    s_axi_AXI4LiteS_RREADY : in STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );

end system_nco_0_0;

architecture stub of system_nco_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_AXI4LiteS_AWADDR[4:0],s_axi_AXI4LiteS_AWVALID,s_axi_AXI4LiteS_AWREADY,s_axi_AXI4LiteS_WDATA[31:0],s_axi_AXI4LiteS_WSTRB[3:0],s_axi_AXI4LiteS_WVALID,s_axi_AXI4LiteS_WREADY,s_axi_AXI4LiteS_BRESP[1:0],s_axi_AXI4LiteS_BVALID,s_axi_AXI4LiteS_BREADY,s_axi_AXI4LiteS_ARADDR[4:0],s_axi_AXI4LiteS_ARVALID,s_axi_AXI4LiteS_ARREADY,s_axi_AXI4LiteS_RDATA[31:0],s_axi_AXI4LiteS_RRESP[1:0],s_axi_AXI4LiteS_RVALID,s_axi_AXI4LiteS_RREADY,aclk,aresetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "nco_top,Vivado 2018.1";
begin
end;
