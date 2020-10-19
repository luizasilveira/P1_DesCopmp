-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "10/18/2020 21:01:41"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	processador IS
    PORT (
	clk : IN std_logic;
	dataIn : IN std_logic_vector(7 DOWNTO 0);
	dataOut : OUT std_logic_vector(7 DOWNTO 0);
	adress : OUT std_logic_vector(7 DOWNTO 0);
	habEscritaReg : OUT std_logic;
	habEscritaMEM : OUT std_logic;
	habLeituraMEM : OUT std_logic;
	pinTest : OUT std_logic_vector(7 DOWNTO 0);
	pinTestA : OUT std_logic_vector(7 DOWNTO 0);
	pinTestB : OUT std_logic_vector(7 DOWNTO 0);
	pinTestSaidaULA : OUT std_logic_vector(7 DOWNTO 0);
	pinTestflagZero : OUT std_logic
	);
END processador;

-- Design Ports Information
-- dataOut[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[1]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[2]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[4]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[5]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[6]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[7]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adress[0]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adress[1]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adress[2]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adress[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adress[4]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adress[5]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adress[6]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adress[7]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habEscritaReg	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habEscritaMEM	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habLeituraMEM	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinTest[0]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinTest[1]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinTest[2]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinTest[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinTest[4]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinTest[5]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinTest[6]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinTest[7]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinTestA[0]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinTestA[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinTestA[2]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinTestA[3]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinTestA[4]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinTestA[5]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinTestA[6]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinTestA[7]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinTestB[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinTestB[1]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinTestB[2]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinTestB[3]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinTestB[4]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinTestB[5]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinTestB[6]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinTestB[7]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinTestSaidaULA[0]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinTestSaidaULA[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinTestSaidaULA[2]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinTestSaidaULA[3]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinTestSaidaULA[4]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinTestSaidaULA[5]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinTestSaidaULA[6]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinTestSaidaULA[7]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinTestflagZero	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[0]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[1]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[2]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[3]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[4]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[5]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[6]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[7]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF processador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_dataIn : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dataOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_adress : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_habEscritaReg : std_logic;
SIGNAL ww_habEscritaMEM : std_logic;
SIGNAL ww_habLeituraMEM : std_logic;
SIGNAL ww_pinTest : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pinTestA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pinTestB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pinTestSaidaULA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pinTestflagZero : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inc|Add0~1_sumout\ : std_logic;
SIGNAL \inc|Add0~26\ : std_logic;
SIGNAL \inc|Add0~22\ : std_logic;
SIGNAL \inc|Add0~5_sumout\ : std_logic;
SIGNAL \PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \UC|Equal0~0_combout\ : std_logic;
SIGNAL \UC|palavraControle[3]~0_combout\ : std_logic;
SIGNAL \UC|Equal5~0_combout\ : std_logic;
SIGNAL \dataIn[1]~input_o\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Registradores|registrador~215_combout\ : std_logic;
SIGNAL \Registradores|registrador~30_q\ : std_logic;
SIGNAL \Registradores|registrador~216_combout\ : std_logic;
SIGNAL \Registradores|registrador~38_q\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \Registradores|registrador~174_combout\ : std_logic;
SIGNAL \UC|Equal3~0_combout\ : std_logic;
SIGNAL \dataIn[0]~input_o\ : std_logic;
SIGNAL \ULA|Add0~34_cout\ : std_logic;
SIGNAL \ULA|Add0~1_sumout\ : std_logic;
SIGNAL \ULA|saida[0]~0_combout\ : std_logic;
SIGNAL \MUX_ULA|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \Registradores|registrador~37_q\ : std_logic;
SIGNAL \Registradores|registrador~29_q\ : std_logic;
SIGNAL \Registradores|registrador~173_combout\ : std_logic;
SIGNAL \ULA|Add0~2\ : std_logic;
SIGNAL \ULA|Add0~5_sumout\ : std_logic;
SIGNAL \ULA|saida[1]~1_combout\ : std_logic;
SIGNAL \MUX_ULA|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \Registradores|registrador~214_combout\ : std_logic;
SIGNAL \Registradores|registrador~46_q\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \Registradores|registrador~213_combout\ : std_logic;
SIGNAL \Registradores|registrador~22_q\ : std_logic;
SIGNAL \Registradores|registrador~185_combout\ : std_logic;
SIGNAL \Registradores|registrador~145_combout\ : std_logic;
SIGNAL \ULA|Equal8~0_combout\ : std_logic;
SIGNAL \dataIn[4]~input_o\ : std_logic;
SIGNAL \Registradores|registrador~33_q\ : std_logic;
SIGNAL \Registradores|registrador~41_q\ : std_logic;
SIGNAL \Registradores|registrador~177_combout\ : std_logic;
SIGNAL \dataIn[3]~input_o\ : std_logic;
SIGNAL \Registradores|registrador~48_q\ : std_logic;
SIGNAL \Registradores|registrador~24_q\ : std_logic;
SIGNAL \Registradores|registrador~32_q\ : std_logic;
SIGNAL \Registradores|registrador~193_combout\ : std_logic;
SIGNAL \Registradores|registrador~153_combout\ : std_logic;
SIGNAL \dataIn[2]~input_o\ : std_logic;
SIGNAL \Registradores|registrador~31_q\ : std_logic;
SIGNAL \Registradores|registrador~39_q\ : std_logic;
SIGNAL \Registradores|registrador~175_combout\ : std_logic;
SIGNAL \ULA|Add0~6\ : std_logic;
SIGNAL \ULA|Add0~9_sumout\ : std_logic;
SIGNAL \ULA|saida[2]~2_combout\ : std_logic;
SIGNAL \MUX_ULA|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \Registradores|registrador~47_q\ : std_logic;
SIGNAL \Registradores|registrador~23_q\ : std_logic;
SIGNAL \Registradores|registrador~189_combout\ : std_logic;
SIGNAL \Registradores|registrador~149_combout\ : std_logic;
SIGNAL \ULA|Add0~10\ : std_logic;
SIGNAL \ULA|Add0~13_sumout\ : std_logic;
SIGNAL \ULA|saida[3]~3_combout\ : std_logic;
SIGNAL \MUX_ULA|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \Registradores|registrador~40_q\ : std_logic;
SIGNAL \Registradores|registrador~176_combout\ : std_logic;
SIGNAL \ULA|Add0~14\ : std_logic;
SIGNAL \ULA|Add0~17_sumout\ : std_logic;
SIGNAL \ULA|saida[4]~4_combout\ : std_logic;
SIGNAL \MUX_ULA|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \Registradores|registrador~49_q\ : std_logic;
SIGNAL \Registradores|registrador~25_q\ : std_logic;
SIGNAL \Registradores|registrador~197_combout\ : std_logic;
SIGNAL \Registradores|registrador~157_combout\ : std_logic;
SIGNAL \dataIn[5]~input_o\ : std_logic;
SIGNAL \Registradores|registrador~42_q\ : std_logic;
SIGNAL \Registradores|registrador~34_q\ : std_logic;
SIGNAL \Registradores|registrador~178_combout\ : std_logic;
SIGNAL \ULA|Add0~18\ : std_logic;
SIGNAL \ULA|Add0~21_sumout\ : std_logic;
SIGNAL \MUX_ULA|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \Registradores|registrador~50_q\ : std_logic;
SIGNAL \Registradores|registrador~26_q\ : std_logic;
SIGNAL \Registradores|registrador~201_combout\ : std_logic;
SIGNAL \Registradores|registrador~161_combout\ : std_logic;
SIGNAL \ULA|Equal8~1_combout\ : std_logic;
SIGNAL \ULA|Equal8~2_combout\ : std_logic;
SIGNAL \dataIn[6]~input_o\ : std_logic;
SIGNAL \Registradores|registrador~43_q\ : std_logic;
SIGNAL \Registradores|registrador~35_q\ : std_logic;
SIGNAL \Registradores|registrador~179_combout\ : std_logic;
SIGNAL \ULA|Add0~22\ : std_logic;
SIGNAL \ULA|Add0~25_sumout\ : std_logic;
SIGNAL \MUX_ULA|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \Registradores|registrador~51_q\ : std_logic;
SIGNAL \Registradores|registrador~27_q\ : std_logic;
SIGNAL \Registradores|registrador~205_combout\ : std_logic;
SIGNAL \Registradores|registrador~165_combout\ : std_logic;
SIGNAL \dataIn[7]~input_o\ : std_logic;
SIGNAL \Registradores|registrador~36_q\ : std_logic;
SIGNAL \Registradores|registrador~44_q\ : std_logic;
SIGNAL \Registradores|registrador~180_combout\ : std_logic;
SIGNAL \ULA|Add0~26\ : std_logic;
SIGNAL \ULA|Add0~29_sumout\ : std_logic;
SIGNAL \MUX_ULA|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \Registradores|registrador~52_q\ : std_logic;
SIGNAL \Registradores|registrador~28_q\ : std_logic;
SIGNAL \Registradores|registrador~209_combout\ : std_logic;
SIGNAL \Registradores|registrador~169_combout\ : std_logic;
SIGNAL \ULA|Equal8~3_combout\ : std_logic;
SIGNAL \flipflop|data_out~0_combout\ : std_logic;
SIGNAL \flipflop|data_out~q\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \inc|Add0~6\ : std_logic;
SIGNAL \inc|Add0~9_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inc|Add0~10\ : std_logic;
SIGNAL \inc|Add0~17_sumout\ : std_logic;
SIGNAL \inc|Add0~18\ : std_logic;
SIGNAL \inc|Add0~13_sumout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \inc|Add0~21_sumout\ : std_logic;
SIGNAL \PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \inc|Add0~2\ : std_logic;
SIGNAL \inc|Add0~30\ : std_logic;
SIGNAL \inc|Add0~25_sumout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \inc|Add0~29_sumout\ : std_logic;
SIGNAL \PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \Registradores|registrador~45_q\ : std_logic;
SIGNAL \Registradores|registrador~21_q\ : std_logic;
SIGNAL \Registradores|registrador~181_combout\ : std_logic;
SIGNAL \Registradores|registrador~141_combout\ : std_logic;
SIGNAL \UC|Equal7~0_combout\ : std_logic;
SIGNAL \PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ULA|saida[5]~5_combout\ : std_logic;
SIGNAL \ULA|saida[6]~6_combout\ : std_logic;
SIGNAL \ULA|saida[7]~7_combout\ : std_logic;
SIGNAL \ULA|Equal8~4_combout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UC|palavraControle\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~209_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~205_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~201_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~197_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~193_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~189_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~185_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~181_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Registradores|ALT_INV_registrador~169_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~165_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~161_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~157_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~153_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~149_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~145_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~141_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_dataIn[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataIn[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataIn[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataIn[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataIn[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataIn[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataIn[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataIn[0]~input_o\ : std_logic;
SIGNAL \UC|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~28_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~27_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~26_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~25_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~24_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~23_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~22_q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~21_q\ : std_logic;
SIGNAL \UC|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \UC|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \flipflop|ALT_INV_data_out~q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~52_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~51_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~50_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~49_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~48_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~47_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~46_q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~45_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal8~3_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal8~2_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal8~1_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[4]~4_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[3]~3_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[2]~2_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[1]~1_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \UC|ALT_INV_palavraControle[3]~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~180_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~36_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~44_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~179_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~35_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~43_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~178_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~34_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~42_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~177_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~33_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~41_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~176_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~32_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~175_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~31_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~174_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~30_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~38_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~173_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~29_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~37_q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_dataIn <= dataIn;
dataOut <= ww_dataOut;
adress <= ww_adress;
habEscritaReg <= ww_habEscritaReg;
habEscritaMEM <= ww_habEscritaMEM;
habLeituraMEM <= ww_habLeituraMEM;
pinTest <= ww_pinTest;
pinTestA <= ww_pinTestA;
pinTestB <= ww_pinTestB;
pinTestSaidaULA <= ww_pinTestSaidaULA;
pinTestflagZero <= ww_pinTestflagZero;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\Registradores|ALT_INV_registrador~209_combout\ <= NOT \Registradores|registrador~209_combout\;
\Registradores|ALT_INV_registrador~205_combout\ <= NOT \Registradores|registrador~205_combout\;
\Registradores|ALT_INV_registrador~201_combout\ <= NOT \Registradores|registrador~201_combout\;
\Registradores|ALT_INV_registrador~197_combout\ <= NOT \Registradores|registrador~197_combout\;
\Registradores|ALT_INV_registrador~193_combout\ <= NOT \Registradores|registrador~193_combout\;
\Registradores|ALT_INV_registrador~189_combout\ <= NOT \Registradores|registrador~189_combout\;
\Registradores|ALT_INV_registrador~185_combout\ <= NOT \Registradores|registrador~185_combout\;
\Registradores|ALT_INV_registrador~181_combout\ <= NOT \Registradores|registrador~181_combout\;
\ULA|ALT_INV_Add0~29_sumout\ <= NOT \ULA|Add0~29_sumout\;
\ULA|ALT_INV_Add0~25_sumout\ <= NOT \ULA|Add0~25_sumout\;
\ULA|ALT_INV_Add0~21_sumout\ <= NOT \ULA|Add0~21_sumout\;
\ULA|ALT_INV_Add0~17_sumout\ <= NOT \ULA|Add0~17_sumout\;
\ULA|ALT_INV_Add0~13_sumout\ <= NOT \ULA|Add0~13_sumout\;
\ULA|ALT_INV_Add0~9_sumout\ <= NOT \ULA|Add0~9_sumout\;
\ULA|ALT_INV_Add0~5_sumout\ <= NOT \ULA|Add0~5_sumout\;
\ULA|ALT_INV_Add0~1_sumout\ <= NOT \ULA|Add0~1_sumout\;
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\Registradores|ALT_INV_registrador~169_combout\ <= NOT \Registradores|registrador~169_combout\;
\Registradores|ALT_INV_registrador~165_combout\ <= NOT \Registradores|registrador~165_combout\;
\Registradores|ALT_INV_registrador~161_combout\ <= NOT \Registradores|registrador~161_combout\;
\Registradores|ALT_INV_registrador~157_combout\ <= NOT \Registradores|registrador~157_combout\;
\Registradores|ALT_INV_registrador~153_combout\ <= NOT \Registradores|registrador~153_combout\;
\Registradores|ALT_INV_registrador~149_combout\ <= NOT \Registradores|registrador~149_combout\;
\Registradores|ALT_INV_registrador~145_combout\ <= NOT \Registradores|registrador~145_combout\;
\Registradores|ALT_INV_registrador~141_combout\ <= NOT \Registradores|registrador~141_combout\;
\PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \PC|DOUT[1]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \PC|DOUT[2]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \PC|DOUT[3]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \PC|DOUT[0]~DUPLICATE_q\;
\ALT_INV_dataIn[7]~input_o\ <= NOT \dataIn[7]~input_o\;
\ALT_INV_dataIn[6]~input_o\ <= NOT \dataIn[6]~input_o\;
\ALT_INV_dataIn[5]~input_o\ <= NOT \dataIn[5]~input_o\;
\ALT_INV_dataIn[4]~input_o\ <= NOT \dataIn[4]~input_o\;
\ALT_INV_dataIn[3]~input_o\ <= NOT \dataIn[3]~input_o\;
\ALT_INV_dataIn[2]~input_o\ <= NOT \dataIn[2]~input_o\;
\ALT_INV_dataIn[1]~input_o\ <= NOT \dataIn[1]~input_o\;
\ALT_INV_dataIn[0]~input_o\ <= NOT \dataIn[0]~input_o\;
\UC|ALT_INV_Equal0~0_combout\ <= NOT \UC|Equal0~0_combout\;
\Registradores|ALT_INV_registrador~28_q\ <= NOT \Registradores|registrador~28_q\;
\Registradores|ALT_INV_registrador~27_q\ <= NOT \Registradores|registrador~27_q\;
\Registradores|ALT_INV_registrador~26_q\ <= NOT \Registradores|registrador~26_q\;
\Registradores|ALT_INV_registrador~25_q\ <= NOT \Registradores|registrador~25_q\;
\Registradores|ALT_INV_registrador~24_q\ <= NOT \Registradores|registrador~24_q\;
\Registradores|ALT_INV_registrador~23_q\ <= NOT \Registradores|registrador~23_q\;
\Registradores|ALT_INV_registrador~22_q\ <= NOT \Registradores|registrador~22_q\;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\Registradores|ALT_INV_registrador~21_q\ <= NOT \Registradores|registrador~21_q\;
\UC|ALT_INV_Equal3~0_combout\ <= NOT \UC|Equal3~0_combout\;
\UC|ALT_INV_Equal5~0_combout\ <= NOT \UC|Equal5~0_combout\;
\flipflop|ALT_INV_data_out~q\ <= NOT \flipflop|data_out~q\;
\Registradores|ALT_INV_registrador~52_q\ <= NOT \Registradores|registrador~52_q\;
\Registradores|ALT_INV_registrador~51_q\ <= NOT \Registradores|registrador~51_q\;
\Registradores|ALT_INV_registrador~50_q\ <= NOT \Registradores|registrador~50_q\;
\Registradores|ALT_INV_registrador~49_q\ <= NOT \Registradores|registrador~49_q\;
\Registradores|ALT_INV_registrador~48_q\ <= NOT \Registradores|registrador~48_q\;
\Registradores|ALT_INV_registrador~47_q\ <= NOT \Registradores|registrador~47_q\;
\Registradores|ALT_INV_registrador~46_q\ <= NOT \Registradores|registrador~46_q\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\Registradores|ALT_INV_registrador~45_q\ <= NOT \Registradores|registrador~45_q\;
\ULA|ALT_INV_Equal8~3_combout\ <= NOT \ULA|Equal8~3_combout\;
\ULA|ALT_INV_Equal8~2_combout\ <= NOT \ULA|Equal8~2_combout\;
\ULA|ALT_INV_Equal8~1_combout\ <= NOT \ULA|Equal8~1_combout\;
\ULA|ALT_INV_Equal8~0_combout\ <= NOT \ULA|Equal8~0_combout\;
\ULA|ALT_INV_saida[4]~4_combout\ <= NOT \ULA|saida[4]~4_combout\;
\ULA|ALT_INV_saida[3]~3_combout\ <= NOT \ULA|saida[3]~3_combout\;
\ULA|ALT_INV_saida[2]~2_combout\ <= NOT \ULA|saida[2]~2_combout\;
\ULA|ALT_INV_saida[1]~1_combout\ <= NOT \ULA|saida[1]~1_combout\;
\ULA|ALT_INV_saida[0]~0_combout\ <= NOT \ULA|saida[0]~0_combout\;
\UC|ALT_INV_palavraControle[3]~0_combout\ <= NOT \UC|palavraControle[3]~0_combout\;
\Registradores|ALT_INV_registrador~180_combout\ <= NOT \Registradores|registrador~180_combout\;
\Registradores|ALT_INV_registrador~36_q\ <= NOT \Registradores|registrador~36_q\;
\Registradores|ALT_INV_registrador~44_q\ <= NOT \Registradores|registrador~44_q\;
\Registradores|ALT_INV_registrador~179_combout\ <= NOT \Registradores|registrador~179_combout\;
\Registradores|ALT_INV_registrador~35_q\ <= NOT \Registradores|registrador~35_q\;
\Registradores|ALT_INV_registrador~43_q\ <= NOT \Registradores|registrador~43_q\;
\Registradores|ALT_INV_registrador~178_combout\ <= NOT \Registradores|registrador~178_combout\;
\Registradores|ALT_INV_registrador~34_q\ <= NOT \Registradores|registrador~34_q\;
\Registradores|ALT_INV_registrador~42_q\ <= NOT \Registradores|registrador~42_q\;
\Registradores|ALT_INV_registrador~177_combout\ <= NOT \Registradores|registrador~177_combout\;
\Registradores|ALT_INV_registrador~33_q\ <= NOT \Registradores|registrador~33_q\;
\Registradores|ALT_INV_registrador~41_q\ <= NOT \Registradores|registrador~41_q\;
\Registradores|ALT_INV_registrador~176_combout\ <= NOT \Registradores|registrador~176_combout\;
\Registradores|ALT_INV_registrador~32_q\ <= NOT \Registradores|registrador~32_q\;
\Registradores|ALT_INV_registrador~40_q\ <= NOT \Registradores|registrador~40_q\;
\Registradores|ALT_INV_registrador~175_combout\ <= NOT \Registradores|registrador~175_combout\;
\Registradores|ALT_INV_registrador~31_q\ <= NOT \Registradores|registrador~31_q\;
\Registradores|ALT_INV_registrador~39_q\ <= NOT \Registradores|registrador~39_q\;
\Registradores|ALT_INV_registrador~174_combout\ <= NOT \Registradores|registrador~174_combout\;
\Registradores|ALT_INV_registrador~30_q\ <= NOT \Registradores|registrador~30_q\;
\Registradores|ALT_INV_registrador~38_q\ <= NOT \Registradores|registrador~38_q\;
\Registradores|ALT_INV_registrador~173_combout\ <= NOT \Registradores|registrador~173_combout\;
\Registradores|ALT_INV_registrador~29_q\ <= NOT \Registradores|registrador~29_q\;
\Registradores|ALT_INV_registrador~37_q\ <= NOT \Registradores|registrador~37_q\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;

-- Location: IOOBUF_X10_Y0_N42
\dataOut[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registrador~141_combout\,
	devoe => ww_devoe,
	o => ww_dataOut(0));

-- Location: IOOBUF_X29_Y0_N19
\dataOut[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registrador~145_combout\,
	devoe => ww_devoe,
	o => ww_dataOut(1));

-- Location: IOOBUF_X23_Y0_N76
\dataOut[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registrador~149_combout\,
	devoe => ww_devoe,
	o => ww_dataOut(2));

-- Location: IOOBUF_X36_Y0_N19
\dataOut[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registrador~153_combout\,
	devoe => ww_devoe,
	o => ww_dataOut(3));

-- Location: IOOBUF_X34_Y0_N36
\dataOut[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registrador~157_combout\,
	devoe => ww_devoe,
	o => ww_dataOut(4));

-- Location: IOOBUF_X22_Y0_N53
\dataOut[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registrador~161_combout\,
	devoe => ww_devoe,
	o => ww_dataOut(5));

-- Location: IOOBUF_X25_Y0_N2
\dataOut[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registrador~165_combout\,
	devoe => ww_devoe,
	o => ww_dataOut(6));

-- Location: IOOBUF_X14_Y0_N36
\dataOut[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registrador~169_combout\,
	devoe => ww_devoe,
	o => ww_dataOut(7));

-- Location: IOOBUF_X10_Y0_N76
\adress[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_adress(0));

-- Location: IOOBUF_X18_Y0_N53
\adress[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~3_combout\,
	devoe => ww_devoe,
	o => ww_adress(1));

-- Location: IOOBUF_X19_Y0_N53
\adress[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~5_combout\,
	devoe => ww_devoe,
	o => ww_adress(2));

-- Location: IOOBUF_X11_Y0_N2
\adress[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~7_combout\,
	devoe => ww_devoe,
	o => ww_adress(3));

-- Location: IOOBUF_X14_Y0_N2
\adress[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~8_combout\,
	devoe => ww_devoe,
	o => ww_adress(4));

-- Location: IOOBUF_X10_Y45_N53
\adress[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_adress(5));

-- Location: IOOBUF_X0_Y18_N96
\adress[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_adress(6));

-- Location: IOOBUF_X52_Y0_N53
\adress[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_adress(7));

-- Location: IOOBUF_X33_Y0_N76
\habEscritaReg~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UC|palavraControle\(5),
	devoe => ww_devoe,
	o => ww_habEscritaReg);

-- Location: IOOBUF_X33_Y0_N93
\habEscritaMEM~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UC|Equal7~0_combout\,
	devoe => ww_devoe,
	o => ww_habEscritaMEM);

-- Location: IOOBUF_X54_Y21_N5
\habLeituraMEM~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_habLeituraMEM);

-- Location: IOOBUF_X11_Y0_N19
\pinTest[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(0),
	devoe => ww_devoe,
	o => ww_pinTest(0));

-- Location: IOOBUF_X11_Y0_N53
\pinTest[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_pinTest(1));

-- Location: IOOBUF_X12_Y0_N53
\pinTest[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_pinTest(2));

-- Location: IOOBUF_X14_Y0_N53
\pinTest[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_pinTest(3));

-- Location: IOOBUF_X29_Y0_N36
\pinTest[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(4),
	devoe => ww_devoe,
	o => ww_pinTest(4));

-- Location: IOOBUF_X24_Y0_N2
\pinTest[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_pinTest(5));

-- Location: IOOBUF_X33_Y0_N42
\pinTest[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(6),
	devoe => ww_devoe,
	o => ww_pinTest(6));

-- Location: IOOBUF_X10_Y0_N93
\pinTest[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(7),
	devoe => ww_devoe,
	o => ww_pinTest(7));

-- Location: IOOBUF_X10_Y0_N59
\pinTestA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registrador~141_combout\,
	devoe => ww_devoe,
	o => ww_pinTestA(0));

-- Location: IOOBUF_X29_Y0_N2
\pinTestA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registrador~145_combout\,
	devoe => ww_devoe,
	o => ww_pinTestA(1));

-- Location: IOOBUF_X23_Y0_N93
\pinTestA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registrador~149_combout\,
	devoe => ww_devoe,
	o => ww_pinTestA(2));

-- Location: IOOBUF_X36_Y0_N53
\pinTestA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registrador~153_combout\,
	devoe => ww_devoe,
	o => ww_pinTestA(3));

-- Location: IOOBUF_X34_Y0_N2
\pinTestA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registrador~157_combout\,
	devoe => ww_devoe,
	o => ww_pinTestA(4));

-- Location: IOOBUF_X22_Y0_N2
\pinTestA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registrador~161_combout\,
	devoe => ww_devoe,
	o => ww_pinTestA(5));

-- Location: IOOBUF_X25_Y0_N19
\pinTestA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registrador~165_combout\,
	devoe => ww_devoe,
	o => ww_pinTestA(6));

-- Location: IOOBUF_X12_Y0_N2
\pinTestA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registrador~169_combout\,
	devoe => ww_devoe,
	o => ww_pinTestA(7));

-- Location: IOOBUF_X18_Y0_N19
\pinTestB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registrador~173_combout\,
	devoe => ww_devoe,
	o => ww_pinTestB(0));

-- Location: IOOBUF_X24_Y0_N36
\pinTestB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registrador~174_combout\,
	devoe => ww_devoe,
	o => ww_pinTestB(1));

