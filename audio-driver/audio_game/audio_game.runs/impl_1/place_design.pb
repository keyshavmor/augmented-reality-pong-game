
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px? 
P
Running DRC with %s threads
24*drc2
42default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
42default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px? 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
42default:defaultZ30-611h px? 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
2277.0702default:default2
0.0002default:default2
1262default:default2
34272default:defaultZ17-722h px? 
[
FPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 1016d942c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.04 ; elapsed = 00:00:00.43 . Memory (MB): peak = 2277.070 ; gain = 0.000 ; free physical = 126 ; free virtual = 34272default:defaulth px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
2277.0702default:default2
0.0002default:default2
1532default:default2
34562default:defaultZ17-722h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
?
?IO placement is infeasible. Number of unplaced terminals (%s) is greater than number of available sites (%s).
The following are banks with available pins: %s
58*place2
42default:default2
02default:default2?
?
 IO Group: 0 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  Out  RangeId: 1 Drv: 12  has only 0 sites available on device, but needs 4 sites.
	Term: <MSGMETA::BEGIN::BLOCK>BCLK_0<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>FCLK_CLK1_0<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>LRCLK_0<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>SDATA_O_0<MSGMETA::END>

"?
BCLK_02?
 IO Group: 0 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  Out  RangeId: 1 Drv: 12  has only 0 sites available on device, but needs 4 sites.
	Term: :
	Term: "
FCLK_CLK1_0:
	Term: "
LRCLK_0:
	Term: "
	SDATA_O_0:

2default:default8Z30-58h px? 
?

?IO placement is infeasible. Number of unplaced terminals (%s) is greater than number of available sites (%s).
The following are banks with available pins: %s
58*place2
22default:default2
02default:default2?	
?
 IO Group: 0 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  Out  RangeId: 1 Drv: 12  has only 0 sites available on device, but needs 4 sites.
	Term: <MSGMETA::BEGIN::BLOCK>BCLK_0<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>FCLK_CLK1_0<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>LRCLK_0<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>SDATA_O_0<MSGMETA::END>


 IO Group: 1 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  BiDi RangeId: 1 Drv: 12  has only 0 sites available on device, but needs 2 sites.
	Term: <MSGMETA::BEGIN::BLOCK>IIC_1_0_scl_io<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>IIC_1_0_sda_io<MSGMETA::END>

"?
BCLK_02?
 IO Group: 0 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  Out  RangeId: 1 Drv: 12  has only 0 sites available on device, but needs 4 sites.
	Term: :
	Term: "
FCLK_CLK1_0:
	Term: "
LRCLK_0:
	Term: "?
	SDATA_O_0:?


 IO Group: 1 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  BiDi RangeId: 1 Drv: 12  has only 0 sites available on device, but needs 2 sites.
	Term: "
IIC_1_0_scl_io:
	Term: "
IIC_1_0_sda_io:

2default:default8Z30-58h px? 
?
?IO placement is infeasible. Number of unplaced terminals (%s) is greater than number of available sites (%s).
The following are banks with available pins: %s
58*place2
12default:default2
02default:default2?
?
 IO Group: 0 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  Out  RangeId: 1 Drv: 12  has only 0 sites available on device, but needs 4 sites.
	Term: <MSGMETA::BEGIN::BLOCK>BCLK_0<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>FCLK_CLK1_0<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>LRCLK_0<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>SDATA_O_0<MSGMETA::END>


 IO Group: 1 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  BiDi RangeId: 1 Drv: 12  has only 0 sites available on device, but needs 2 sites.
	Term: <MSGMETA::BEGIN::BLOCK>IIC_1_0_scl_io<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>IIC_1_0_sda_io<MSGMETA::END>


 IO Group: 2 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  In   RangeId: 1  has only 0 sites available on device, but needs 1 sites.
	Term: <MSGMETA::BEGIN::BLOCK>SDATA_I_0<MSGMETA::END>

"?
BCLK_02?
 IO Group: 0 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  Out  RangeId: 1 Drv: 12  has only 0 sites available on device, but needs 4 sites.
	Term: :
	Term: "
FCLK_CLK1_0:
	Term: "
LRCLK_0:
	Term: "?
	SDATA_O_0:?


 IO Group: 1 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  BiDi RangeId: 1 Drv: 12  has only 0 sites available on device, but needs 2 sites.
	Term: "
IIC_1_0_scl_io:
	Term: "?
IIC_1_0_sda_io:?


 IO Group: 2 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  In   RangeId: 1  has only 0 sites available on device, but needs 1 sites.
	Term: "
	SDATA_I_0:

2default:default8Z30-58h px? 
?
?IO placement is infeasible. Number of unplaced terminals (%s) is greater than number of available sites (%s).
The following are banks with available pins: %s
58*place2
72default:default2
02default:default2?
?
 IO Group: 0 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  Out  RangeId: 1 Drv: 12  has only 0 sites available on device, but needs 4 sites.
	Term: <MSGMETA::BEGIN::BLOCK>BCLK_0<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>FCLK_CLK1_0<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>LRCLK_0<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>SDATA_O_0<MSGMETA::END>


 IO Group: 1 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  BiDi RangeId: 1 Drv: 12  has only 0 sites available on device, but needs 2 sites.
	Term: <MSGMETA::BEGIN::BLOCK>IIC_1_0_scl_io<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>IIC_1_0_sda_io<MSGMETA::END>


 IO Group: 2 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  In   RangeId: 1  has only 0 sites available on device, but needs 1 sites.
	Term: <MSGMETA::BEGIN::BLOCK>SDATA_I_0<MSGMETA::END>

"?
BCLK_02?
 IO Group: 0 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  Out  RangeId: 1 Drv: 12  has only 0 sites available on device, but needs 4 sites.
	Term: :
	Term: "
FCLK_CLK1_0:
	Term: "
LRCLK_0:
	Term: "?
	SDATA_O_0:?


 IO Group: 1 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  BiDi RangeId: 1 Drv: 12  has only 0 sites available on device, but needs 2 sites.
	Term: "
IIC_1_0_scl_io:
	Term: "?
IIC_1_0_sda_io:?


 IO Group: 2 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  In   RangeId: 1  has only 0 sites available on device, but needs 1 sites.
	Term: "
	SDATA_I_0:

2default:default8Z30-58h px? 
?+
'IO placer failed to find a solution
%s
374*place2?*
?*Below is the partial placement that can be analyzed to see if any constraint modifications will make the IO placement problem easier to solve.

+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                     IO Placement : Bank Stats                                                                           |
+----+-------+-------+------------------------------------------------------------------------+------------------------------------------+--------+--------+--------+-----+
| Id | Pins  | Terms |                               Standards                                |                IDelayCtrls               |  VREF  |  VCCO  |   VR   | DCI |
+----+-------+-------+------------------------------------------------------------------------+------------------------------------------+--------+--------+--------+-----+
|  0 |     0 |     0 |                                                                        |                                          |        |        |        |     |
| 13 |    50 |     2 | LVCMOS33(2)                                                            |                                          |        |  +3.30 |    YES |     |
| 33 |    50 |     8 | LVCMOS33(8)                                                            |                                          |        |  +3.30 |    YES |     |
| 34 |    50 |     1 | LVCMOS25(1)                                                            |                                          |        |  +2.50 |    YES |     |
| 35 |    50 |     7 | LVCMOS25(7)                                                            |                                          |        |  +2.50 |    YES |     |
+----+-------+-------+------------------------------------------------------------------------+------------------------------------------+--------+--------+--------+-----+
|    |   200 |    18 |                                                                        |                                          |        |        |        |     |
+----+-------+-------+------------------------------------------------------------------------+------------------------------------------+--------+--------+--------+-----+

IO Placement:
+--------+----------------------+-----------------+----------------------+----------------------+----------------------+
| BankId |             Terminal | Standard        | Site                 | Pin                  | Attributes           |
+--------+----------------------+-----------------+----------------------+----------------------+----------------------+
| 13     | ADDRESS[0]           | LVCMOS33        | IOB_X0Y19            | AB1                  |                      |
|        | ADDRESS[1]           | LVCMOS33        | IOB_X0Y23            | Y5                   |                      |
+--------+----------------------+-----------------+----------------------+----------------------+----------------------+
| 33     | leds_8bits_tri_o[0]  | LVCMOS33        | IOB_X1Y46            | T22                  |                      |
|        | leds_8bits_tri_o[1]  | LVCMOS33        | IOB_X1Y48            | T21                  |                      |
|        | leds_8bits_tri_o[2]  | LVCMOS33        | IOB_X1Y45            | U22                  |                      |
|        | leds_8bits_tri_o[3]  | LVCMOS33        | IOB_X1Y47            | U21                  |                      |
|        | leds_8bits_tri_o[4]  | LVCMOS33        | IOB_X1Y44            | V22                  |                      |
|        | leds_8bits_tri_o[5]  | LVCMOS33        | IOB_X1Y43            | W22                  |                      |
|        | leds_8bits_tri_o[6]  | LVCMOS33        | IOB_X1Y49            | U19                  |                      |
|        | leds_8bits_tri_o[7]  | LVCMOS33        | IOB_X1Y0             | U14                  |                      |
+--------+----------------------+-----------------+----------------------+----------------------+----------------------+
| 34     | sws_8bits_tri_i[7]   | LVCMOS25        | IOB_X1Y88            | M15                  |                      |
+--------+----------------------+-----------------+----------------------+----------------------+----------------------+
| 35     | sws_8bits_tri_i[0]   | LVCMOS25        | IOB_X1Y103           | F22                  |                      |
|        | sws_8bits_tri_i[1]   | LVCMOS25        | IOB_X1Y101           | G22                  |                      |
|        | sws_8bits_tri_i[2]   | LVCMOS25        | IOB_X1Y102           | H22                  |                      |
|        | sws_8bits_tri_i[3]   | LVCMOS25        | IOB_X1Y104           | F21                  |                      |
|        | sws_8bits_tri_i[4]   | LVCMOS25        | IOB_X1Y112           | H19                  |                      |
|        | sws_8bits_tri_i[5]   | LVCMOS25        | IOB_X1Y100           | H18                  |                      |
|        | sws_8bits_tri_i[6]   | LVCMOS25        | IOB_X1Y149           | H17                  |                      |
+--------+----------------------+-----------------+----------------------+----------------------+----------------------+
2default:defaultZ30-374h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
h
SPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 151c6c262
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 2277.070 ; gain = 0.000 ; free physical = 144 ; free virtual = 34532default:defaulth px? 
I
4Phase 1 Placer Initialization | Checksum: 151c6c262
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 2277.070 ; gain = 0.000 ; free physical = 144 ; free virtual = 34532default:defaulth px? 
?
?Placer failed with error: '%s'
Please review all ERROR and WARNING messages during placement to understand the cause for failure.
1*	placeflow2*
IO Clock Placer failed2default:defaultZ30-99h px? 
>
)Ending Placer Task | Checksum: 151c6c262
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 2277.070 ; gain = 0.000 ; free physical = 145 ; free virtual = 34542default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
572default:default2
142default:default2
142default:default2
72default:defaultZ4-41h px? 
N

%s failed
30*	vivadotcl2 
place_design2default:defaultZ4-43h px? 
m
Command failed: %s
69*common28
$Placer could not place all instances2default:defaultZ17-69h px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri Jun  8 16:20:20 20182default:defaultZ17-206h px? 


End Record