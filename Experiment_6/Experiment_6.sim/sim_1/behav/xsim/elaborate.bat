@echo off
REM ****************************************************************************
REM Vivado (TM) v2021.1 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Thu Nov 24 17:51:52 +0800 2022
REM SW Build 3247384 on Thu Jun 10 19:36:33 MDT 2021
REM
REM IP Build 3246043 on Fri Jun 11 00:30:35 MDT 2021
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
REM elaborate design
echo "xelab -wto f2681b50324b4a579e1f3b259d622603 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L blk_mem_gen_v8_4_4 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot DU_test_tb_behav xil_defaultlib.DU_test_tb xil_defaultlib.glbl -log elaborate.log"
call xelab  -wto f2681b50324b4a579e1f3b259d622603 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L blk_mem_gen_v8_4_4 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot DU_test_tb_behav xil_defaultlib.DU_test_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