-- Location: IOOBUF_X16_Y0_N59
\pinTestB[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registrador~175_combout\,
	devoe => ww_devoe,
	o => ww_pinTestB(2));

-- Location: IOOBUF_X22_Y0_N19
\pinTestB[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registrador~176_combout\,
	devoe => ww_devoe,
	o => ww_pinTestB(3));

-- Location: IOOBUF_X11_Y0_N36
\pinTestB[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registrador~177_combout\,
	devoe => ww_devoe,
	o => ww_pinTestB(4));

-- Location: IOOBUF_X16_Y0_N93
\pinTestB[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registrador~178_combout\,
	devoe => ww_devoe,
	o => ww_pinTestB(5));

-- Location: IOOBUF_X29_Y0_N53
\pinTestB[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registrador~179_combout\,
	devoe => ww_devoe,
	o => ww_pinTestB(6));

-- Location: IOOBUF_X14_Y0_N19
\pinTestB[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registrador~180_combout\,
	devoe => ww_devoe,
	o => ww_pinTestB(7));

-- Location: IOOBUF_X23_Y0_N42
\pinTestSaidaULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_pinTestSaidaULA(0));

-- Location: IOOBUF_X18_Y0_N2
\pinTestSaidaULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_pinTestSaidaULA(1));

