@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.4\\bin
call %xv_path%/xelab  -wto 6f81daeaa87a48c3b2a348da04e49e0a -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L blk_mem_gen_v8_3_1 -L secureip --snapshot ov7670_top_behav xil_defaultlib.ov7670_top -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
