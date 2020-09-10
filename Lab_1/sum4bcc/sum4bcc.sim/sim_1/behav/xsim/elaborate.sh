#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Thu Sep 10 00:16:47 -05 2020
# SW Build 2708876 on Wed Nov  6 21:39:14 MST 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto 5654dfb1c848468b935e81e44992159c --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot TB_sum4bcc_behav xil_defaultlib.TB_sum4bcc xil_defaultlib.glbl -log elaborate.log"
xelab -wto 5654dfb1c848468b935e81e44992159c --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot TB_sum4bcc_behav xil_defaultlib.TB_sum4bcc xil_defaultlib.glbl -log elaborate.log