-- Location: IOOBUF_X16_Y0_N76
\pinTestSaidaULA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_pinTestSaidaULA(2));

-- Location: IOOBUF_X16_Y0_N42
\pinTestSaidaULA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_pinTestSaidaULA(3));

-- Location: IOOBUF_X25_Y0_N53
\pinTestSaidaULA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_pinTestSaidaULA(4));

-- Location: IOOBUF_X19_Y0_N36
\pinTestSaidaULA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_pinTestSaidaULA(5));

-- Location: IOOBUF_X33_Y0_N59
\pinTestSaidaULA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_pinTestSaidaULA(6));

-- Location: IOOBUF_X12_Y0_N19
\pinTestSaidaULA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_pinTestSaidaULA(7));

-- Location: IOOBUF_X22_Y0_N36
\pinTestflagZero~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Equal8~4_combout\,
	devoe => ww_devoe,
	o => ww_pinTestflagZero);

-- Location: IOIBUF_X54_Y18_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: MLABCELL_X13_Y4_N30
\inc|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inc|Add0~1_sumout\ = SUM(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \inc|Add0~2\ = CARRY(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \inc|Add0~1_sumout\,
	cout => \inc|Add0~2\);

-- Location: MLABCELL_X13_Y4_N36
\inc|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inc|Add0~25_sumout\ = SUM(( \PC|DOUT\(2) ) + ( GND ) + ( \inc|Add0~30\ ))
-- \inc|Add0~26\ = CARRY(( \PC|DOUT\(2) ) + ( GND ) + ( \inc|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => \inc|Add0~30\,
	sumout => \inc|Add0~25_sumout\,
	cout => \inc|Add0~26\);

-- Location: MLABCELL_X13_Y4_N39
\inc|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inc|Add0~21_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \inc|Add0~26\ ))
-- \inc|Add0~22\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \inc|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \inc|Add0~26\,
	sumout => \inc|Add0~21_sumout\,
	cout => \inc|Add0~22\);

-- Location: MLABCELL_X13_Y4_N42
\inc|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inc|Add0~5_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \inc|Add0~22\ ))
-- \inc|Add0~6\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \inc|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \inc|Add0~22\,
	sumout => \inc|Add0~5_sumout\,
	cout => \inc|Add0~6\);

-- Location: FF_X13_Y4_N31
\PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inc|Add0~1_sumout\,
	asdata => \ROM|memROM~1_combout\,
	sload => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y4_N57
\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = ( \PC|DOUT[0]~DUPLICATE_q\ & ( (!\PC|DOUT\(3) & (\PC|DOUT\(1) & !\PC|DOUT\(2))) ) ) # ( !\PC|DOUT[0]~DUPLICATE_q\ & ( (\PC|DOUT\(3) & (!\PC|DOUT\(1) & !\PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM|memROM~10_combout\);

-- Location: LABCELL_X14_Y4_N0
\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = ( \PC|DOUT[0]~DUPLICATE_q\ & ( (!\PC|DOUT\(2) & !\PC|DOUT\(1)) ) ) # ( !\PC|DOUT[0]~DUPLICATE_q\ & ( (!\PC|DOUT\(2) & ((\PC|DOUT\(1)))) # (\PC|DOUT\(2) & (!\PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011111010010100001111101010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(1),
	dataf => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM|memROM~12_combout\);

-- Location: LABCELL_X14_Y4_N12
\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = ( \PC|DOUT[0]~DUPLICATE_q\ & ( (!\PC|DOUT\(2) & ((!\PC|DOUT\(1)))) # (\PC|DOUT\(2) & (!\PC|DOUT\(3) & \PC|DOUT\(1))) ) ) # ( !\PC|DOUT[0]~DUPLICATE_q\ & ( (!\PC|DOUT\(3) & \PC|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101011110000000010101111000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(1),
	dataf => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM|memROM~9_combout\);

-- Location: LABCELL_X14_Y4_N21
\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = ( !\PC|DOUT\(1) & ( \PC|DOUT[0]~DUPLICATE_q\ & ( (!\PC|DOUT\(3) & !\PC|DOUT\(2)) ) ) ) # ( \PC|DOUT\(1) & ( !\PC|DOUT[0]~DUPLICATE_q\ & ( (!\PC|DOUT\(3)) # (!\PC|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010101010101010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(2),
	datae => \PC|ALT_INV_DOUT\(1),
	dataf => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM|memROM~11_combout\);

-- Location: LABCELL_X14_Y4_N48
\UC|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Equal0~0_combout\ = ( \ROM|memROM~10_combout\ & ( (\ROM|memROM~0_combout\ & (!\ROM|memROM~11_combout\ & (!\ROM|memROM~12_combout\ & !\ROM|memROM~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \UC|Equal0~0_combout\);

-- Location: LABCELL_X14_Y4_N6
\UC|palavraControle[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|palavraControle[3]~0_combout\ = ( \ROM|memROM~11_combout\ & ( (\ROM|memROM~0_combout\ & (!\ROM|memROM~10_combout\ & (\ROM|memROM~9_combout\ & !\ROM|memROM~12_combout\))) ) ) # ( !\ROM|memROM~11_combout\ & ( (\ROM|memROM~0_combout\ & 
-- (!\ROM|memROM~12_combout\ & (!\ROM|memROM~10_combout\ $ (!\ROM|memROM~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000000000000101000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \UC|palavraControle[3]~0_combout\);

-- Location: LABCELL_X14_Y4_N51
\UC|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Equal5~0_combout\ = ( \ROM|memROM~9_combout\ & ( (\ROM|memROM~0_combout\ & (\ROM|memROM~11_combout\ & (!\ROM|memROM~10_combout\ & \ROM|memROM~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \UC|Equal5~0_combout\);

-- Location: IOIBUF_X18_Y0_N35
\dataIn[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(1),
	o => \dataIn[1]~input_o\);

-- Location: LABCELL_X14_Y4_N15
\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = ( \PC|DOUT\(2) & ( (\PC|DOUT\(1) & (!\PC|DOUT\(0) & !\PC|DOUT[3]~DUPLICATE_q\)) ) ) # ( !\PC|DOUT\(2) & ( !\PC|DOUT\(0) $ (((!\PC|DOUT\(1) & !\PC|DOUT[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011110000001111001111000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~4_combout\);

-- Location: MLABCELL_X13_Y4_N3
\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ROM|memROM~5_combout\);

-- Location: FF_X13_Y4_N38
\PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inc|Add0~25_sumout\,
	asdata => \ROM|memROM~5_combout\,
	sload => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y3_N24
\Registradores|registrador~215\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~215_combout\ = ( !\PC|DOUT[2]~DUPLICATE_q\ & ( !\PC|DOUT\(0) & ( (!\PC|DOUT[3]~DUPLICATE_q\ & (\ROM|memROM~0_combout\ & \PC|DOUT[1]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \Registradores|registrador~215_combout\);

-- Location: FF_X14_Y3_N44
\Registradores|registrador~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MUX_ULA|saida_MUX[1]~1_combout\,
	sload => VCC,
	ena => \Registradores|registrador~215_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~30_q\);

-- Location: LABCELL_X14_Y4_N24
\Registradores|registrador~216\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~216_combout\ = ( \ROM|memROM~0_combout\ & ( \PC|DOUT\(2) & ( (!\PC|DOUT[0]~DUPLICATE_q\ & (!\PC|DOUT[3]~DUPLICATE_q\ & \PC|DOUT\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(1),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \Registradores|registrador~216_combout\);

-- Location: FF_X13_Y4_N14
\Registradores|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MUX_ULA|saida_MUX[1]~1_combout\,
	sload => VCC,
	ena => \Registradores|registrador~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~38_q\);

-- Location: MLABCELL_X13_Y4_N57
\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = ( \ROM|memROM~0_combout\ & ( (\PC|DOUT[1]~DUPLICATE_q\ & (\PC|DOUT\(0) & !\PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~13_combout\);

-- Location: LABCELL_X14_Y3_N12
\Registradores|registrador~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~174_combout\ = ( \ROM|memROM~13_combout\ & ( (!\PC|DOUT[2]~DUPLICATE_q\ & (\Registradores|registrador~30_q\)) # (\PC|DOUT[2]~DUPLICATE_q\ & ((\Registradores|registrador~38_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \Registradores|ALT_INV_registrador~30_q\,
	datac => \Registradores|ALT_INV_registrador~38_q\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \Registradores|registrador~174_combout\);

-- Location: LABCELL_X14_Y4_N45
\UC|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Equal3~0_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~9_combout\ & (!\ROM|memROM~10_combout\ & !\ROM|memROM~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \UC|Equal3~0_combout\);

-- Location: IOIBUF_X19_Y0_N1
\dataIn[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(0),
	o => \dataIn[0]~input_o\);

-- Location: MLABCELL_X13_Y3_N30
\ULA|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~34_cout\ = CARRY(( !\UC|Equal3~0_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \UC|ALT_INV_Equal3~0_combout\,
	cin => GND,
	cout => \ULA|Add0~34_cout\);

-- Location: MLABCELL_X13_Y3_N33
\ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~1_sumout\ = SUM(( \Registradores|registrador~141_combout\ ) + ( !\UC|Equal3~0_combout\ $ (\Registradores|registrador~173_combout\) ) + ( \ULA|Add0~34_cout\ ))
-- \ULA|Add0~2\ = CARRY(( \Registradores|registrador~141_combout\ ) + ( !\UC|Equal3~0_combout\ $ (\Registradores|registrador~173_combout\) ) + ( \ULA|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal3~0_combout\,
	datac => \Registradores|ALT_INV_registrador~173_combout\,
	datad => \Registradores|ALT_INV_registrador~141_combout\,
	cin => \ULA|Add0~34_cout\,
	sumout => \ULA|Add0~1_sumout\,
	cout => \ULA|Add0~2\);

-- Location: LABCELL_X14_Y3_N18
\ULA|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~0_combout\ = (!\UC|palavraControle[3]~0_combout\ & (\Registradores|registrador~141_combout\)) # (\UC|palavraControle[3]~0_combout\ & ((\ULA|Add0~1_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle[3]~0_combout\,
	datac => \Registradores|ALT_INV_registrador~141_combout\,
	datad => \ULA|ALT_INV_Add0~1_sumout\,
	combout => \ULA|saida[0]~0_combout\);

-- Location: LABCELL_X14_Y3_N27
\MUX_ULA|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_ULA|saida_MUX[0]~0_combout\ = ( \ULA|saida[0]~0_combout\ & ( ((!\UC|Equal5~0_combout\ & ((\dataIn[0]~input_o\))) # (\UC|Equal5~0_combout\ & (\ROM|memROM~1_combout\))) # (\UC|palavraControle[3]~0_combout\) ) ) # ( !\ULA|saida[0]~0_combout\ & ( 
-- (!\UC|palavraControle[3]~0_combout\ & ((!\UC|Equal5~0_combout\ & ((\dataIn[0]~input_o\))) # (\UC|Equal5~0_combout\ & (\ROM|memROM~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000100010000111111011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \UC|ALT_INV_palavraControle[3]~0_combout\,
	datac => \ALT_INV_dataIn[0]~input_o\,
	datad => \UC|ALT_INV_Equal5~0_combout\,
	dataf => \ULA|ALT_INV_saida[0]~0_combout\,
	combout => \MUX_ULA|saida_MUX[0]~0_combout\);

-- Location: FF_X14_Y3_N29
\Registradores|registrador~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MUX_ULA|saida_MUX[0]~0_combout\,
	ena => \Registradores|registrador~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~37_q\);

-- Location: FF_X14_Y3_N59
\Registradores|registrador~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MUX_ULA|saida_MUX[0]~0_combout\,
	sload => VCC,
	ena => \Registradores|registrador~215_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~29_q\);

-- Location: LABCELL_X14_Y3_N57
\Registradores|registrador~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~173_combout\ = ( \ROM|memROM~13_combout\ & ( (!\PC|DOUT[2]~DUPLICATE_q\ & ((\Registradores|registrador~29_q\))) # (\PC|DOUT[2]~DUPLICATE_q\ & (\Registradores|registrador~37_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \Registradores|ALT_INV_registrador~37_q\,
	datad => \Registradores|ALT_INV_registrador~29_q\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \Registradores|registrador~173_combout\);

-- Location: MLABCELL_X13_Y3_N36
\ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~5_sumout\ = SUM(( \Registradores|registrador~145_combout\ ) + ( !\Registradores|registrador~174_combout\ $ (\UC|Equal3~0_combout\) ) + ( \ULA|Add0~2\ ))
-- \ULA|Add0~6\ = CARRY(( \Registradores|registrador~145_combout\ ) + ( !\Registradores|registrador~174_combout\ $ (\UC|Equal3~0_combout\) ) + ( \ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111000011110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Registradores|ALT_INV_registrador~174_combout\,
	datac => \UC|ALT_INV_Equal3~0_combout\,
	datad => \Registradores|ALT_INV_registrador~145_combout\,
	cin => \ULA|Add0~2\,
	sumout => \ULA|Add0~5_sumout\,
	cout => \ULA|Add0~6\);

-- Location: MLABCELL_X13_Y3_N15
\ULA|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[1]~1_combout\ = (!\UC|palavraControle[3]~0_combout\ & (\Registradores|registrador~145_combout\)) # (\UC|palavraControle[3]~0_combout\ & ((\ULA|Add0~5_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle[3]~0_combout\,
	datac => \Registradores|ALT_INV_registrador~145_combout\,
	datad => \ULA|ALT_INV_Add0~5_sumout\,
	combout => \ULA|saida[1]~1_combout\);

-- Location: MLABCELL_X13_Y3_N18
\MUX_ULA|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_ULA|saida_MUX[1]~1_combout\ = ( \ULA|saida[1]~1_combout\ & ( ((!\UC|Equal5~0_combout\ & ((\dataIn[1]~input_o\))) # (\UC|Equal5~0_combout\ & (\ROM|memROM~3_combout\))) # (\UC|palavraControle[3]~0_combout\) ) ) # ( !\ULA|saida[1]~1_combout\ & ( 
-- (!\UC|palavraControle[3]~0_combout\ & ((!\UC|Equal5~0_combout\ & ((\dataIn[1]~input_o\))) # (\UC|Equal5~0_combout\ & (\ROM|memROM~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001010111110111110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle[3]~0_combout\,
	datab => \UC|ALT_INV_Equal5~0_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ALT_INV_dataIn[1]~input_o\,
	dataf => \ULA|ALT_INV_saida[1]~1_combout\,
	combout => \MUX_ULA|saida_MUX[1]~1_combout\);

-- Location: LABCELL_X12_Y3_N6
\Registradores|registrador~214\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~214_combout\ = ( \PC|DOUT\(0) & ( (!\PC|DOUT[3]~DUPLICATE_q\ & (\ROM|memROM~0_combout\ & (\PC|DOUT[1]~DUPLICATE_q\ & \PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \Registradores|registrador~214_combout\);

-- Location: FF_X13_Y3_N5
\Registradores|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MUX_ULA|saida_MUX[1]~1_combout\,
	sload => VCC,
	ena => \Registradores|registrador~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~46_q\);

-- Location: MLABCELL_X13_Y4_N0
\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = ( \ROM|memROM~0_combout\ & ( (\PC|DOUT[2]~DUPLICATE_q\ & (\PC|DOUT\(0) & (\PC|DOUT[1]~DUPLICATE_q\ & !\PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~14_combout\);

-- Location: MLABCELL_X13_Y4_N6
\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = ( \ROM|memROM~0_combout\ & ( (\PC|DOUT[1]~DUPLICATE_q\ & (!\PC|DOUT[3]~DUPLICATE_q\ & (\PC|DOUT[0]~DUPLICATE_q\ & !\PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~15_combout\);

-- Location: LABCELL_X12_Y3_N9
\Registradores|registrador~213\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~213_combout\ = ( \PC|DOUT\(0) & ( (!\PC|DOUT[3]~DUPLICATE_q\ & (\ROM|memROM~0_combout\ & (!\PC|DOUT[1]~DUPLICATE_q\ & !\PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \Registradores|registrador~213_combout\);

-- Location: FF_X13_Y3_N20
\Registradores|registrador~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MUX_ULA|saida_MUX[1]~1_combout\,
	ena => \Registradores|registrador~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~22_q\);

-- Location: MLABCELL_X13_Y4_N15
\Registradores|registrador~185\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~185_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~8_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~8_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( \ROM|memROM~14_combout\ & ( 
-- !\ROM|memROM~8_combout\ & ( (!\ROM|memROM~15_combout\ & (\Registradores|registrador~30_q\)) # (\ROM|memROM~15_combout\ & ((\Registradores|registrador~38_q\))) ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~8_combout\ & ( (\ROM|memROM~15_combout\ & 
-- \Registradores|registrador~22_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010100110101001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~30_q\,
	datab => \Registradores|ALT_INV_registrador~38_q\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \Registradores|ALT_INV_registrador~22_q\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \Registradores|registrador~185_combout\);

-- Location: MLABCELL_X13_Y4_N54
\Registradores|registrador~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~145_combout\ = ( \Registradores|registrador~185_combout\ & ( !\ROM|memROM~8_combout\ ) ) # ( !\Registradores|registrador~185_combout\ & ( (\ROM|memROM~8_combout\ & (\Registradores|registrador~46_q\ & !\ROM|memROM~14_combout\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \Registradores|ALT_INV_registrador~46_q\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \Registradores|ALT_INV_registrador~185_combout\,
	combout => \Registradores|registrador~145_combout\);

-- Location: LABCELL_X12_Y3_N39
\ULA|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~0_combout\ = ( \ULA|Add0~5_sumout\ & ( \ULA|Add0~1_sumout\ & ( (!\Registradores|registrador~145_combout\ & (!\Registradores|registrador~141_combout\ & !\UC|palavraControle[3]~0_combout\)) ) ) ) # ( !\ULA|Add0~5_sumout\ & ( \ULA|Add0~1_sumout\ 
-- & ( (!\Registradores|registrador~145_combout\ & (!\Registradores|registrador~141_combout\ & !\UC|palavraControle[3]~0_combout\)) ) ) ) # ( \ULA|Add0~5_sumout\ & ( !\ULA|Add0~1_sumout\ & ( (!\Registradores|registrador~145_combout\ & 
-- (!\Registradores|registrador~141_combout\ & !\UC|palavraControle[3]~0_combout\)) ) ) ) # ( !\ULA|Add0~5_sumout\ & ( !\ULA|Add0~1_sumout\ & ( ((!\Registradores|registrador~145_combout\ & !\Registradores|registrador~141_combout\)) # 
-- (\UC|palavraControle[3]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011111111101000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~145_combout\,
	datac => \Registradores|ALT_INV_registrador~141_combout\,
	datad => \UC|ALT_INV_palavraControle[3]~0_combout\,
	datae => \ULA|ALT_INV_Add0~5_sumout\,
	dataf => \ULA|ALT_INV_Add0~1_sumout\,
	combout => \ULA|Equal8~0_combout\);

-- Location: IOIBUF_X24_Y0_N18
\dataIn[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(4),
	o => \dataIn[4]~input_o\);

-- Location: FF_X14_Y3_N14
\Registradores|registrador~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MUX_ULA|saida_MUX[4]~4_combout\,
	sload => VCC,
	ena => \Registradores|registrador~215_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~33_q\);

-- Location: FF_X14_Y4_N29
\Registradores|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MUX_ULA|saida_MUX[4]~4_combout\,
	sload => VCC,
	ena => \Registradores|registrador~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~41_q\);

-- Location: MLABCELL_X13_Y3_N12
\Registradores|registrador~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~177_combout\ = ( \ROM|memROM~13_combout\ & ( (!\PC|DOUT[2]~DUPLICATE_q\ & (\Registradores|registrador~33_q\)) # (\PC|DOUT[2]~DUPLICATE_q\ & ((\Registradores|registrador~41_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \Registradores|ALT_INV_registrador~33_q\,
	datad => \Registradores|ALT_INV_registrador~41_q\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \Registradores|registrador~177_combout\);

-- Location: IOIBUF_X19_Y0_N18
\dataIn[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(3),
	o => \dataIn[3]~input_o\);

-- Location: FF_X13_Y3_N59
\Registradores|registrador~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MUX_ULA|saida_MUX[3]~3_combout\,
	sload => VCC,
	ena => \Registradores|registrador~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~48_q\);

-- Location: FF_X14_Y3_N50
\Registradores|registrador~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MUX_ULA|saida_MUX[3]~3_combout\,
	ena => \Registradores|registrador~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~24_q\);

-- Location: FF_X14_Y3_N32
\Registradores|registrador~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MUX_ULA|saida_MUX[3]~3_combout\,
	sload => VCC,
	ena => \Registradores|registrador~215_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~32_q\);

-- Location: LABCELL_X14_Y3_N9
\Registradores|registrador~193\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~193_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~8_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~8_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( \ROM|memROM~14_combout\ & ( 
-- !\ROM|memROM~8_combout\ & ( (!\ROM|memROM~15_combout\ & ((\Registradores|registrador~32_q\))) # (\ROM|memROM~15_combout\ & (\Registradores|registrador~40_q\)) ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~8_combout\ & ( 
-- (\Registradores|registrador~24_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~24_q\,
	datab => \Registradores|ALT_INV_registrador~40_q\,
	datac => \Registradores|ALT_INV_registrador~32_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \Registradores|registrador~193_combout\);

-- Location: LABCELL_X14_Y3_N21
\Registradores|registrador~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~153_combout\ = ( \Registradores|registrador~193_combout\ & ( !\ROM|memROM~8_combout\ ) ) # ( !\Registradores|registrador~193_combout\ & ( (\ROM|memROM~8_combout\ & (\Registradores|registrador~48_q\ & !\ROM|memROM~14_combout\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \Registradores|ALT_INV_registrador~48_q\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \Registradores|ALT_INV_registrador~193_combout\,
	combout => \Registradores|registrador~153_combout\);

-- Location: IOIBUF_X25_Y0_N35
\dataIn[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(2),
	o => \dataIn[2]~input_o\);

-- Location: FF_X14_Y3_N56
\Registradores|registrador~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MUX_ULA|saida_MUX[2]~2_combout\,
	sload => VCC,
	ena => \Registradores|registrador~215_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~31_q\);

-- Location: FF_X13_Y4_N26
\Registradores|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MUX_ULA|saida_MUX[2]~2_combout\,
	sload => VCC,
	ena => \Registradores|registrador~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~39_q\);

-- Location: LABCELL_X14_Y3_N3
\Registradores|registrador~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~175_combout\ = ( \ROM|memROM~13_combout\ & ( (!\PC|DOUT[2]~DUPLICATE_q\ & (\Registradores|registrador~31_q\)) # (\PC|DOUT[2]~DUPLICATE_q\ & ((\Registradores|registrador~39_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \Registradores|ALT_INV_registrador~31_q\,
	datac => \Registradores|ALT_INV_registrador~39_q\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \Registradores|registrador~175_combout\);

-- Location: MLABCELL_X13_Y3_N39
\ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~9_sumout\ = SUM(( !\UC|Equal3~0_combout\ $ (\Registradores|registrador~175_combout\) ) + ( \Registradores|registrador~149_combout\ ) + ( \ULA|Add0~6\ ))
-- \ULA|Add0~10\ = CARRY(( !\UC|Equal3~0_combout\ $ (\Registradores|registrador~175_combout\) ) + ( \Registradores|registrador~149_combout\ ) + ( \ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal3~0_combout\,
	datac => \Registradores|ALT_INV_registrador~149_combout\,
	datad => \Registradores|ALT_INV_registrador~175_combout\,
	cin => \ULA|Add0~6\,
	sumout => \ULA|Add0~9_sumout\,
	cout => \ULA|Add0~10\);

-- Location: MLABCELL_X13_Y3_N3
\ULA|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[2]~2_combout\ = ( \ULA|Add0~9_sumout\ & ( (\Registradores|registrador~149_combout\) # (\UC|palavraControle[3]~0_combout\) ) ) # ( !\ULA|Add0~9_sumout\ & ( (!\UC|palavraControle[3]~0_combout\ & \Registradores|registrador~149_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle[3]~0_combout\,
	datac => \Registradores|ALT_INV_registrador~149_combout\,
	dataf => \ULA|ALT_INV_Add0~9_sumout\,
	combout => \ULA|saida[2]~2_combout\);

-- Location: MLABCELL_X13_Y3_N21
\MUX_ULA|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_ULA|saida_MUX[2]~2_combout\ = ( \ROM|memROM~5_combout\ & ( (!\UC|palavraControle[3]~0_combout\ & (((\dataIn[2]~input_o\)) # (\UC|Equal5~0_combout\))) # (\UC|palavraControle[3]~0_combout\ & (((\ULA|saida[2]~2_combout\)))) ) ) # ( 
-- !\ROM|memROM~5_combout\ & ( (!\UC|palavraControle[3]~0_combout\ & (!\UC|Equal5~0_combout\ & (\dataIn[2]~input_o\))) # (\UC|palavraControle[3]~0_combout\ & (((\ULA|saida[2]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001011101000010000101110100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle[3]~0_combout\,
	datab => \UC|ALT_INV_Equal5~0_combout\,
	datac => \ALT_INV_dataIn[2]~input_o\,
	datad => \ULA|ALT_INV_saida[2]~2_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \MUX_ULA|saida_MUX[2]~2_combout\);

-- Location: FF_X13_Y4_N4
\Registradores|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MUX_ULA|saida_MUX[2]~2_combout\,
	sload => VCC,
	ena => \Registradores|registrador~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~47_q\);

-- Location: FF_X13_Y3_N23
\Registradores|registrador~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MUX_ULA|saida_MUX[2]~2_combout\,
	ena => \Registradores|registrador~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~23_q\);

-- Location: MLABCELL_X13_Y4_N27
\Registradores|registrador~189\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~189_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~8_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~8_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( \ROM|memROM~14_combout\ & ( 
-- !\ROM|memROM~8_combout\ & ( (!\ROM|memROM~15_combout\ & ((\Registradores|registrador~31_q\))) # (\ROM|memROM~15_combout\ & (\Registradores|registrador~39_q\)) ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~8_combout\ & ( (\ROM|memROM~15_combout\ & 
-- \Registradores|registrador~23_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001101010011010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~39_q\,
	datab => \Registradores|ALT_INV_registrador~31_q\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \Registradores|ALT_INV_registrador~23_q\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \Registradores|registrador~189_combout\);

-- Location: MLABCELL_X13_Y4_N21
\Registradores|registrador~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~149_combout\ = ( \Registradores|registrador~189_combout\ & ( !\ROM|memROM~8_combout\ ) ) # ( !\Registradores|registrador~189_combout\ & ( (\Registradores|registrador~47_q\ & (\ROM|memROM~8_combout\ & !\ROM|memROM~14_combout\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Registradores|ALT_INV_registrador~47_q\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \Registradores|ALT_INV_registrador~189_combout\,
	combout => \Registradores|registrador~149_combout\);

-- Location: MLABCELL_X13_Y3_N42
\ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~13_sumout\ = SUM(( \Registradores|registrador~153_combout\ ) + ( !\UC|Equal3~0_combout\ $ (\Registradores|registrador~176_combout\) ) + ( \ULA|Add0~10\ ))
-- \ULA|Add0~14\ = CARRY(( \Registradores|registrador~153_combout\ ) + ( !\UC|Equal3~0_combout\ $ (\Registradores|registrador~176_combout\) ) + ( \ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal3~0_combout\,
	datac => \Registradores|ALT_INV_registrador~176_combout\,
	datad => \Registradores|ALT_INV_registrador~153_combout\,
	cin => \ULA|Add0~10\,
	sumout => \ULA|Add0~13_sumout\,
	cout => \ULA|Add0~14\);

-- Location: LABCELL_X14_Y3_N24
\ULA|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[3]~3_combout\ = ( \ULA|Add0~13_sumout\ & ( (\Registradores|registrador~153_combout\) # (\UC|palavraControle[3]~0_combout\) ) ) # ( !\ULA|Add0~13_sumout\ & ( (!\UC|palavraControle[3]~0_combout\ & \Registradores|registrador~153_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UC|ALT_INV_palavraControle[3]~0_combout\,
	datac => \Registradores|ALT_INV_registrador~153_combout\,
	dataf => \ULA|ALT_INV_Add0~13_sumout\,
	combout => \ULA|saida[3]~3_combout\);

-- Location: LABCELL_X14_Y3_N48
\MUX_ULA|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_ULA|saida_MUX[3]~3_combout\ = ( \ULA|saida[3]~3_combout\ & ( ((!\UC|Equal5~0_combout\ & ((\dataIn[3]~input_o\))) # (\UC|Equal5~0_combout\ & (\ROM|memROM~7_combout\))) # (\UC|palavraControle[3]~0_combout\) ) ) # ( !\ULA|saida[3]~3_combout\ & ( 
-- (!\UC|palavraControle[3]~0_combout\ & ((!\UC|Equal5~0_combout\ & ((\dataIn[3]~input_o\))) # (\UC|Equal5~0_combout\ & (\ROM|memROM~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000100010000111111011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \UC|ALT_INV_palavraControle[3]~0_combout\,
	datac => \ALT_INV_dataIn[3]~input_o\,
	datad => \UC|ALT_INV_Equal5~0_combout\,
	dataf => \ULA|ALT_INV_saida[3]~3_combout\,
	combout => \MUX_ULA|saida_MUX[3]~3_combout\);

-- Location: FF_X14_Y3_N8
\Registradores|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MUX_ULA|saida_MUX[3]~3_combout\,
	sload => VCC,
	ena => \Registradores|registrador~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~40_q\);

-- Location: LABCELL_X14_Y3_N30
\Registradores|registrador~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~176_combout\ = ( \ROM|memROM~13_combout\ & ( (!\PC|DOUT[2]~DUPLICATE_q\ & ((\Registradores|registrador~32_q\))) # (\PC|DOUT[2]~DUPLICATE_q\ & (\Registradores|registrador~40_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Registradores|ALT_INV_registrador~40_q\,
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \Registradores|ALT_INV_registrador~32_q\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \Registradores|registrador~176_combout\);

-- Location: MLABCELL_X13_Y3_N45
\ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~17_sumout\ = SUM(( \Registradores|registrador~157_combout\ ) + ( !\UC|Equal3~0_combout\ $ (\Registradores|registrador~177_combout\) ) + ( \ULA|Add0~14\ ))
-- \ULA|Add0~18\ = CARRY(( \Registradores|registrador~157_combout\ ) + ( !\UC|Equal3~0_combout\ $ (\Registradores|registrador~177_combout\) ) + ( \ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal3~0_combout\,
	datac => \Registradores|ALT_INV_registrador~177_combout\,
	datad => \Registradores|ALT_INV_registrador~157_combout\,
	cin => \ULA|Add0~14\,
	sumout => \ULA|Add0~17_sumout\,
	cout => \ULA|Add0~18\);

-- Location: LABCELL_X14_Y3_N51
\ULA|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[4]~4_combout\ = ( \ULA|Add0~17_sumout\ & ( (\Registradores|registrador~157_combout\) # (\UC|palavraControle[3]~0_combout\) ) ) # ( !\ULA|Add0~17_sumout\ & ( (!\UC|palavraControle[3]~0_combout\ & \Registradores|registrador~157_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UC|ALT_INV_palavraControle[3]~0_combout\,
	datac => \Registradores|ALT_INV_registrador~157_combout\,
	dataf => \ULA|ALT_INV_Add0~17_sumout\,
	combout => \ULA|saida[4]~4_combout\);

-- Location: LABCELL_X14_Y3_N36
\MUX_ULA|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_ULA|saida_MUX[4]~4_combout\ = ( \UC|palavraControle[3]~0_combout\ & ( \ULA|saida[4]~4_combout\ ) ) # ( !\UC|palavraControle[3]~0_combout\ & ( \ULA|saida[4]~4_combout\ & ( (!\UC|Equal5~0_combout\ & (\dataIn[4]~input_o\)) # (\UC|Equal5~0_combout\ & 
-- ((\ROM|memROM~8_combout\))) ) ) ) # ( !\UC|palavraControle[3]~0_combout\ & ( !\ULA|saida[4]~4_combout\ & ( (!\UC|Equal5~0_combout\ & (\dataIn[4]~input_o\)) # (\UC|Equal5~0_combout\ & ((\ROM|memROM~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000000000000000000001010010111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal5~0_combout\,
	datac => \ALT_INV_dataIn[4]~input_o\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	datae => \UC|ALT_INV_palavraControle[3]~0_combout\,
	dataf => \ULA|ALT_INV_saida[4]~4_combout\,
	combout => \MUX_ULA|saida_MUX[4]~4_combout\);

-- Location: FF_X14_Y4_N32
\Registradores|registrador~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MUX_ULA|saida_MUX[4]~4_combout\,
	sload => VCC,
	ena => \Registradores|registrador~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~49_q\);

-- Location: FF_X14_Y3_N37
\Registradores|registrador~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MUX_ULA|saida_MUX[4]~4_combout\,
	ena => \Registradores|registrador~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~25_q\);

-- Location: LABCELL_X14_Y4_N39
\Registradores|registrador~197\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~197_combout\ = ( \Registradores|registrador~33_q\ & ( \ROM|memROM~14_combout\ & ( (!\ROM|memROM~8_combout\ & ((!\ROM|memROM~15_combout\) # (\Registradores|registrador~41_q\))) # (\ROM|memROM~8_combout\ & 
-- ((\ROM|memROM~15_combout\))) ) ) ) # ( !\Registradores|registrador~33_q\ & ( \ROM|memROM~14_combout\ & ( (\ROM|memROM~15_combout\ & ((\ROM|memROM~8_combout\) # (\Registradores|registrador~41_q\))) ) ) ) # ( \Registradores|registrador~33_q\ & ( 
-- !\ROM|memROM~14_combout\ & ( (\ROM|memROM~15_combout\ & ((\ROM|memROM~8_combout\) # (\Registradores|registrador~25_q\))) ) ) ) # ( !\Registradores|registrador~33_q\ & ( !\ROM|memROM~14_combout\ & ( (\ROM|memROM~15_combout\ & ((\ROM|memROM~8_combout\) # 
-- (\Registradores|registrador~25_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100000000010111111111000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~41_q\,
	datab => \Registradores|ALT_INV_registrador~25_q\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \Registradores|ALT_INV_registrador~33_q\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \Registradores|registrador~197_combout\);

-- Location: LABCELL_X14_Y4_N30
\Registradores|registrador~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~157_combout\ = ( \Registradores|registrador~49_q\ & ( \Registradores|registrador~197_combout\ & ( !\ROM|memROM~8_combout\ ) ) ) # ( !\Registradores|registrador~49_q\ & ( \Registradores|registrador~197_combout\ & ( 
-- !\ROM|memROM~8_combout\ ) ) ) # ( \Registradores|registrador~49_q\ & ( !\Registradores|registrador~197_combout\ & ( (!\ROM|memROM~14_combout\ & \ROM|memROM~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	datae => \Registradores|ALT_INV_registrador~49_q\,
	dataf => \Registradores|ALT_INV_registrador~197_combout\,
	combout => \Registradores|registrador~157_combout\);

-- Location: IOIBUF_X23_Y0_N58
\dataIn[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(5),
	o => \dataIn[5]~input_o\);

-- Location: FF_X14_Y2_N56
\Registradores|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MUX_ULA|saida_MUX[5]~5_combout\,
	sload => VCC,
	ena => \Registradores|registrador~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~42_q\);

-- Location: FF_X14_Y3_N1
\Registradores|registrador~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MUX_ULA|saida_MUX[5]~5_combout\,
	sload => VCC,
	ena => \Registradores|registrador~215_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~34_q\);

-- Location: LABCELL_X14_Y3_N0
\Registradores|registrador~178\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~178_combout\ = ( \ROM|memROM~13_combout\ & ( (!\PC|DOUT[2]~DUPLICATE_q\ & ((\Registradores|registrador~34_q\))) # (\PC|DOUT[2]~DUPLICATE_q\ & (\Registradores|registrador~42_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \Registradores|ALT_INV_registrador~42_q\,
	datad => \Registradores|ALT_INV_registrador~34_q\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \Registradores|registrador~178_combout\);

-- Location: MLABCELL_X13_Y3_N48
\ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~21_sumout\ = SUM(( \Registradores|registrador~161_combout\ ) + ( !\UC|Equal3~0_combout\ $ (\Registradores|registrador~178_combout\) ) + ( \ULA|Add0~18\ ))
-- \ULA|Add0~22\ = CARRY(( \Registradores|registrador~161_combout\ ) + ( !\UC|Equal3~0_combout\ $ (\Registradores|registrador~178_combout\) ) + ( \ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal3~0_combout\,
	datac => \Registradores|ALT_INV_registrador~178_combout\,
	datad => \Registradores|ALT_INV_registrador~161_combout\,
	cin => \ULA|Add0~18\,
	sumout => \ULA|Add0~21_sumout\,
	cout => \ULA|Add0~22\);

-- Location: LABCELL_X14_Y3_N33
\MUX_ULA|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_ULA|saida_MUX[5]~5_combout\ = ( \ULA|Add0~21_sumout\ & ( ((!\UC|Equal5~0_combout\ & \dataIn[5]~input_o\)) # (\UC|palavraControle[3]~0_combout\) ) ) # ( !\ULA|Add0~21_sumout\ & ( (!\UC|Equal5~0_combout\ & (!\UC|palavraControle[3]~0_combout\ & 
-- \dataIn[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000001111101011110000111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal5~0_combout\,
	datac => \UC|ALT_INV_palavraControle[3]~0_combout\,
	datad => \ALT_INV_dataIn[5]~input_o\,
	dataf => \ULA|ALT_INV_Add0~21_sumout\,
	combout => \MUX_ULA|saida_MUX[5]~5_combout\);

-- Location: FF_X14_Y2_N5
\Registradores|registrador~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MUX_ULA|saida_MUX[5]~5_combout\,
	sload => VCC,
	ena => \Registradores|registrador~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~50_q\);

-- Location: FF_X14_Y3_N22
\Registradores|registrador~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MUX_ULA|saida_MUX[5]~5_combout\,
	sload => VCC,
	ena => \Registradores|registrador~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~26_q\);

-- Location: LABCELL_X14_Y2_N33
\Registradores|registrador~201\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~201_combout\ = ( \ROM|memROM~15_combout\ & ( \ROM|memROM~8_combout\ ) ) # ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~8_combout\ & ( (!\ROM|memROM~14_combout\ & ((\Registradores|registrador~26_q\))) # (\ROM|memROM~14_combout\ & 
-- (\Registradores|registrador~42_q\)) ) ) ) # ( !\ROM|memROM~15_combout\ & ( !\ROM|memROM~8_combout\ & ( (\Registradores|registrador~34_q\ & \ROM|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000001011111010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~42_q\,
	datab => \Registradores|ALT_INV_registrador~34_q\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \Registradores|ALT_INV_registrador~26_q\,
	datae => \ROM|ALT_INV_memROM~15_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \Registradores|registrador~201_combout\);

-- Location: LABCELL_X14_Y2_N3
\Registradores|registrador~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~161_combout\ = ( \Registradores|registrador~50_q\ & ( \Registradores|registrador~201_combout\ & ( !\ROM|memROM~8_combout\ ) ) ) # ( !\Registradores|registrador~50_q\ & ( \Registradores|registrador~201_combout\ & ( 
-- !\ROM|memROM~8_combout\ ) ) ) # ( \Registradores|registrador~50_q\ & ( !\Registradores|registrador~201_combout\ & ( (!\ROM|memROM~14_combout\ & \ROM|memROM~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datae => \Registradores|ALT_INV_registrador~50_q\,
	dataf => \Registradores|ALT_INV_registrador~201_combout\,
	combout => \Registradores|registrador~161_combout\);

-- Location: MLABCELL_X13_Y3_N6
\ULA|Equal8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~1_combout\ = ( \ULA|Add0~21_sumout\ & ( (!\UC|palavraControle[3]~0_combout\ & (!\Registradores|registrador~157_combout\ & !\Registradores|registrador~161_combout\)) ) ) # ( !\ULA|Add0~21_sumout\ & ( (!\UC|palavraControle[3]~0_combout\ & 
-- (!\Registradores|registrador~157_combout\ & (!\Registradores|registrador~161_combout\))) # (\UC|palavraControle[3]~0_combout\ & (((!\ULA|Add0~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010110000000110101011000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle[3]~0_combout\,
	datab => \Registradores|ALT_INV_registrador~157_combout\,
	datac => \Registradores|ALT_INV_registrador~161_combout\,
	datad => \ULA|ALT_INV_Add0~17_sumout\,
	dataf => \ULA|ALT_INV_Add0~21_sumout\,
	combout => \ULA|Equal8~1_combout\);

-- Location: MLABCELL_X13_Y3_N27
\ULA|Equal8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~2_combout\ = ( \ULA|Add0~13_sumout\ & ( (!\UC|palavraControle[3]~0_combout\ & (!\Registradores|registrador~149_combout\ & !\Registradores|registrador~153_combout\)) ) ) # ( !\ULA|Add0~13_sumout\ & ( (!\UC|palavraControle[3]~0_combout\ & 
-- (!\Registradores|registrador~149_combout\ & ((!\Registradores|registrador~153_combout\)))) # (\UC|palavraControle[3]~0_combout\ & (((!\ULA|Add0~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100001010000110110000101000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle[3]~0_combout\,
	datab => \Registradores|ALT_INV_registrador~149_combout\,
	datac => \ULA|ALT_INV_Add0~9_sumout\,
	datad => \Registradores|ALT_INV_registrador~153_combout\,
	dataf => \ULA|ALT_INV_Add0~13_sumout\,
	combout => \ULA|Equal8~2_combout\);

-- Location: IOIBUF_X12_Y0_N35
\dataIn[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(6),
	o => \dataIn[6]~input_o\);

-- Location: FF_X13_Y3_N14
\Registradores|registrador~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MUX_ULA|saida_MUX[6]~6_combout\,
	sload => VCC,
	ena => \Registradores|registrador~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~43_q\);

-- Location: FF_X14_Y3_N16
\Registradores|registrador~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MUX_ULA|saida_MUX[6]~6_combout\,
	sload => VCC,
	ena => \Registradores|registrador~215_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~35_q\);

-- Location: LABCELL_X14_Y3_N15
\Registradores|registrador~179\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~179_combout\ = ( \ROM|memROM~13_combout\ & ( (!\PC|DOUT[2]~DUPLICATE_q\ & ((\Registradores|registrador~35_q\))) # (\PC|DOUT[2]~DUPLICATE_q\ & (\Registradores|registrador~43_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \Registradores|ALT_INV_registrador~43_q\,
	datad => \Registradores|ALT_INV_registrador~35_q\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \Registradores|registrador~179_combout\);

-- Location: MLABCELL_X13_Y3_N51
\ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~25_sumout\ = SUM(( !\UC|Equal3~0_combout\ $ (\Registradores|registrador~179_combout\) ) + ( \Registradores|registrador~165_combout\ ) + ( \ULA|Add0~22\ ))
-- \ULA|Add0~26\ = CARRY(( !\UC|Equal3~0_combout\ $ (\Registradores|registrador~179_combout\) ) + ( \Registradores|registrador~165_combout\ ) + ( \ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal3~0_combout\,
	datac => \Registradores|ALT_INV_registrador~165_combout\,
	datad => \Registradores|ALT_INV_registrador~179_combout\,
	cin => \ULA|Add0~22\,
	sumout => \ULA|Add0~25_sumout\,
	cout => \ULA|Add0~26\);

-- Location: MLABCELL_X13_Y3_N24
\MUX_ULA|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_ULA|saida_MUX[6]~6_combout\ = ( \ULA|Add0~25_sumout\ & ( ((\dataIn[6]~input_o\ & !\UC|Equal5~0_combout\)) # (\UC|palavraControle[3]~0_combout\) ) ) # ( !\ULA|Add0~25_sumout\ & ( (!\UC|palavraControle[3]~0_combout\ & (\dataIn[6]~input_o\ & 
-- !\UC|Equal5~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000001011111010101010101111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle[3]~0_combout\,
	datac => \ALT_INV_dataIn[6]~input_o\,
	datad => \UC|ALT_INV_Equal5~0_combout\,
	dataf => \ULA|ALT_INV_Add0~25_sumout\,
	combout => \MUX_ULA|saida_MUX[6]~6_combout\);

-- Location: FF_X12_Y3_N59
\Registradores|registrador~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MUX_ULA|saida_MUX[6]~6_combout\,
	sload => VCC,
	ena => \Registradores|registrador~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~51_q\);

-- Location: FF_X13_Y3_N25
\Registradores|registrador~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MUX_ULA|saida_MUX[6]~6_combout\,
	ena => \Registradores|registrador~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~27_q\);

-- Location: LABCELL_X12_Y3_N30
\Registradores|registrador~205\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~205_combout\ = ( \ROM|memROM~8_combout\ & ( \ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~8_combout\ & ( \ROM|memROM~14_combout\ & ( (!\ROM|memROM~15_combout\ & (\Registradores|registrador~35_q\)) # 
-- (\ROM|memROM~15_combout\ & ((\Registradores|registrador~43_q\))) ) ) ) # ( \ROM|memROM~8_combout\ & ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~8_combout\ & ( !\ROM|memROM~14_combout\ & ( (\Registradores|registrador~27_q\ 
-- & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011110000111101010000010111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~35_q\,
	datab => \Registradores|ALT_INV_registrador~27_q\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \Registradores|ALT_INV_registrador~43_q\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \Registradores|registrador~205_combout\);

-- Location: LABCELL_X12_Y3_N57
\Registradores|registrador~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~165_combout\ = ( \Registradores|registrador~51_q\ & ( \Registradores|registrador~205_combout\ & ( !\ROM|memROM~8_combout\ ) ) ) # ( !\Registradores|registrador~51_q\ & ( \Registradores|registrador~205_combout\ & ( 
-- !\ROM|memROM~8_combout\ ) ) ) # ( \Registradores|registrador~51_q\ & ( !\Registradores|registrador~205_combout\ & ( (\ROM|memROM~8_combout\ & !\ROM|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \Registradores|ALT_INV_registrador~51_q\,
	dataf => \Registradores|ALT_INV_registrador~205_combout\,
	combout => \Registradores|registrador~165_combout\);

-- Location: IOIBUF_X24_Y0_N52
\dataIn[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(7),
	o => \dataIn[7]~input_o\);

-- Location: FF_X14_Y3_N5
\Registradores|registrador~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MUX_ULA|saida_MUX[7]~7_combout\,
	sload => VCC,
	ena => \Registradores|registrador~215_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~36_q\);

-- Location: FF_X14_Y2_N50
\Registradores|registrador~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MUX_ULA|saida_MUX[7]~7_combout\,
	sload => VCC,
	ena => \Registradores|registrador~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~44_q\);

-- Location: LABCELL_X14_Y3_N54
\Registradores|registrador~180\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~180_combout\ = ( \Registradores|registrador~44_q\ & ( (\ROM|memROM~13_combout\ & ((\Registradores|registrador~36_q\) # (\PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\Registradores|registrador~44_q\ & ( (!\PC|DOUT[2]~DUPLICATE_q\ & 
-- (\ROM|memROM~13_combout\ & \Registradores|registrador~36_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \Registradores|ALT_INV_registrador~36_q\,
	dataf => \Registradores|ALT_INV_registrador~44_q\,
	combout => \Registradores|registrador~180_combout\);

-- Location: MLABCELL_X13_Y3_N54
\ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~29_sumout\ = SUM(( \Registradores|registrador~169_combout\ ) + ( !\Registradores|registrador~180_combout\ $ (\UC|Equal3~0_combout\) ) + ( \ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111000011110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Registradores|ALT_INV_registrador~180_combout\,
	datac => \UC|ALT_INV_Equal3~0_combout\,
	datad => \Registradores|ALT_INV_registrador~169_combout\,
	cin => \ULA|Add0~26\,
	sumout => \ULA|Add0~29_sumout\);

-- Location: MLABCELL_X13_Y3_N9
\MUX_ULA|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_ULA|saida_MUX[7]~7_combout\ = ( \UC|Equal5~0_combout\ & ( (\UC|palavraControle[3]~0_combout\ & \ULA|Add0~29_sumout\) ) ) # ( !\UC|Equal5~0_combout\ & ( (!\UC|palavraControle[3]~0_combout\ & (\dataIn[7]~input_o\)) # (\UC|palavraControle[3]~0_combout\ 
-- & ((\ULA|Add0~29_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle[3]~0_combout\,
	datac => \ALT_INV_dataIn[7]~input_o\,
	datad => \ULA|ALT_INV_Add0~29_sumout\,
	dataf => \UC|ALT_INV_Equal5~0_combout\,
	combout => \MUX_ULA|saida_MUX[7]~7_combout\);

-- Location: FF_X14_Y2_N26
\Registradores|registrador~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MUX_ULA|saida_MUX[7]~7_combout\,
	sload => VCC,
	ena => \Registradores|registrador~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~52_q\);

-- Location: FF_X13_Y3_N11
\Registradores|registrador~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MUX_ULA|saida_MUX[7]~7_combout\,
	ena => \Registradores|registrador~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~28_q\);

-- Location: LABCELL_X14_Y2_N42
\Registradores|registrador~209\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~209_combout\ = ( \ROM|memROM~15_combout\ & ( \ROM|memROM~14_combout\ & ( (\ROM|memROM~8_combout\) # (\Registradores|registrador~44_q\) ) ) ) # ( !\ROM|memROM~15_combout\ & ( \ROM|memROM~14_combout\ & ( 
-- (\Registradores|registrador~36_q\ & !\ROM|memROM~8_combout\) ) ) ) # ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ & ( (\ROM|memROM~8_combout\) # (\Registradores|registrador~28_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111111100110011000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~44_q\,
	datab => \Registradores|ALT_INV_registrador~36_q\,
	datac => \Registradores|ALT_INV_registrador~28_q\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	datae => \ROM|ALT_INV_memROM~15_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \Registradores|registrador~209_combout\);

-- Location: LABCELL_X14_Y2_N24
\Registradores|registrador~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~169_combout\ = ( \Registradores|registrador~52_q\ & ( \Registradores|registrador~209_combout\ & ( !\ROM|memROM~8_combout\ ) ) ) # ( !\Registradores|registrador~52_q\ & ( \Registradores|registrador~209_combout\ & ( 
-- !\ROM|memROM~8_combout\ ) ) ) # ( \Registradores|registrador~52_q\ & ( !\Registradores|registrador~209_combout\ & ( (\ROM|memROM~8_combout\ & !\ROM|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \Registradores|ALT_INV_registrador~52_q\,
	dataf => \Registradores|ALT_INV_registrador~209_combout\,
	combout => \Registradores|registrador~169_combout\);

-- Location: LABCELL_X12_Y3_N51
\ULA|Equal8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~3_combout\ = ( \ULA|Add0~29_sumout\ & ( \ULA|Add0~25_sumout\ & ( (!\UC|palavraControle[3]~0_combout\ & (!\Registradores|registrador~165_combout\ & !\Registradores|registrador~169_combout\)) ) ) ) # ( !\ULA|Add0~29_sumout\ & ( 
-- \ULA|Add0~25_sumout\ & ( (!\UC|palavraControle[3]~0_combout\ & (!\Registradores|registrador~165_combout\ & !\Registradores|registrador~169_combout\)) ) ) ) # ( \ULA|Add0~29_sumout\ & ( !\ULA|Add0~25_sumout\ & ( (!\UC|palavraControle[3]~0_combout\ & 
-- (!\Registradores|registrador~165_combout\ & !\Registradores|registrador~169_combout\)) ) ) ) # ( !\ULA|Add0~29_sumout\ & ( !\ULA|Add0~25_sumout\ & ( ((!\Registradores|registrador~165_combout\ & !\Registradores|registrador~169_combout\)) # 
-- (\UC|palavraControle[3]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010111010101100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle[3]~0_combout\,
	datab => \Registradores|ALT_INV_registrador~165_combout\,
	datac => \Registradores|ALT_INV_registrador~169_combout\,
	datae => \ULA|ALT_INV_Add0~29_sumout\,
	dataf => \ULA|ALT_INV_Add0~25_sumout\,
	combout => \ULA|Equal8~3_combout\);

-- Location: LABCELL_X12_Y3_N42
\flipflop|data_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \flipflop|data_out~0_combout\ = ( \flipflop|data_out~q\ & ( \ULA|Equal8~3_combout\ & ( (!\UC|Equal0~0_combout\) # ((\ULA|Equal8~0_combout\ & (\ULA|Equal8~1_combout\ & \ULA|Equal8~2_combout\))) ) ) ) # ( !\flipflop|data_out~q\ & ( \ULA|Equal8~3_combout\ & 
-- ( (\UC|Equal0~0_combout\ & (\ULA|Equal8~0_combout\ & (\ULA|Equal8~1_combout\ & \ULA|Equal8~2_combout\))) ) ) ) # ( \flipflop|data_out~q\ & ( !\ULA|Equal8~3_combout\ & ( !\UC|Equal0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000011010101010101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal0~0_combout\,
	datab => \ULA|ALT_INV_Equal8~0_combout\,
	datac => \ULA|ALT_INV_Equal8~1_combout\,
	datad => \ULA|ALT_INV_Equal8~2_combout\,
	datae => \flipflop|ALT_INV_data_out~q\,
	dataf => \ULA|ALT_INV_Equal8~3_combout\,
	combout => \flipflop|data_out~0_combout\);

-- Location: FF_X12_Y3_N43
\flipflop|data_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \flipflop|data_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop|data_out~q\);

-- Location: LABCELL_X14_Y2_N48
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( \ROM|memROM~11_combout\ & ( \flipflop|data_out~q\ & ( (!\ROM|memROM~10_combout\ & (\ROM|memROM~12_combout\ & (\ROM|memROM~0_combout\ & !\ROM|memROM~9_combout\))) ) ) ) # ( !\ROM|memROM~11_combout\ & ( \flipflop|data_out~q\ & ( 
-- (!\ROM|memROM~10_combout\ & (\ROM|memROM~12_combout\ & (\ROM|memROM~0_combout\ & !\ROM|memROM~9_combout\))) ) ) ) # ( \ROM|memROM~11_combout\ & ( !\flipflop|data_out~q\ & ( (!\ROM|memROM~10_combout\ & (\ROM|memROM~12_combout\ & (\ROM|memROM~0_combout\ & 
-- !\ROM|memROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \flipflop|ALT_INV_data_out~q\,
	combout => \comb~0_combout\);

-- Location: FF_X13_Y4_N44
\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inc|Add0~5_sumout\,
	asdata => \ROM|memROM~8_combout\,
	sload => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

-- Location: MLABCELL_X13_Y4_N45
\inc|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inc|Add0~9_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \inc|Add0~6\ ))
-- \inc|Add0~10\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \inc|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \inc|Add0~6\,
	sumout => \inc|Add0~9_sumout\,
	cout => \inc|Add0~10\);

-- Location: LABCELL_X16_Y4_N36
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X13_Y4_N47
\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inc|Add0~9_sumout\,
	asdata => \~GND~combout\,
	sload => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

-- Location: MLABCELL_X13_Y4_N48
\inc|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inc|Add0~17_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \inc|Add0~10\ ))
-- \inc|Add0~18\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \inc|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \inc|Add0~10\,
	sumout => \inc|Add0~17_sumout\,
	cout => \inc|Add0~18\);

-- Location: FF_X13_Y4_N50
\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inc|Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

-- Location: MLABCELL_X13_Y4_N51
\inc|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inc|Add0~13_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \inc|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \inc|Add0~18\,
	sumout => \inc|Add0~13_sumout\);

-- Location: FF_X13_Y4_N53
\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inc|Add0~13_sumout\,
	asdata => \~GND~combout\,
	sload => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

-- Location: MLABCELL_X13_Y4_N18
\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( !\PC|DOUT\(4) & ( (!\PC|DOUT\(6) & (!\PC|DOUT\(7) & !\PC|DOUT\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \PC|ALT_INV_DOUT\(5),
	dataf => \PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~0_combout\);

-- Location: LABCELL_X12_Y3_N12
\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = ( \PC|DOUT\(0) & ( (!\PC|DOUT[3]~DUPLICATE_q\ & (!\PC|DOUT[1]~DUPLICATE_q\ & !\PC|DOUT[2]~DUPLICATE_q\)) ) ) # ( !\PC|DOUT\(0) & ( (!\PC|DOUT[3]~DUPLICATE_q\ & ((\PC|DOUT[2]~DUPLICATE_q\) # (\PC|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101010000010101010101010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \ROM|memROM~6_combout\);

-- Location: LABCELL_X12_Y3_N15
\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = ( \ROM|memROM~6_combout\ & ( \ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \ROM|memROM~7_combout\);

-- Location: FF_X13_Y4_N40
\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inc|Add0~21_sumout\,
	asdata => \ROM|memROM~7_combout\,
	sload => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

-- Location: FF_X13_Y4_N41
\PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inc|Add0~21_sumout\,
	asdata => \ROM|memROM~7_combout\,
	sload => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y3_N18
\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( !\PC|DOUT[2]~DUPLICATE_q\ & ( \ROM|memROM~0_combout\ & ( (!\PC|DOUT\(0) & \PC|DOUT[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~1_combout\);

-- Location: FF_X13_Y4_N32
\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inc|Add0~1_sumout\,
	asdata => \ROM|memROM~1_combout\,
	sload => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

-- Location: MLABCELL_X13_Y4_N33
\inc|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inc|Add0~29_sumout\ = SUM(( \PC|DOUT\(1) ) + ( GND ) + ( \inc|Add0~2\ ))
-- \inc|Add0~30\ = CARRY(( \PC|DOUT\(1) ) + ( GND ) + ( \inc|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(1),
	cin => \inc|Add0~2\,
	sumout => \inc|Add0~29_sumout\,
	cout => \inc|Add0~30\);

-- Location: FF_X13_Y4_N37
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inc|Add0~25_sumout\,
	asdata => \ROM|memROM~5_combout\,
	sload => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: LABCELL_X14_Y4_N3
\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( \PC|DOUT[0]~DUPLICATE_q\ & ( (!\PC|DOUT\(2) & (!\PC|DOUT\(1) & !\PC|DOUT[3]~DUPLICATE_q\)) ) ) # ( !\PC|DOUT[0]~DUPLICATE_q\ & ( (!\PC|DOUT\(2) & (!\PC|DOUT\(1) $ (!\PC|DOUT[3]~DUPLICATE_q\))) # (\PC|DOUT\(2) & (!\PC|DOUT\(1) & 
-- !\PC|DOUT[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100001101000011010000110100010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM|memROM~2_combout\);

-- Location: LABCELL_X14_Y4_N54
\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = ( \ROM|memROM~0_combout\ & ( \ROM|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~3_combout\);

-- Location: FF_X13_Y4_N34
\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inc|Add0~29_sumout\,
	asdata => \ROM|memROM~3_combout\,
	sload => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

-- Location: FF_X13_Y4_N35
\PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inc|Add0~29_sumout\,
	asdata => \ROM|memROM~3_combout\,
	sload => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[1]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y4_N9
\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = ( \ROM|memROM~0_combout\ & ( (!\PC|DOUT[1]~DUPLICATE_q\ & (\PC|DOUT[3]~DUPLICATE_q\ & (\PC|DOUT\(0) & !\PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~8_combout\);

-- Location: FF_X13_Y3_N2
\Registradores|registrador~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MUX_ULA|saida_MUX[0]~0_combout\,
	sload => VCC,
	ena => \Registradores|registrador~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~45_q\);

-- Location: FF_X14_Y3_N41
\Registradores|registrador~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MUX_ULA|saida_MUX[0]~0_combout\,
	sload => VCC,
	ena => \Registradores|registrador~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~21_q\);

-- Location: LABCELL_X14_Y3_N45
\Registradores|registrador~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~181_combout\ = ( \ROM|memROM~15_combout\ & ( \ROM|memROM~14_combout\ & ( (\ROM|memROM~8_combout\) # (\Registradores|registrador~37_q\) ) ) ) # ( !\ROM|memROM~15_combout\ & ( \ROM|memROM~14_combout\ & ( 
-- (\Registradores|registrador~29_q\ & !\ROM|memROM~8_combout\) ) ) ) # ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ & ( (\Registradores|registrador~21_q\) # (\ROM|memROM~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111111100110000001100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~37_q\,
	datab => \Registradores|ALT_INV_registrador~29_q\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \Registradores|ALT_INV_registrador~21_q\,
	datae => \ROM|ALT_INV_memROM~15_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \Registradores|registrador~181_combout\);

-- Location: MLABCELL_X13_Y3_N0
\Registradores|registrador~141\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~141_combout\ = ( \Registradores|registrador~181_combout\ & ( !\ROM|memROM~8_combout\ ) ) # ( !\Registradores|registrador~181_combout\ & ( (\ROM|memROM~8_combout\ & (!\ROM|memROM~14_combout\ & \Registradores|registrador~45_q\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \Registradores|ALT_INV_registrador~45_q\,
	dataf => \Registradores|ALT_INV_registrador~181_combout\,
	combout => \Registradores|registrador~141_combout\);

-- Location: LABCELL_X14_Y2_N36
\UC|palavraControle[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|palavraControle\(5) = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( (\ROM|memROM~0_combout\ & ((!\ROM|memROM~12_combout\) # (\ROM|memROM~11_combout\))) ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( 
-- (!\ROM|memROM~12_combout\ & (\ROM|memROM~0_combout\ & \ROM|memROM~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000011000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \UC|palavraControle\(5));

-- Location: LABCELL_X14_Y4_N9
\UC|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Equal7~0_combout\ = ( \ROM|memROM~9_combout\ & ( (\ROM|memROM~0_combout\ & (!\ROM|memROM~10_combout\ & (!\ROM|memROM~11_combout\ & \ROM|memROM~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \UC|Equal7~0_combout\);

-- Location: FF_X13_Y4_N46
\PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inc|Add0~9_sumout\,
	asdata => \~GND~combout\,
	sload => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[5]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y2_N54
\ULA|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[5]~5_combout\ = (!\UC|palavraControle[3]~0_combout\ & ((\Registradores|registrador~161_combout\))) # (\UC|palavraControle[3]~0_combout\ & (\ULA|Add0~21_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle[3]~0_combout\,
	datab => \ULA|ALT_INV_Add0~21_sumout\,
	datac => \Registradores|ALT_INV_registrador~161_combout\,
	combout => \ULA|saida[5]~5_combout\);

-- Location: LABCELL_X12_Y3_N0
\ULA|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[6]~6_combout\ = ( \ULA|Add0~25_sumout\ & ( (\Registradores|registrador~165_combout\) # (\UC|palavraControle[3]~0_combout\) ) ) # ( !\ULA|Add0~25_sumout\ & ( (!\UC|palavraControle[3]~0_combout\ & \Registradores|registrador~165_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle[3]~0_combout\,
	datad => \Registradores|ALT_INV_registrador~165_combout\,
	dataf => \ULA|ALT_INV_Add0~25_sumout\,
	combout => \ULA|saida[6]~6_combout\);

-- Location: LABCELL_X12_Y3_N3
\ULA|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[7]~7_combout\ = ( \Registradores|registrador~169_combout\ & ( (!\UC|palavraControle[3]~0_combout\) # (\ULA|Add0~29_sumout\) ) ) # ( !\Registradores|registrador~169_combout\ & ( (\UC|palavraControle[3]~0_combout\ & \ULA|Add0~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle[3]~0_combout\,
	datac => \ULA|ALT_INV_Add0~29_sumout\,
	dataf => \Registradores|ALT_INV_registrador~169_combout\,
	combout => \ULA|saida[7]~7_combout\);

-- Location: LABCELL_X16_Y3_N27
\ULA|Equal8~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~4_combout\ = ( \ULA|Equal8~3_combout\ & ( \ULA|Equal8~2_combout\ & ( (\ULA|Equal8~0_combout\ & \ULA|Equal8~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal8~0_combout\,
	datac => \ULA|ALT_INV_Equal8~1_combout\,
	datae => \ULA|ALT_INV_Equal8~3_combout\,
	dataf => \ULA|ALT_INV_Equal8~2_combout\,
	combout => \ULA|Equal8~4_combout\);
END structure;


