-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "11/17/2023 17:02:33"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
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

ENTITY 	display_image_rom IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(0 DOWNTO 0);
	VGA_CLK : OUT std_logic;
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic;
	VGA_SYNC_N : OUT std_logic;
	VGA_BLANK_N : OUT std_logic;
	VGA_R : OUT std_logic_vector(7 DOWNTO 0);
	VGA_G : OUT std_logic_vector(7 DOWNTO 0);
	VGA_B : OUT std_logic_vector(7 DOWNTO 0)
	);
END display_image_rom;

-- Design Ports Information
-- VGA_CLK	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_SYNC_N	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BLANK_N	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[6]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[7]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[0]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[1]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[4]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[5]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[6]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[4]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[7]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF display_image_rom IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_SYNC_N : std_logic;
SIGNAL ww_VGA_BLANK_N : std_logic;
SIGNAL ww_VGA_R : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(7 DOWNTO 0);
SIGNAL \ROM2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ROM2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_25~0_combout\ : std_logic;
SIGNAL \CLOCK_25~feeder_combout\ : std_logic;
SIGNAL \CLOCK_25~q\ : std_logic;
SIGNAL \Add1~125_sumout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~93_sumout\ : std_logic;
SIGNAL \hPos[10]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~94\ : std_logic;
SIGNAL \Add1~89_sumout\ : std_logic;
SIGNAL \hPos[11]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~90\ : std_logic;
SIGNAL \Add1~85_sumout\ : std_logic;
SIGNAL \Add1~86\ : std_logic;
SIGNAL \Add1~81_sumout\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~77_sumout\ : std_logic;
SIGNAL \Add1~78\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \hPos[25]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \hPos[27]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~74\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \hPos[28]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \hPos[29]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \hPos[30]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \hPos[31]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \hPos[15]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \hPos[24]~DUPLICATE_q\ : std_logic;
SIGNAL \hPos[20]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \hPos[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \hPos[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~126\ : std_logic;
SIGNAL \Add1~121_sumout\ : std_logic;
SIGNAL \Add1~122\ : std_logic;
SIGNAL \Add1~117_sumout\ : std_logic;
SIGNAL \Add1~118\ : std_logic;
SIGNAL \Add1~113_sumout\ : std_logic;
SIGNAL \hPos[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~114\ : std_logic;
SIGNAL \Add1~109_sumout\ : std_logic;
SIGNAL \hPos[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~110\ : std_logic;
SIGNAL \Add1~105_sumout\ : std_logic;
SIGNAL \Add1~106\ : std_logic;
SIGNAL \Add1~101_sumout\ : std_logic;
SIGNAL \hPos[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~102\ : std_logic;
SIGNAL \Add1~97_sumout\ : std_logic;
SIGNAL \Add1~98\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \hPos[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Horizontal_synchronization~0_combout\ : std_logic;
SIGNAL \Horizontal_synchronization~1_combout\ : std_logic;
SIGNAL \VGA_HS~reg0_q\ : std_logic;
SIGNAL \Add2~125_sumout\ : std_logic;
SIGNAL \Add2~126\ : std_logic;
SIGNAL \Add2~121_sumout\ : std_logic;
SIGNAL \Add2~122\ : std_logic;
SIGNAL \Add2~109_sumout\ : std_logic;
SIGNAL \Add2~110\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~117_sumout\ : std_logic;
SIGNAL \VPos[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~118\ : std_logic;
SIGNAL \Add2~105_sumout\ : std_logic;
SIGNAL \VPos[5]~DUPLICATE_q\ : std_logic;
SIGNAL \VPos[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~106\ : std_logic;
SIGNAL \Add2~101_sumout\ : std_logic;
SIGNAL \VPos[2]~DUPLICATE_q\ : std_logic;
SIGNAL \VPos[1]~DUPLICATE_q\ : std_logic;
SIGNAL \VPos[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~102\ : std_logic;
SIGNAL \Add2~97_sumout\ : std_logic;
SIGNAL \VPos[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~98\ : std_logic;
SIGNAL \Add2~93_sumout\ : std_logic;
SIGNAL \Add2~94\ : std_logic;
SIGNAL \Add2~113_sumout\ : std_logic;
SIGNAL \VPos[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Add2~114\ : std_logic;
SIGNAL \Add2~89_sumout\ : std_logic;
SIGNAL \Add2~90\ : std_logic;
SIGNAL \Add2~85_sumout\ : std_logic;
SIGNAL \Add2~86\ : std_logic;
SIGNAL \Add2~81_sumout\ : std_logic;
SIGNAL \VPos[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~82\ : std_logic;
SIGNAL \Add2~77_sumout\ : std_logic;
SIGNAL \Add2~78\ : std_logic;
SIGNAL \Add2~73_sumout\ : std_logic;
SIGNAL \Add2~74\ : std_logic;
SIGNAL \Add2~69_sumout\ : std_logic;
SIGNAL \Add2~70\ : std_logic;
SIGNAL \Add2~65_sumout\ : std_logic;
SIGNAL \Add2~66\ : std_logic;
SIGNAL \Add2~61_sumout\ : std_logic;
SIGNAL \Add2~62\ : std_logic;
SIGNAL \Add2~57_sumout\ : std_logic;
SIGNAL \Add2~58\ : std_logic;
SIGNAL \Add2~53_sumout\ : std_logic;
SIGNAL \VPos[19]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~54\ : std_logic;
SIGNAL \Add2~49_sumout\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~45_sumout\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \VPos[26]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \VPos[27]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \VPos[29]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \VPos[30]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \VPos[23]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \VPos[14]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \VPos[20]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \VPos[31]~DUPLICATE_q\ : std_logic;
SIGNAL \Vertical_synchronization~0_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \Vertical_synchronization~1_combout\ : std_logic;
SIGNAL \VGA_VS~reg0_q\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \cnt[8]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \cnt[20]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \cnt[21]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \cnt[27]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \cnt[24]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \cnt[25]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \cnt[28]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \cnt[30]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~126\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \cnt~1_combout\ : std_logic;
SIGNAL \cnt[31]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \cnt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \cnt[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \cnt[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \cnt[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \cnt[11]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \cnt~0_combout\ : std_logic;
SIGNAL \cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \LessThan8~2_combout\ : std_logic;
SIGNAL \video_on~0_combout\ : std_logic;
SIGNAL \videoOn~q\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \LessThan8~0_combout\ : std_logic;
SIGNAL \LessThan8~1_combout\ : std_logic;
SIGNAL \VGA_G[6]~0_combout\ : std_logic;
SIGNAL \VGA_R[0]~reg0_q\ : std_logic;
SIGNAL \VGA_R[1]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_R[1]~reg0_q\ : std_logic;
SIGNAL \VGA_R[2]~reg0_q\ : std_logic;
SIGNAL \VGA_R[3]~reg0_q\ : std_logic;
SIGNAL \VGA_R[4]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_R[4]~reg0_q\ : std_logic;
SIGNAL \VGA_R[5]~reg0_q\ : std_logic;
SIGNAL \VGA_R[6]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_R[6]~reg0_q\ : std_logic;
SIGNAL \VGA_R[7]~reg0_q\ : std_logic;
SIGNAL \VGA_G[0]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_G[0]~reg0_q\ : std_logic;
SIGNAL \VGA_G[1]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_G[1]~reg0_q\ : std_logic;
SIGNAL \VGA_G[2]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_G[2]~reg0_q\ : std_logic;
SIGNAL \VGA_G[3]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_G[3]~reg0_q\ : std_logic;
SIGNAL \VGA_G[4]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_G[4]~reg0_q\ : std_logic;
SIGNAL \VGA_G[5]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_G[5]~reg0_q\ : std_logic;
SIGNAL \VGA_G[6]~reg0_q\ : std_logic;
SIGNAL \VGA_G[7]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_G[7]~reg0_q\ : std_logic;
SIGNAL \VGA_B[0]~reg0_q\ : std_logic;
SIGNAL \VGA_B[1]~reg0_q\ : std_logic;
SIGNAL \VGA_B[2]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_B[2]~reg0_q\ : std_logic;
SIGNAL \VGA_B[3]~reg0_q\ : std_logic;
SIGNAL \VGA_B[4]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_B[4]~reg0_q\ : std_logic;
SIGNAL \VGA_B[5]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_B[5]~reg0_q\ : std_logic;
SIGNAL \VGA_B[6]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_B[6]~reg0_q\ : std_logic;
SIGNAL \VGA_B[7]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_B[7]~reg0_q\ : std_logic;
SIGNAL \ROM2|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL hPos : std_logic_vector(31 DOWNTO 0);
SIGNAL VPos : std_logic_vector(31 DOWNTO 0);
SIGNAL \ROM0|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ROM1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL cnt : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_cnt[31]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt[28]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt[27]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt[24]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt[21]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt[20]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt[25]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt[30]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt[11]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_VPos[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hPos[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hPos[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hPos[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_VPos[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_VPos[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_VPos[9]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_VPos[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_VPos[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_VPos[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_VPos[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_VPos[12]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_VPos[14]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_VPos[19]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_VPos[20]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_VPos[26]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_VPos[27]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_VPos[29]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_VPos[30]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_VPos[23]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_VPos[31]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hPos[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hPos[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hPos[10]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hPos[11]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hPos[27]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hPos[28]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hPos[29]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hPos[30]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hPos[25]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hPos[20]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hPos[24]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hPos[15]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hPos[31]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hPos[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_CLOCK_25~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL ALT_INV_cnt : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan8~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan8~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan8~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~0_combout\ : std_logic;
SIGNAL \ALT_INV_videoOn~q\ : std_logic;
SIGNAL \ALT_INV_Vertical_synchronization~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Horizontal_synchronization~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_CLOCK_25~q\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL ALT_INV_VPos : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_hPos : std_logic_vector(31 DOWNTO 0);
SIGNAL \ROM2|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(7 DOWNTO 2);
SIGNAL \ROM1|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ROM0|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(6 DOWNTO 1);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
VGA_CLK <= ww_VGA_CLK;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_SYNC_N <= ww_VGA_SYNC_N;
VGA_BLANK_N <= ww_VGA_BLANK_N;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ROM2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (cnt(7) & cnt(6) & cnt(5) & cnt(4) & cnt(3) & cnt(2) & cnt(1) & \cnt[0]~DUPLICATE_q\);

\ROM2|altsyncram_component|auto_generated|q_a\(0) <= \ROM2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\ROM2|altsyncram_component|auto_generated|q_a\(1) <= \ROM2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\ROM2|altsyncram_component|auto_generated|q_a\(2) <= \ROM2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\ROM2|altsyncram_component|auto_generated|q_a\(3) <= \ROM2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\ROM2|altsyncram_component|auto_generated|q_a\(4) <= \ROM2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\ROM2|altsyncram_component|auto_generated|q_a\(5) <= \ROM2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\ROM2|altsyncram_component|auto_generated|q_a\(6) <= \ROM2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\ROM2|altsyncram_component|auto_generated|q_a\(7) <= \ROM2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\ROM1|altsyncram_component|auto_generated|q_a\(0) <= \ROM2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\ROM1|altsyncram_component|auto_generated|q_a\(1) <= \ROM2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\ROM1|altsyncram_component|auto_generated|q_a\(2) <= \ROM2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\ROM1|altsyncram_component|auto_generated|q_a\(3) <= \ROM2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\ROM1|altsyncram_component|auto_generated|q_a\(4) <= \ROM2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\ROM1|altsyncram_component|auto_generated|q_a\(5) <= \ROM2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\ROM1|altsyncram_component|auto_generated|q_a\(6) <= \ROM2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\ROM1|altsyncram_component|auto_generated|q_a\(7) <= \ROM2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\ROM0|altsyncram_component|auto_generated|q_a\(0) <= \ROM2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\ROM0|altsyncram_component|auto_generated|q_a\(1) <= \ROM2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\ROM0|altsyncram_component|auto_generated|q_a\(2) <= \ROM2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\ROM0|altsyncram_component|auto_generated|q_a\(3) <= \ROM2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);
\ROM0|altsyncram_component|auto_generated|q_a\(4) <= \ROM2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(20);
\ROM0|altsyncram_component|auto_generated|q_a\(5) <= \ROM2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(21);
\ROM0|altsyncram_component|auto_generated|q_a\(6) <= \ROM2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(22);
\ROM0|altsyncram_component|auto_generated|q_a\(7) <= \ROM2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(23);
\ALT_INV_cnt[31]~DUPLICATE_q\ <= NOT \cnt[31]~DUPLICATE_q\;
\ALT_INV_cnt[0]~DUPLICATE_q\ <= NOT \cnt[0]~DUPLICATE_q\;
\ALT_INV_cnt[28]~DUPLICATE_q\ <= NOT \cnt[28]~DUPLICATE_q\;
\ALT_INV_cnt[27]~DUPLICATE_q\ <= NOT \cnt[27]~DUPLICATE_q\;
\ALT_INV_cnt[24]~DUPLICATE_q\ <= NOT \cnt[24]~DUPLICATE_q\;
\ALT_INV_cnt[21]~DUPLICATE_q\ <= NOT \cnt[21]~DUPLICATE_q\;
\ALT_INV_cnt[20]~DUPLICATE_q\ <= NOT \cnt[20]~DUPLICATE_q\;
\ALT_INV_cnt[25]~DUPLICATE_q\ <= NOT \cnt[25]~DUPLICATE_q\;
\ALT_INV_cnt[30]~DUPLICATE_q\ <= NOT \cnt[30]~DUPLICATE_q\;
\ALT_INV_cnt[11]~DUPLICATE_q\ <= NOT \cnt[11]~DUPLICATE_q\;
\ALT_INV_cnt[8]~DUPLICATE_q\ <= NOT \cnt[8]~DUPLICATE_q\;
\ALT_INV_cnt[7]~DUPLICATE_q\ <= NOT \cnt[7]~DUPLICATE_q\;
\ALT_INV_cnt[3]~DUPLICATE_q\ <= NOT \cnt[3]~DUPLICATE_q\;
\ALT_INV_cnt[2]~DUPLICATE_q\ <= NOT \cnt[2]~DUPLICATE_q\;
\ALT_INV_cnt[1]~DUPLICATE_q\ <= NOT \cnt[1]~DUPLICATE_q\;
\ALT_INV_VPos[0]~DUPLICATE_q\ <= NOT \VPos[0]~DUPLICATE_q\;
\ALT_INV_hPos[0]~DUPLICATE_q\ <= NOT \hPos[0]~DUPLICATE_q\;
\ALT_INV_hPos[2]~DUPLICATE_q\ <= NOT \hPos[2]~DUPLICATE_q\;
\ALT_INV_hPos[3]~DUPLICATE_q\ <= NOT \hPos[3]~DUPLICATE_q\;
\ALT_INV_VPos[1]~DUPLICATE_q\ <= NOT \VPos[1]~DUPLICATE_q\;
\ALT_INV_VPos[4]~DUPLICATE_q\ <= NOT \VPos[4]~DUPLICATE_q\;
\ALT_INV_VPos[9]~DUPLICATE_q\ <= NOT \VPos[9]~DUPLICATE_q\;
\ALT_INV_VPos[2]~DUPLICATE_q\ <= NOT \VPos[2]~DUPLICATE_q\;
\ALT_INV_VPos[5]~DUPLICATE_q\ <= NOT \VPos[5]~DUPLICATE_q\;
\ALT_INV_VPos[7]~DUPLICATE_q\ <= NOT \VPos[7]~DUPLICATE_q\;
\ALT_INV_VPos[8]~DUPLICATE_q\ <= NOT \VPos[8]~DUPLICATE_q\;
\ALT_INV_VPos[12]~DUPLICATE_q\ <= NOT \VPos[12]~DUPLICATE_q\;
\ALT_INV_VPos[14]~DUPLICATE_q\ <= NOT \VPos[14]~DUPLICATE_q\;
\ALT_INV_VPos[19]~DUPLICATE_q\ <= NOT \VPos[19]~DUPLICATE_q\;
\ALT_INV_VPos[20]~DUPLICATE_q\ <= NOT \VPos[20]~DUPLICATE_q\;
\ALT_INV_VPos[26]~DUPLICATE_q\ <= NOT \VPos[26]~DUPLICATE_q\;
\ALT_INV_VPos[27]~DUPLICATE_q\ <= NOT \VPos[27]~DUPLICATE_q\;
\ALT_INV_VPos[29]~DUPLICATE_q\ <= NOT \VPos[29]~DUPLICATE_q\;
\ALT_INV_VPos[30]~DUPLICATE_q\ <= NOT \VPos[30]~DUPLICATE_q\;
\ALT_INV_VPos[23]~DUPLICATE_q\ <= NOT \VPos[23]~DUPLICATE_q\;
\ALT_INV_VPos[31]~DUPLICATE_q\ <= NOT \VPos[31]~DUPLICATE_q\;
\ALT_INV_hPos[4]~DUPLICATE_q\ <= NOT \hPos[4]~DUPLICATE_q\;
\ALT_INV_hPos[6]~DUPLICATE_q\ <= NOT \hPos[6]~DUPLICATE_q\;
\ALT_INV_hPos[10]~DUPLICATE_q\ <= NOT \hPos[10]~DUPLICATE_q\;
\ALT_INV_hPos[11]~DUPLICATE_q\ <= NOT \hPos[11]~DUPLICATE_q\;
\ALT_INV_hPos[27]~DUPLICATE_q\ <= NOT \hPos[27]~DUPLICATE_q\;
\ALT_INV_hPos[28]~DUPLICATE_q\ <= NOT \hPos[28]~DUPLICATE_q\;
\ALT_INV_hPos[29]~DUPLICATE_q\ <= NOT \hPos[29]~DUPLICATE_q\;
\ALT_INV_hPos[30]~DUPLICATE_q\ <= NOT \hPos[30]~DUPLICATE_q\;
\ALT_INV_hPos[25]~DUPLICATE_q\ <= NOT \hPos[25]~DUPLICATE_q\;
\ALT_INV_hPos[20]~DUPLICATE_q\ <= NOT \hPos[20]~DUPLICATE_q\;
\ALT_INV_hPos[24]~DUPLICATE_q\ <= NOT \hPos[24]~DUPLICATE_q\;
\ALT_INV_hPos[15]~DUPLICATE_q\ <= NOT \hPos[15]~DUPLICATE_q\;
\ALT_INV_hPos[31]~DUPLICATE_q\ <= NOT \hPos[31]~DUPLICATE_q\;
\ALT_INV_hPos[8]~DUPLICATE_q\ <= NOT \hPos[8]~DUPLICATE_q\;
\ALT_INV_KEY[0]~inputCLKENA0_outclk\ <= NOT \KEY[0]~inputCLKENA0_outclk\;
\ALT_INV_CLOCK_25~0_combout\ <= NOT \CLOCK_25~0_combout\;
\ALT_INV_LessThan0~7_combout\ <= NOT \LessThan0~7_combout\;
\ALT_INV_LessThan0~6_combout\ <= NOT \LessThan0~6_combout\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
ALT_INV_cnt(31) <= NOT cnt(31);
\ALT_INV_LessThan5~0_combout\ <= NOT \LessThan5~0_combout\;
\ALT_INV_LessThan8~2_combout\ <= NOT \LessThan8~2_combout\;
ALT_INV_cnt(0) <= NOT cnt(0);
\ALT_INV_Equal1~6_combout\ <= NOT \Equal1~6_combout\;
\ALT_INV_Equal1~5_combout\ <= NOT \Equal1~5_combout\;
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_LessThan8~1_combout\ <= NOT \LessThan8~1_combout\;
\ALT_INV_LessThan8~0_combout\ <= NOT \LessThan8~0_combout\;
\ALT_INV_LessThan7~0_combout\ <= NOT \LessThan7~0_combout\;
\ALT_INV_videoOn~q\ <= NOT \videoOn~q\;
\ALT_INV_Vertical_synchronization~0_combout\ <= NOT \Vertical_synchronization~0_combout\;
\ALT_INV_LessThan6~0_combout\ <= NOT \LessThan6~0_combout\;
\ALT_INV_Equal1~4_combout\ <= NOT \Equal1~4_combout\;
\ALT_INV_Equal1~3_combout\ <= NOT \Equal1~3_combout\;
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_Horizontal_synchronization~0_combout\ <= NOT \Horizontal_synchronization~0_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_CLOCK_25~q\ <= NOT \CLOCK_25~q\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
ALT_INV_cnt(29) <= NOT cnt(29);
ALT_INV_cnt(28) <= NOT cnt(28);
ALT_INV_cnt(27) <= NOT cnt(27);
ALT_INV_cnt(26) <= NOT cnt(26);
ALT_INV_cnt(24) <= NOT cnt(24);
ALT_INV_cnt(21) <= NOT cnt(21);
ALT_INV_cnt(20) <= NOT cnt(20);
ALT_INV_cnt(19) <= NOT cnt(19);
ALT_INV_cnt(18) <= NOT cnt(18);
ALT_INV_cnt(25) <= NOT cnt(25);
ALT_INV_cnt(16) <= NOT cnt(16);
ALT_INV_cnt(17) <= NOT cnt(17);
ALT_INV_cnt(15) <= NOT cnt(15);
ALT_INV_cnt(23) <= NOT cnt(23);
ALT_INV_cnt(30) <= NOT cnt(30);
ALT_INV_cnt(22) <= NOT cnt(22);
ALT_INV_cnt(10) <= NOT cnt(10);
ALT_INV_cnt(11) <= NOT cnt(11);
ALT_INV_cnt(12) <= NOT cnt(12);
ALT_INV_cnt(8) <= NOT cnt(8);
ALT_INV_cnt(9) <= NOT cnt(9);
ALT_INV_cnt(13) <= NOT cnt(13);
ALT_INV_cnt(14) <= NOT cnt(14);
ALT_INV_cnt(6) <= NOT cnt(6);
ALT_INV_cnt(5) <= NOT cnt(5);
ALT_INV_cnt(4) <= NOT cnt(4);
ALT_INV_cnt(3) <= NOT cnt(3);
ALT_INV_cnt(2) <= NOT cnt(2);
ALT_INV_VPos(0) <= NOT VPos(0);
ALT_INV_hPos(0) <= NOT hPos(0);
ALT_INV_hPos(1) <= NOT hPos(1);
ALT_INV_hPos(2) <= NOT hPos(2);
ALT_INV_hPos(3) <= NOT hPos(3);
\ROM2|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \ROM2|altsyncram_component|auto_generated|q_a\(2);
\ROM2|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \ROM2|altsyncram_component|auto_generated|q_a\(4);
\ROM2|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \ROM2|altsyncram_component|auto_generated|q_a\(5);
\ROM2|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \ROM2|altsyncram_component|auto_generated|q_a\(6);
\ROM2|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \ROM2|altsyncram_component|auto_generated|q_a\(7);
\ROM1|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \ROM1|altsyncram_component|auto_generated|q_a\(0);
\ROM1|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \ROM1|altsyncram_component|auto_generated|q_a\(1);
\ROM1|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \ROM1|altsyncram_component|auto_generated|q_a\(2);
\ROM1|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \ROM1|altsyncram_component|auto_generated|q_a\(3);
\ROM1|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \ROM1|altsyncram_component|auto_generated|q_a\(4);
\ROM1|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \ROM1|altsyncram_component|auto_generated|q_a\(5);
\ROM1|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \ROM1|altsyncram_component|auto_generated|q_a\(7);
\ROM0|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \ROM0|altsyncram_component|auto_generated|q_a\(1);
\ROM0|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \ROM0|altsyncram_component|auto_generated|q_a\(4);
\ROM0|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \ROM0|altsyncram_component|auto_generated|q_a\(6);
ALT_INV_VPos(1) <= NOT VPos(1);
ALT_INV_VPos(4) <= NOT VPos(4);
ALT_INV_VPos(9) <= NOT VPos(9);
ALT_INV_VPos(2) <= NOT VPos(2);
ALT_INV_VPos(5) <= NOT VPos(5);
ALT_INV_VPos(6) <= NOT VPos(6);
ALT_INV_VPos(7) <= NOT VPos(7);
ALT_INV_VPos(8) <= NOT VPos(8);
ALT_INV_VPos(10) <= NOT VPos(10);
ALT_INV_VPos(11) <= NOT VPos(11);
ALT_INV_VPos(12) <= NOT VPos(12);
ALT_INV_VPos(13) <= NOT VPos(13);
ALT_INV_VPos(14) <= NOT VPos(14);
ALT_INV_VPos(15) <= NOT VPos(15);
ALT_INV_VPos(16) <= NOT VPos(16);
ALT_INV_VPos(17) <= NOT VPos(17);
ALT_INV_VPos(18) <= NOT VPos(18);
ALT_INV_VPos(19) <= NOT VPos(19);
ALT_INV_VPos(20) <= NOT VPos(20);
ALT_INV_VPos(21) <= NOT VPos(21);
ALT_INV_VPos(25) <= NOT VPos(25);
ALT_INV_VPos(26) <= NOT VPos(26);
ALT_INV_VPos(27) <= NOT VPos(27);
ALT_INV_VPos(28) <= NOT VPos(28);
ALT_INV_VPos(29) <= NOT VPos(29);
ALT_INV_VPos(30) <= NOT VPos(30);
ALT_INV_VPos(22) <= NOT VPos(22);
ALT_INV_VPos(23) <= NOT VPos(23);
ALT_INV_VPos(24) <= NOT VPos(24);
ALT_INV_VPos(31) <= NOT VPos(31);
ALT_INV_VPos(3) <= NOT VPos(3);
ALT_INV_hPos(4) <= NOT hPos(4);
ALT_INV_hPos(5) <= NOT hPos(5);
ALT_INV_hPos(6) <= NOT hPos(6);
ALT_INV_hPos(7) <= NOT hPos(7);
ALT_INV_hPos(10) <= NOT hPos(10);
ALT_INV_hPos(11) <= NOT hPos(11);
ALT_INV_hPos(12) <= NOT hPos(12);
ALT_INV_hPos(13) <= NOT hPos(13);
ALT_INV_hPos(14) <= NOT hPos(14);
ALT_INV_hPos(27) <= NOT hPos(27);
ALT_INV_hPos(28) <= NOT hPos(28);
ALT_INV_hPos(29) <= NOT hPos(29);
ALT_INV_hPos(30) <= NOT hPos(30);
ALT_INV_hPos(25) <= NOT hPos(25);
ALT_INV_hPos(18) <= NOT hPos(18);
ALT_INV_hPos(19) <= NOT hPos(19);
ALT_INV_hPos(20) <= NOT hPos(20);
ALT_INV_hPos(24) <= NOT hPos(24);
ALT_INV_hPos(21) <= NOT hPos(21);
ALT_INV_hPos(22) <= NOT hPos(22);
ALT_INV_hPos(15) <= NOT hPos(15);
ALT_INV_hPos(16) <= NOT hPos(16);
ALT_INV_hPos(17) <= NOT hPos(17);
ALT_INV_hPos(23) <= NOT hPos(23);
ALT_INV_hPos(26) <= NOT hPos(26);
ALT_INV_hPos(9) <= NOT hPos(9);
ALT_INV_hPos(31) <= NOT hPos(31);
ALT_INV_hPos(8) <= NOT hPos(8);

-- Location: IOOBUF_X38_Y81_N36
\VGA_CLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CLOCK_25~q\,
	devoe => ww_devoe,
	o => ww_VGA_CLK);

-- Location: IOOBUF_X36_Y81_N53
\VGA_HS~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_HS~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_HS);

-- Location: IOOBUF_X34_Y81_N42
\VGA_VS~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_VS~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_VS);

-- Location: IOOBUF_X28_Y81_N36
\VGA_SYNC_N~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_VGA_SYNC_N);

-- Location: IOOBUF_X6_Y81_N19
\VGA_BLANK_N~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_VGA_BLANK_N);

-- Location: IOOBUF_X40_Y81_N53
\VGA_R[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_R(0));

-- Location: IOOBUF_X38_Y81_N2
\VGA_R[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_R(1));

-- Location: IOOBUF_X26_Y81_N59
\VGA_R[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_R(2));

-- Location: IOOBUF_X38_Y81_N19
\VGA_R[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_R(3));

-- Location: IOOBUF_X36_Y81_N36
\VGA_R[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_R(4));

-- Location: IOOBUF_X22_Y81_N19
\VGA_R[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_R(5));

-- Location: IOOBUF_X22_Y81_N2
\VGA_R[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_R(6));

-- Location: IOOBUF_X26_Y81_N42
\VGA_R[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_R(7));

-- Location: IOOBUF_X4_Y81_N19
\VGA_G[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_G(0));

-- Location: IOOBUF_X4_Y81_N2
\VGA_G[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_G(1));

-- Location: IOOBUF_X20_Y81_N19
\VGA_G[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_G(2));

-- Location: IOOBUF_X6_Y81_N2
\VGA_G[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_G(3));

-- Location: IOOBUF_X10_Y81_N59
\VGA_G[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_G(4));

-- Location: IOOBUF_X10_Y81_N42
\VGA_G[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_G(5));

-- Location: IOOBUF_X18_Y81_N42
\VGA_G[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_G(6));

-- Location: IOOBUF_X18_Y81_N59
\VGA_G[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_G(7));

-- Location: IOOBUF_X40_Y81_N36
\VGA_B[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_B(0));

-- Location: IOOBUF_X28_Y81_N19
\VGA_B[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_B(1));

-- Location: IOOBUF_X20_Y81_N2
\VGA_B[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_B(2));

-- Location: IOOBUF_X36_Y81_N19
\VGA_B[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_B(3));

-- Location: IOOBUF_X28_Y81_N2
\VGA_B[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_B(4));

-- Location: IOOBUF_X36_Y81_N2
\VGA_B[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_B(5));

-- Location: IOOBUF_X40_Y81_N19
\VGA_B[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_B(6));

-- Location: IOOBUF_X32_Y81_N19
\VGA_B[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_B(7));

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: LABCELL_X30_Y74_N21
\CLOCK_25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CLOCK_25~0_combout\ = ( !\CLOCK_25~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_CLOCK_25~q\,
	combout => \CLOCK_25~0_combout\);

-- Location: LABCELL_X30_Y74_N24
\CLOCK_25~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CLOCK_25~feeder_combout\ = ( \CLOCK_25~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_CLOCK_25~0_combout\,
	combout => \CLOCK_25~feeder_combout\);

-- Location: FF_X30_Y74_N26
CLOCK_25 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CLOCK_25~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_25~q\);

-- Location: LABCELL_X31_Y75_N0
\Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~125_sumout\ = SUM(( \hPos[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \Add1~126\ = CARRY(( \hPos[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_hPos[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add1~125_sumout\,
	cout => \Add1~126\);

-- Location: IOIBUF_X36_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G5
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: LABCELL_X31_Y75_N24
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( \hPos[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~98\ ))
-- \Add1~2\ = CARRY(( \hPos[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_hPos[8]~DUPLICATE_q\,
	cin => \Add1~98\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: LABCELL_X31_Y75_N27
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( hPos(9) ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~10\ = CARRY(( hPos(9) ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hPos(9),
	cin => \Add1~2\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X31_Y75_N29
\hPos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~9_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(9));

-- Location: LABCELL_X31_Y75_N30
\Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~93_sumout\ = SUM(( \hPos[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~94\ = CARRY(( \hPos[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_hPos[10]~DUPLICATE_q\,
	cin => \Add1~10\,
	sumout => \Add1~93_sumout\,
	cout => \Add1~94\);

-- Location: FF_X31_Y75_N31
\hPos[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~93_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hPos[10]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y75_N33
\Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~89_sumout\ = SUM(( \hPos[11]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~94\ ))
-- \Add1~90\ = CARRY(( \hPos[11]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_hPos[11]~DUPLICATE_q\,
	cin => \Add1~94\,
	sumout => \Add1~89_sumout\,
	cout => \Add1~90\);

-- Location: FF_X31_Y75_N34
\hPos[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~89_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hPos[11]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y75_N36
\Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~85_sumout\ = SUM(( hPos(12) ) + ( GND ) + ( \Add1~90\ ))
-- \Add1~86\ = CARRY(( hPos(12) ) + ( GND ) + ( \Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hPos(12),
	cin => \Add1~90\,
	sumout => \Add1~85_sumout\,
	cout => \Add1~86\);

-- Location: FF_X31_Y75_N38
\hPos[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~85_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(12));

-- Location: LABCELL_X31_Y75_N39
\Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~81_sumout\ = SUM(( hPos(13) ) + ( GND ) + ( \Add1~86\ ))
-- \Add1~82\ = CARRY(( hPos(13) ) + ( GND ) + ( \Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hPos(13),
	cin => \Add1~86\,
	sumout => \Add1~81_sumout\,
	cout => \Add1~82\);

-- Location: FF_X31_Y75_N41
\hPos[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~81_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(13));

-- Location: LABCELL_X31_Y75_N42
\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( hPos(14) ) + ( GND ) + ( \Add1~82\ ))
-- \Add1~78\ = CARRY(( hPos(14) ) + ( GND ) + ( \Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hPos(14),
	cin => \Add1~82\,
	sumout => \Add1~77_sumout\,
	cout => \Add1~78\);

-- Location: FF_X31_Y75_N43
\hPos[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~77_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(14));

-- Location: LABCELL_X31_Y75_N45
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( hPos(15) ) + ( GND ) + ( \Add1~78\ ))
-- \Add1~30\ = CARRY(( hPos(15) ) + ( GND ) + ( \Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hPos(15),
	cin => \Add1~78\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X30_Y75_N28
\hPos[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	asdata => \Add1~29_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(15));

-- Location: LABCELL_X31_Y75_N48
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( hPos(16) ) + ( GND ) + ( \Add1~30\ ))
-- \Add1~26\ = CARRY(( hPos(16) ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hPos(16),
	cin => \Add1~30\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X31_Y75_N50
\hPos[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~25_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(16));

-- Location: LABCELL_X31_Y75_N51
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( hPos(17) ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~22\ = CARRY(( hPos(17) ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hPos(17),
	cin => \Add1~26\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X31_Y75_N52
\hPos[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~21_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(17));

-- Location: LABCELL_X31_Y75_N54
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( hPos(18) ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~54\ = CARRY(( hPos(18) ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hPos(18),
	cin => \Add1~22\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: FF_X30_Y75_N56
\hPos[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	asdata => \Add1~53_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(18));

-- Location: LABCELL_X31_Y75_N57
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( hPos(19) ) + ( GND ) + ( \Add1~54\ ))
-- \Add1~50\ = CARRY(( hPos(19) ) + ( GND ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hPos(19),
	cin => \Add1~54\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: FF_X31_Y75_N59
\hPos[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~49_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(19));

-- Location: LABCELL_X31_Y74_N0
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( hPos(20) ) + ( GND ) + ( \Add1~50\ ))
-- \Add1~46\ = CARRY(( hPos(20) ) + ( GND ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hPos(20),
	cin => \Add1~50\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: FF_X31_Y74_N1
\hPos[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~45_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(20));

-- Location: LABCELL_X31_Y74_N3
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( hPos(21) ) + ( GND ) + ( \Add1~46\ ))
-- \Add1~38\ = CARRY(( hPos(21) ) + ( GND ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hPos(21),
	cin => \Add1~46\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: FF_X31_Y74_N4
\hPos[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~37_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(21));

-- Location: LABCELL_X31_Y74_N6
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( hPos(22) ) + ( GND ) + ( \Add1~38\ ))
-- \Add1~34\ = CARRY(( hPos(22) ) + ( GND ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hPos(22),
	cin => \Add1~38\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X31_Y74_N7
\hPos[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~33_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(22));

-- Location: LABCELL_X31_Y74_N9
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( hPos(23) ) + ( GND ) + ( \Add1~34\ ))
-- \Add1~18\ = CARRY(( hPos(23) ) + ( GND ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hPos(23),
	cin => \Add1~34\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X31_Y74_N10
\hPos[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~17_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(23));

-- Location: LABCELL_X31_Y74_N12
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( hPos(24) ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~42\ = CARRY(( hPos(24) ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hPos(24),
	cin => \Add1~18\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: FF_X31_Y74_N13
\hPos[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~41_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(24));

-- Location: LABCELL_X31_Y74_N15
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( \hPos[25]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~42\ ))
-- \Add1~58\ = CARRY(( \hPos[25]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_hPos[25]~DUPLICATE_q\,
	cin => \Add1~42\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: FF_X31_Y74_N16
\hPos[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~57_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hPos[25]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y74_N18
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( hPos(26) ) + ( GND ) + ( \Add1~58\ ))
-- \Add1~14\ = CARRY(( hPos(26) ) + ( GND ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hPos(26),
	cin => \Add1~58\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X31_Y74_N19
\hPos[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~13_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(26));

-- Location: LABCELL_X31_Y74_N21
\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( \hPos[27]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~74\ = CARRY(( \hPos[27]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hPos[27]~DUPLICATE_q\,
	cin => \Add1~14\,
	sumout => \Add1~73_sumout\,
	cout => \Add1~74\);

-- Location: FF_X31_Y74_N22
\hPos[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~73_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hPos[27]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y74_N24
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( \hPos[28]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~74\ ))
-- \Add1~70\ = CARRY(( \hPos[28]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hPos[28]~DUPLICATE_q\,
	cin => \Add1~74\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\);

-- Location: FF_X31_Y74_N25
\hPos[28]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~69_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hPos[28]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y74_N27
\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( \hPos[29]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~70\ ))
-- \Add1~66\ = CARRY(( \hPos[29]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_hPos[29]~DUPLICATE_q\,
	cin => \Add1~70\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\);

-- Location: FF_X31_Y74_N28
\hPos[29]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~65_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hPos[29]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y74_N30
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( \hPos[30]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~66\ ))
-- \Add1~62\ = CARRY(( \hPos[30]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hPos[30]~DUPLICATE_q\,
	cin => \Add1~66\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

-- Location: FF_X31_Y74_N31
\hPos[30]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~61_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hPos[30]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y74_N33
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( \hPos[31]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hPos[31]~DUPLICATE_q\,
	cin => \Add1~62\,
	sumout => \Add1~5_sumout\);

-- Location: FF_X31_Y74_N35
\hPos[31]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~5_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hPos[31]~DUPLICATE_q\);

-- Location: FF_X31_Y75_N32
\hPos[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~93_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(10));

-- Location: FF_X31_Y75_N35
\hPos[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~89_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(11));

-- Location: LABCELL_X30_Y75_N12
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !hPos(14) & ( !hPos(13) & ( (!hPos(10) & (!hPos(11) & !hPos(12))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hPos(10),
	datac => ALT_INV_hPos(11),
	datad => ALT_INV_hPos(12),
	datae => ALT_INV_hPos(14),
	dataf => ALT_INV_hPos(13),
	combout => \Equal0~3_combout\);

-- Location: FF_X30_Y75_N29
\hPos[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	asdata => \Add1~29_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hPos[15]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y75_N48
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\hPos[15]~DUPLICATE_q\ & ( !hPos(17) & ( !hPos(16) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hPos(16),
	datae => \ALT_INV_hPos[15]~DUPLICATE_q\,
	dataf => ALT_INV_hPos(17),
	combout => \Equal0~0_combout\);

-- Location: FF_X31_Y74_N23
\hPos[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~73_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(27));

-- Location: FF_X31_Y74_N26
\hPos[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~69_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(28));

-- Location: FF_X31_Y74_N17
\hPos[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~57_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(25));

-- Location: FF_X31_Y74_N29
\hPos[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~65_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(29));

-- Location: FF_X31_Y74_N32
\hPos[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~61_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(30));

-- Location: LABCELL_X31_Y74_N36
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !hPos(29) & ( !hPos(30) & ( (!hPos(27) & (!hPos(28) & !hPos(25))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hPos(27),
	datac => ALT_INV_hPos(28),
	datad => ALT_INV_hPos(25),
	datae => ALT_INV_hPos(29),
	dataf => ALT_INV_hPos(30),
	combout => \Equal0~2_combout\);

-- Location: FF_X31_Y74_N14
\hPos[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~41_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hPos[24]~DUPLICATE_q\);

-- Location: FF_X31_Y74_N2
\hPos[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~45_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hPos[20]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y75_N30
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !\hPos[20]~DUPLICATE_q\ & ( !hPos(22) & ( (!hPos(18) & (!\hPos[24]~DUPLICATE_q\ & (!hPos(21) & !hPos(19)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hPos(18),
	datab => \ALT_INV_hPos[24]~DUPLICATE_q\,
	datac => ALT_INV_hPos(21),
	datad => ALT_INV_hPos(19),
	datae => \ALT_INV_hPos[20]~DUPLICATE_q\,
	dataf => ALT_INV_hPos(22),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X30_Y75_N21
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( \Equal0~2_combout\ & ( \Equal0~1_combout\ & ( (!hPos(23) & (!hPos(26) & (\Equal0~3_combout\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hPos(23),
	datab => ALT_INV_hPos(26),
	datac => \ALT_INV_Equal0~3_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~2_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: FF_X31_Y75_N20
\hPos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~101_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(6));

-- Location: FF_X31_Y75_N26
\hPos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~1_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(8));

-- Location: FF_X31_Y75_N11
\hPos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~113_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(3));

-- Location: FF_X31_Y75_N2
\hPos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~125_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(0));

-- Location: FF_X31_Y75_N7
\hPos[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~117_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hPos[2]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y75_N3
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( hPos(1) & ( \hPos[2]~DUPLICATE_q\ & ( (!hPos(7) & (hPos(3) & hPos(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hPos(7),
	datac => ALT_INV_hPos(3),
	datad => ALT_INV_hPos(0),
	datae => ALT_INV_hPos(1),
	dataf => \ALT_INV_hPos[2]~DUPLICATE_q\,
	combout => \Equal0~5_combout\);

-- Location: FF_X31_Y75_N14
\hPos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~109_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(4));

-- Location: LABCELL_X30_Y75_N42
\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( \Equal0~5_combout\ & ( hPos(4) & ( (!hPos(6) & (!hPos(5) & hPos(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hPos(6),
	datac => ALT_INV_hPos(5),
	datad => ALT_INV_hPos(8),
	datae => \ALT_INV_Equal0~5_combout\,
	dataf => ALT_INV_hPos(4),
	combout => \Equal0~6_combout\);

-- Location: LABCELL_X30_Y75_N39
\Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = ( \Equal0~6_combout\ & ( (!\hPos[31]~DUPLICATE_q\ & (hPos(9) & \Equal0~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hPos[31]~DUPLICATE_q\,
	datac => ALT_INV_hPos(9),
	datad => \ALT_INV_Equal0~4_combout\,
	dataf => \ALT_INV_Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: FF_X31_Y75_N1
\hPos[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~125_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hPos[0]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y75_N3
\Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~121_sumout\ = SUM(( hPos(1) ) + ( GND ) + ( \Add1~126\ ))
-- \Add1~122\ = CARRY(( hPos(1) ) + ( GND ) + ( \Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hPos(1),
	cin => \Add1~126\,
	sumout => \Add1~121_sumout\,
	cout => \Add1~122\);

-- Location: FF_X31_Y75_N5
\hPos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~121_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(1));

-- Location: LABCELL_X31_Y75_N6
\Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~117_sumout\ = SUM(( hPos(2) ) + ( GND ) + ( \Add1~122\ ))
-- \Add1~118\ = CARRY(( hPos(2) ) + ( GND ) + ( \Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hPos(2),
	cin => \Add1~122\,
	sumout => \Add1~117_sumout\,
	cout => \Add1~118\);

-- Location: FF_X31_Y75_N8
\hPos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~117_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(2));

-- Location: LABCELL_X31_Y75_N9
\Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~113_sumout\ = SUM(( \hPos[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~118\ ))
-- \Add1~114\ = CARRY(( \hPos[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hPos[3]~DUPLICATE_q\,
	cin => \Add1~118\,
	sumout => \Add1~113_sumout\,
	cout => \Add1~114\);

-- Location: FF_X31_Y75_N10
\hPos[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~113_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hPos[3]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y75_N12
\Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~109_sumout\ = SUM(( \hPos[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~114\ ))
-- \Add1~110\ = CARRY(( \hPos[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hPos[4]~DUPLICATE_q\,
	cin => \Add1~114\,
	sumout => \Add1~109_sumout\,
	cout => \Add1~110\);

-- Location: FF_X31_Y75_N13
\hPos[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~109_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hPos[4]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y75_N15
\Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~105_sumout\ = SUM(( hPos(5) ) + ( GND ) + ( \Add1~110\ ))
-- \Add1~106\ = CARRY(( hPos(5) ) + ( GND ) + ( \Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hPos(5),
	cin => \Add1~110\,
	sumout => \Add1~105_sumout\,
	cout => \Add1~106\);

-- Location: FF_X31_Y75_N17
\hPos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~105_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(5));

-- Location: LABCELL_X31_Y75_N18
\Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~101_sumout\ = SUM(( \hPos[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~106\ ))
-- \Add1~102\ = CARRY(( \hPos[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hPos[6]~DUPLICATE_q\,
	cin => \Add1~106\,
	sumout => \Add1~101_sumout\,
	cout => \Add1~102\);

-- Location: FF_X31_Y75_N19
\hPos[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~101_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hPos[6]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y75_N21
\Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~97_sumout\ = SUM(( hPos(7) ) + ( GND ) + ( \Add1~102\ ))
-- \Add1~98\ = CARRY(( hPos(7) ) + ( GND ) + ( \Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hPos(7),
	cin => \Add1~102\,
	sumout => \Add1~97_sumout\,
	cout => \Add1~98\);

-- Location: FF_X31_Y75_N23
\hPos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~97_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(7));

-- Location: FF_X31_Y75_N25
\hPos[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~1_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hPos[8]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y75_N36
\Horizontal_synchronization~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Horizontal_synchronization~0_combout\ = ( hPos(6) & ( (hPos(7) & ((!hPos(4)) # (!hPos(5)))) ) ) # ( !hPos(6) & ( (hPos(7) & ((hPos(5)) # (hPos(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100000000111111000000000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hPos(4),
	datac => ALT_INV_hPos(5),
	datad => ALT_INV_hPos(7),
	dataf => ALT_INV_hPos(6),
	combout => \Horizontal_synchronization~0_combout\);

-- Location: FF_X31_Y74_N34
\hPos[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add1~5_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(31));

-- Location: LABCELL_X30_Y74_N54
\Horizontal_synchronization~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Horizontal_synchronization~1_combout\ = ( \Equal0~4_combout\ & ( hPos(31) ) ) # ( !\Equal0~4_combout\ & ( hPos(31) ) ) # ( \Equal0~4_combout\ & ( !hPos(31) & ( ((!hPos(9)) # (!\Horizontal_synchronization~0_combout\)) # (\hPos[8]~DUPLICATE_q\) ) ) ) # ( 
-- !\Equal0~4_combout\ & ( !hPos(31) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111011111110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hPos[8]~DUPLICATE_q\,
	datab => ALT_INV_hPos(9),
	datac => \ALT_INV_Horizontal_synchronization~0_combout\,
	datae => \ALT_INV_Equal0~4_combout\,
	dataf => ALT_INV_hPos(31),
	combout => \Horizontal_synchronization~1_combout\);

-- Location: FF_X30_Y74_N55
\VGA_HS~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Horizontal_synchronization~1_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_HS~reg0_q\);

-- Location: FF_X31_Y72_N13
\VPos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~117_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPos(4));

-- Location: LABCELL_X31_Y72_N0
\Add2~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~125_sumout\ = SUM(( VPos(0) ) + ( VCC ) + ( !VCC ))
-- \Add2~126\ = CARRY(( VPos(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_VPos(0),
	cin => GND,
	sumout => \Add2~125_sumout\,
	cout => \Add2~126\);

-- Location: FF_X31_Y72_N1
\VPos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~125_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPos(0));

-- Location: LABCELL_X31_Y72_N3
\Add2~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~121_sumout\ = SUM(( VPos(1) ) + ( GND ) + ( \Add2~126\ ))
-- \Add2~122\ = CARRY(( VPos(1) ) + ( GND ) + ( \Add2~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_VPos(1),
	cin => \Add2~126\,
	sumout => \Add2~121_sumout\,
	cout => \Add2~122\);

-- Location: FF_X31_Y72_N4
\VPos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~121_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPos(1));

-- Location: LABCELL_X31_Y72_N6
\Add2~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~109_sumout\ = SUM(( VPos(2) ) + ( GND ) + ( \Add2~122\ ))
-- \Add2~110\ = CARRY(( VPos(2) ) + ( GND ) + ( \Add2~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_VPos(2),
	cin => \Add2~122\,
	sumout => \Add2~109_sumout\,
	cout => \Add2~110\);

-- Location: FF_X31_Y72_N8
\VPos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~109_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPos(2));

-- Location: LABCELL_X31_Y72_N9
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( VPos(3) ) + ( GND ) + ( \Add2~110\ ))
-- \Add2~2\ = CARRY(( VPos(3) ) + ( GND ) + ( \Add2~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_VPos(3),
	cin => \Add2~110\,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: FF_X31_Y72_N10
\VPos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~1_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPos(3));

-- Location: LABCELL_X31_Y72_N12
\Add2~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~117_sumout\ = SUM(( VPos(4) ) + ( GND ) + ( \Add2~2\ ))
-- \Add2~118\ = CARRY(( VPos(4) ) + ( GND ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_VPos(4),
	cin => \Add2~2\,
	sumout => \Add2~117_sumout\,
	cout => \Add2~118\);

-- Location: FF_X31_Y72_N14
\VPos[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~117_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VPos[4]~DUPLICATE_q\);

-- Location: FF_X31_Y72_N17
\VPos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~105_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPos(5));

-- Location: LABCELL_X31_Y72_N15
\Add2~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~105_sumout\ = SUM(( VPos(5) ) + ( GND ) + ( \Add2~118\ ))
-- \Add2~106\ = CARRY(( VPos(5) ) + ( GND ) + ( \Add2~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_VPos(5),
	cin => \Add2~118\,
	sumout => \Add2~105_sumout\,
	cout => \Add2~106\);

-- Location: FF_X31_Y72_N16
\VPos[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~105_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VPos[5]~DUPLICATE_q\);

-- Location: FF_X31_Y72_N2
\VPos[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~125_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VPos[0]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y72_N18
\Add2~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~101_sumout\ = SUM(( VPos(6) ) + ( GND ) + ( \Add2~106\ ))
-- \Add2~102\ = CARRY(( VPos(6) ) + ( GND ) + ( \Add2~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_VPos(6),
	cin => \Add2~106\,
	sumout => \Add2~101_sumout\,
	cout => \Add2~102\);

-- Location: FF_X31_Y72_N19
\VPos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~101_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPos(6));

-- Location: FF_X31_Y72_N7
\VPos[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~109_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VPos[2]~DUPLICATE_q\);

-- Location: FF_X31_Y72_N5
\VPos[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~121_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VPos[1]~DUPLICATE_q\);

-- Location: FF_X31_Y72_N25
\VPos[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~93_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VPos[8]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y72_N21
\Add2~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~97_sumout\ = SUM(( \VPos[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~102\ ))
-- \Add2~98\ = CARRY(( \VPos[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_VPos[7]~DUPLICATE_q\,
	cin => \Add2~102\,
	sumout => \Add2~97_sumout\,
	cout => \Add2~98\);

-- Location: FF_X31_Y72_N22
\VPos[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~97_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VPos[7]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y72_N24
\Add2~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~93_sumout\ = SUM(( \VPos[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~98\ ))
-- \Add2~94\ = CARRY(( \VPos[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_VPos[8]~DUPLICATE_q\,
	cin => \Add2~98\,
	sumout => \Add2~93_sumout\,
	cout => \Add2~94\);

-- Location: FF_X31_Y72_N26
\VPos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~93_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPos(8));

-- Location: FF_X31_Y72_N29
\VPos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~113_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPos(9));

-- Location: LABCELL_X31_Y72_N27
\Add2~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~113_sumout\ = SUM(( VPos(9) ) + ( GND ) + ( \Add2~94\ ))
-- \Add2~114\ = CARRY(( VPos(9) ) + ( GND ) + ( \Add2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_VPos(9),
	cin => \Add2~94\,
	sumout => \Add2~113_sumout\,
	cout => \Add2~114\);

-- Location: FF_X31_Y72_N28
\VPos[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~113_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VPos[9]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y71_N48
\Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = ( !\VPos[7]~DUPLICATE_q\ & ( (\VPos[2]~DUPLICATE_q\ & (!\VPos[1]~DUPLICATE_q\ & (!VPos(8) & \VPos[9]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_VPos[2]~DUPLICATE_q\,
	datab => \ALT_INV_VPos[1]~DUPLICATE_q\,
	datac => ALT_INV_VPos(8),
	datad => \ALT_INV_VPos[9]~DUPLICATE_q\,
	dataf => \ALT_INV_VPos[7]~DUPLICATE_q\,
	combout => \Equal1~5_combout\);

-- Location: LABCELL_X31_Y71_N54
\Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = ( \Equal1~5_combout\ & ( (!\VPos[4]~DUPLICATE_q\ & (!\VPos[5]~DUPLICATE_q\ & (!\VPos[0]~DUPLICATE_q\ & !VPos(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_VPos[4]~DUPLICATE_q\,
	datab => \ALT_INV_VPos[5]~DUPLICATE_q\,
	datac => \ALT_INV_VPos[0]~DUPLICATE_q\,
	datad => ALT_INV_VPos(6),
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \Equal1~6_combout\);

-- Location: LABCELL_X31_Y72_N30
\Add2~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~89_sumout\ = SUM(( VPos(10) ) + ( GND ) + ( \Add2~114\ ))
-- \Add2~90\ = CARRY(( VPos(10) ) + ( GND ) + ( \Add2~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_VPos(10),
	cin => \Add2~114\,
	sumout => \Add2~89_sumout\,
	cout => \Add2~90\);

-- Location: FF_X31_Y72_N31
\VPos[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~89_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPos(10));

-- Location: LABCELL_X31_Y72_N33
\Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~85_sumout\ = SUM(( VPos(11) ) + ( GND ) + ( \Add2~90\ ))
-- \Add2~86\ = CARRY(( VPos(11) ) + ( GND ) + ( \Add2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_VPos(11),
	cin => \Add2~90\,
	sumout => \Add2~85_sumout\,
	cout => \Add2~86\);

-- Location: FF_X31_Y72_N35
\VPos[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~85_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPos(11));

-- Location: LABCELL_X31_Y72_N36
\Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~81_sumout\ = SUM(( \VPos[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~86\ ))
-- \Add2~82\ = CARRY(( \VPos[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_VPos[12]~DUPLICATE_q\,
	cin => \Add2~86\,
	sumout => \Add2~81_sumout\,
	cout => \Add2~82\);

-- Location: FF_X31_Y72_N37
\VPos[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~81_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VPos[12]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y72_N39
\Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~77_sumout\ = SUM(( VPos(13) ) + ( GND ) + ( \Add2~82\ ))
-- \Add2~78\ = CARRY(( VPos(13) ) + ( GND ) + ( \Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_VPos(13),
	cin => \Add2~82\,
	sumout => \Add2~77_sumout\,
	cout => \Add2~78\);

-- Location: FF_X31_Y72_N40
\VPos[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~77_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPos(13));

-- Location: LABCELL_X31_Y72_N42
\Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~73_sumout\ = SUM(( VPos(14) ) + ( GND ) + ( \Add2~78\ ))
-- \Add2~74\ = CARRY(( VPos(14) ) + ( GND ) + ( \Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_VPos(14),
	cin => \Add2~78\,
	sumout => \Add2~73_sumout\,
	cout => \Add2~74\);

-- Location: FF_X31_Y72_N43
\VPos[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~73_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPos(14));

-- Location: LABCELL_X31_Y72_N45
\Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~69_sumout\ = SUM(( VPos(15) ) + ( GND ) + ( \Add2~74\ ))
-- \Add2~70\ = CARRY(( VPos(15) ) + ( GND ) + ( \Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_VPos(15),
	cin => \Add2~74\,
	sumout => \Add2~69_sumout\,
	cout => \Add2~70\);

-- Location: FF_X31_Y72_N46
\VPos[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~69_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPos(15));

-- Location: LABCELL_X31_Y72_N48
\Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~65_sumout\ = SUM(( VPos(16) ) + ( GND ) + ( \Add2~70\ ))
-- \Add2~66\ = CARRY(( VPos(16) ) + ( GND ) + ( \Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_VPos(16),
	cin => \Add2~70\,
	sumout => \Add2~65_sumout\,
	cout => \Add2~66\);

-- Location: FF_X31_Y72_N49
\VPos[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~65_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPos(16));

-- Location: LABCELL_X31_Y72_N51
\Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~61_sumout\ = SUM(( VPos(17) ) + ( GND ) + ( \Add2~66\ ))
-- \Add2~62\ = CARRY(( VPos(17) ) + ( GND ) + ( \Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_VPos(17),
	cin => \Add2~66\,
	sumout => \Add2~61_sumout\,
	cout => \Add2~62\);

-- Location: FF_X31_Y72_N52
\VPos[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~61_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPos(17));

-- Location: LABCELL_X31_Y72_N54
\Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~57_sumout\ = SUM(( VPos(18) ) + ( GND ) + ( \Add2~62\ ))
-- \Add2~58\ = CARRY(( VPos(18) ) + ( GND ) + ( \Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_VPos(18),
	cin => \Add2~62\,
	sumout => \Add2~57_sumout\,
	cout => \Add2~58\);

-- Location: FF_X31_Y72_N56
\VPos[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~57_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPos(18));

-- Location: LABCELL_X31_Y72_N57
\Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~53_sumout\ = SUM(( \VPos[19]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~58\ ))
-- \Add2~54\ = CARRY(( \VPos[19]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_VPos[19]~DUPLICATE_q\,
	cin => \Add2~58\,
	sumout => \Add2~53_sumout\,
	cout => \Add2~54\);

-- Location: FF_X31_Y72_N58
\VPos[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~53_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VPos[19]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y71_N0
\Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~49_sumout\ = SUM(( VPos(20) ) + ( GND ) + ( \Add2~54\ ))
-- \Add2~50\ = CARRY(( VPos(20) ) + ( GND ) + ( \Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_VPos(20),
	cin => \Add2~54\,
	sumout => \Add2~49_sumout\,
	cout => \Add2~50\);

-- Location: FF_X31_Y71_N1
\VPos[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~49_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPos(20));

-- Location: LABCELL_X31_Y71_N3
\Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~45_sumout\ = SUM(( VPos(21) ) + ( GND ) + ( \Add2~50\ ))
-- \Add2~46\ = CARRY(( VPos(21) ) + ( GND ) + ( \Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_VPos(21),
	cin => \Add2~50\,
	sumout => \Add2~45_sumout\,
	cout => \Add2~46\);

-- Location: FF_X31_Y71_N5
\VPos[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~45_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPos(21));

-- Location: LABCELL_X31_Y71_N6
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( VPos(22) ) + ( GND ) + ( \Add2~46\ ))
-- \Add2~18\ = CARRY(( VPos(22) ) + ( GND ) + ( \Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_VPos(22),
	cin => \Add2~46\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: FF_X31_Y71_N7
\VPos[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~17_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPos(22));

-- Location: LABCELL_X31_Y71_N9
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( VPos(23) ) + ( GND ) + ( \Add2~18\ ))
-- \Add2~14\ = CARRY(( VPos(23) ) + ( GND ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_VPos(23),
	cin => \Add2~18\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: LABCELL_X31_Y71_N12
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( VPos(24) ) + ( GND ) + ( \Add2~14\ ))
-- \Add2~10\ = CARRY(( VPos(24) ) + ( GND ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_VPos(24),
	cin => \Add2~14\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: FF_X31_Y71_N13
\VPos[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~9_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPos(24));

-- Location: LABCELL_X31_Y71_N15
\Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( VPos(25) ) + ( GND ) + ( \Add2~10\ ))
-- \Add2~42\ = CARRY(( VPos(25) ) + ( GND ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_VPos(25),
	cin => \Add2~10\,
	sumout => \Add2~41_sumout\,
	cout => \Add2~42\);

-- Location: FF_X31_Y71_N17
\VPos[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~41_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPos(25));

-- Location: LABCELL_X31_Y71_N18
\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( \VPos[26]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~42\ ))
-- \Add2~38\ = CARRY(( \VPos[26]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_VPos[26]~DUPLICATE_q\,
	cin => \Add2~42\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\);

-- Location: FF_X31_Y71_N19
\VPos[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~37_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VPos[26]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y71_N21
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( \VPos[27]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~38\ ))
-- \Add2~34\ = CARRY(( \VPos[27]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_VPos[27]~DUPLICATE_q\,
	cin => \Add2~38\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: FF_X31_Y71_N22
\VPos[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~33_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VPos[27]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y71_N24
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( VPos(28) ) + ( GND ) + ( \Add2~34\ ))
-- \Add2~30\ = CARRY(( VPos(28) ) + ( GND ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_VPos(28),
	cin => \Add2~34\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: FF_X31_Y71_N25
\VPos[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~29_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPos(28));

-- Location: LABCELL_X31_Y71_N27
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( \VPos[29]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~30\ ))
-- \Add2~26\ = CARRY(( \VPos[29]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_VPos[29]~DUPLICATE_q\,
	cin => \Add2~30\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: FF_X31_Y71_N28
\VPos[29]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~25_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VPos[29]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y71_N30
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( \VPos[30]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~26\ ))
-- \Add2~22\ = CARRY(( \VPos[30]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_VPos[30]~DUPLICATE_q\,
	cin => \Add2~26\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: FF_X31_Y71_N31
\VPos[30]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~21_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VPos[30]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y71_N33
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( VPos(31) ) + ( GND ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_VPos(31),
	cin => \Add2~22\,
	sumout => \Add2~5_sumout\);

-- Location: FF_X31_Y71_N35
\VPos[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~5_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPos(31));

-- Location: LABCELL_X31_Y71_N36
\Equal1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = ( !VPos(31) & ( (\Equal1~4_combout\ & (\Equal1~6_combout\ & VPos(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal1~4_combout\,
	datac => \ALT_INV_Equal1~6_combout\,
	datad => ALT_INV_VPos(3),
	dataf => ALT_INV_VPos(31),
	combout => \Equal1~7_combout\);

-- Location: FF_X31_Y71_N10
\VPos[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~13_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPos(23));

-- Location: FF_X31_Y71_N11
\VPos[23]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~13_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VPos[23]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y71_N51
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !VPos(24) & ( (!\VPos[23]~DUPLICATE_q\ & !VPos(22)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_VPos[23]~DUPLICATE_q\,
	datad => ALT_INV_VPos(22),
	dataf => ALT_INV_VPos(24),
	combout => \Equal1~0_combout\);

-- Location: FF_X31_Y71_N23
\VPos[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~33_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPos(27));

-- Location: FF_X31_Y71_N20
\VPos[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~37_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPos(26));

-- Location: FF_X31_Y71_N29
\VPos[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~25_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPos(29));

-- Location: FF_X31_Y71_N32
\VPos[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~21_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPos(30));

-- Location: LABCELL_X31_Y71_N42
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !VPos(29) & ( !VPos(30) & ( (!VPos(27) & (!VPos(25) & (!VPos(26) & !VPos(28)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_VPos(27),
	datab => ALT_INV_VPos(25),
	datac => ALT_INV_VPos(26),
	datad => ALT_INV_VPos(28),
	datae => ALT_INV_VPos(29),
	dataf => ALT_INV_VPos(30),
	combout => \Equal1~1_combout\);

-- Location: FF_X31_Y72_N38
\VPos[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~81_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPos(12));

-- Location: FF_X31_Y72_N44
\VPos[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~73_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VPos[14]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y71_N12
\Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = ( !VPos(11) & ( !VPos(15) & ( (!VPos(12) & (!VPos(13) & (!VPos(10) & !\VPos[14]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_VPos(12),
	datab => ALT_INV_VPos(13),
	datac => ALT_INV_VPos(10),
	datad => \ALT_INV_VPos[14]~DUPLICATE_q\,
	datae => ALT_INV_VPos(11),
	dataf => ALT_INV_VPos(15),
	combout => \Equal1~3_combout\);

-- Location: FF_X31_Y71_N2
\VPos[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~49_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VPos[20]~DUPLICATE_q\);

-- Location: FF_X31_Y72_N59
\VPos[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~53_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPos(19));

-- Location: LABCELL_X30_Y71_N42
\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( !VPos(16) & ( !VPos(17) & ( (!\VPos[20]~DUPLICATE_q\ & (!VPos(19) & (!VPos(21) & !VPos(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_VPos[20]~DUPLICATE_q\,
	datab => ALT_INV_VPos(19),
	datac => ALT_INV_VPos(21),
	datad => ALT_INV_VPos(18),
	datae => ALT_INV_VPos(16),
	dataf => ALT_INV_VPos(17),
	combout => \Equal1~2_combout\);

-- Location: LABCELL_X31_Y71_N39
\Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = ( \Equal1~2_combout\ & ( (\Equal1~0_combout\ & (\Equal1~1_combout\ & \Equal1~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_Equal1~1_combout\,
	datad => \ALT_INV_Equal1~3_combout\,
	dataf => \ALT_INV_Equal1~2_combout\,
	combout => \Equal1~4_combout\);

-- Location: FF_X31_Y71_N34
\VPos[31]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~5_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VPos[31]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y73_N36
\Vertical_synchronization~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Vertical_synchronization~0_combout\ = ( !\VPos[4]~DUPLICATE_q\ & ( !\VPos[9]~DUPLICATE_q\ & ( (!\VPos[2]~DUPLICATE_q\ & (\VPos[1]~DUPLICATE_q\)) # (\VPos[2]~DUPLICATE_q\ & ((!VPos(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001001110010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_VPos[2]~DUPLICATE_q\,
	datab => \ALT_INV_VPos[1]~DUPLICATE_q\,
	datac => ALT_INV_VPos(3),
	datae => \ALT_INV_VPos[4]~DUPLICATE_q\,
	dataf => \ALT_INV_VPos[9]~DUPLICATE_q\,
	combout => \Vertical_synchronization~0_combout\);

-- Location: FF_X31_Y72_N23
\VPos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add2~97_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPos(7));

-- Location: LABCELL_X31_Y73_N18
\LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = ( \VPos[8]~DUPLICATE_q\ & ( VPos(6) & ( (VPos(7) & \VPos[5]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_VPos(7),
	datac => \ALT_INV_VPos[5]~DUPLICATE_q\,
	datae => \ALT_INV_VPos[8]~DUPLICATE_q\,
	dataf => ALT_INV_VPos(6),
	combout => \LessThan6~0_combout\);

-- Location: LABCELL_X31_Y73_N24
\Vertical_synchronization~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Vertical_synchronization~1_combout\ = ( \Vertical_synchronization~0_combout\ & ( \LessThan6~0_combout\ & ( (!\Equal1~4_combout\) # ((!VPos(3)) # (\VPos[31]~DUPLICATE_q\)) ) ) ) # ( !\Vertical_synchronization~0_combout\ & ( \LessThan6~0_combout\ ) ) # ( 
-- \Vertical_synchronization~0_combout\ & ( !\LessThan6~0_combout\ ) ) # ( !\Vertical_synchronization~0_combout\ & ( !\LessThan6~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal1~4_combout\,
	datac => ALT_INV_VPos(3),
	datad => \ALT_INV_VPos[31]~DUPLICATE_q\,
	datae => \ALT_INV_Vertical_synchronization~0_combout\,
	dataf => \ALT_INV_LessThan6~0_combout\,
	combout => \Vertical_synchronization~1_combout\);

-- Location: FF_X31_Y73_N25
\VGA_VS~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Vertical_synchronization~1_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_VS~reg0_q\);

-- Location: FF_X30_Y74_N50
\cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \cnt~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(0));

-- Location: LABCELL_X29_Y74_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( cnt(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( cnt(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_cnt(0),
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: LABCELL_X29_Y74_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \cnt[1]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \cnt[1]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_cnt[1]~DUPLICATE_q\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: LABCELL_X29_Y74_N39
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( cnt(13) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~42\ = CARRY(( cnt(13) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(13),
	cin => \Add0~54\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: LABCELL_X29_Y74_N42
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( cnt(14) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~38\ = CARRY(( cnt(14) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_cnt(14),
	cin => \Add0~42\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X29_Y74_N43
\cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~37_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(14));

-- Location: FF_X29_Y74_N25
\cnt[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~49_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[8]~DUPLICATE_q\);

-- Location: FF_X29_Y74_N8
\cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~9_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(2));

-- Location: FF_X29_Y74_N10
\cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~13_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(3));

-- Location: LABCELL_X30_Y73_N0
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( !\cnt[7]~DUPLICATE_q\ & ( !cnt(6) & ( (!cnt(3) & (!\cnt[0]~DUPLICATE_q\ & (!cnt(4) & !cnt(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(3),
	datab => \ALT_INV_cnt[0]~DUPLICATE_q\,
	datac => ALT_INV_cnt(4),
	datad => ALT_INV_cnt(5),
	datae => \ALT_INV_cnt[7]~DUPLICATE_q\,
	dataf => ALT_INV_cnt(6),
	combout => \LessThan0~0_combout\);

-- Location: FF_X29_Y74_N35
\cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~57_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(11));

-- Location: LABCELL_X30_Y73_N33
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( !cnt(10) & ( !cnt(11) & ( !cnt(12) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt(12),
	datae => ALT_INV_cnt(10),
	dataf => ALT_INV_cnt(11),
	combout => \LessThan0~1_combout\);

-- Location: LABCELL_X30_Y73_N27
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( \LessThan0~0_combout\ & ( \LessThan0~1_combout\ & ( (!cnt(9)) # ((!\cnt[8]~DUPLICATE_q\) # ((!cnt(2) & !\cnt[1]~DUPLICATE_q\))) ) ) ) # ( !\LessThan0~0_combout\ & ( \LessThan0~1_combout\ & ( (!cnt(9)) # (!\cnt[8]~DUPLICATE_q\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101110111011101111111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(9),
	datab => \ALT_INV_cnt[8]~DUPLICATE_q\,
	datac => ALT_INV_cnt(2),
	datad => \ALT_INV_cnt[1]~DUPLICATE_q\,
	datae => \ALT_INV_LessThan0~0_combout\,
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X29_Y74_N45
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( cnt(15) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~78\ = CARRY(( cnt(15) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(15),
	cin => \Add0~38\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X29_Y74_N46
\cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~77_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(15));

-- Location: LABCELL_X29_Y74_N48
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( cnt(16) ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~86\ = CARRY(( cnt(16) ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt(16),
	cin => \Add0~78\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X29_Y74_N49
\cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~85_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(16));

-- Location: LABCELL_X29_Y74_N51
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( cnt(17) ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~82\ = CARRY(( cnt(17) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(17),
	cin => \Add0~86\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X29_Y74_N52
\cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~81_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(17));

-- Location: LABCELL_X29_Y74_N54
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( cnt(18) ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~94\ = CARRY(( cnt(18) ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(18),
	cin => \Add0~82\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X29_Y74_N56
\cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~93_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(18));

-- Location: LABCELL_X29_Y74_N57
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( cnt(19) ) + ( GND ) + ( \Add0~94\ ))
-- \Add0~98\ = CARRY(( cnt(19) ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_cnt(19),
	cin => \Add0~94\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X29_Y74_N58
\cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~97_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(19));

-- Location: LABCELL_X29_Y73_N0
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( \cnt[20]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~98\ ))
-- \Add0~102\ = CARRY(( \cnt[20]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt[20]~DUPLICATE_q\,
	cin => \Add0~98\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X29_Y73_N1
\cnt[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~101_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[20]~DUPLICATE_q\);

-- Location: LABCELL_X29_Y73_N3
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( \cnt[21]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~106\ = CARRY(( \cnt[21]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cnt[21]~DUPLICATE_q\,
	cin => \Add0~102\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X29_Y73_N4
\cnt[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~105_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[21]~DUPLICATE_q\);

-- Location: LABCELL_X29_Y73_N6
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( cnt(22) ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~66\ = CARRY(( cnt(22) ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(22),
	cin => \Add0~106\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X29_Y73_N7
\cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~65_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(22));

-- Location: FF_X29_Y73_N22
\cnt[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~117_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[27]~DUPLICATE_q\);

-- Location: LABCELL_X29_Y73_N9
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( cnt(23) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~74\ = CARRY(( cnt(23) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt(23),
	cin => \Add0~66\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X29_Y73_N10
\cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~73_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(23));

-- Location: LABCELL_X29_Y73_N12
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( \cnt[24]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~110\ = CARRY(( \cnt[24]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cnt[24]~DUPLICATE_q\,
	cin => \Add0~74\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: FF_X29_Y73_N13
\cnt[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~109_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[24]~DUPLICATE_q\);

-- Location: LABCELL_X29_Y73_N15
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( \cnt[25]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~110\ ))
-- \Add0~90\ = CARRY(( \cnt[25]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt[25]~DUPLICATE_q\,
	cin => \Add0~110\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X29_Y73_N16
\cnt[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~89_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[25]~DUPLICATE_q\);

-- Location: LABCELL_X29_Y73_N18
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( cnt(26) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~114\ = CARRY(( cnt(26) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_cnt(26),
	cin => \Add0~90\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: FF_X29_Y73_N19
\cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~113_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(26));

-- Location: LABCELL_X29_Y73_N21
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( \cnt[27]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~114\ ))
-- \Add0~118\ = CARRY(( \cnt[27]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt[27]~DUPLICATE_q\,
	cin => \Add0~114\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: FF_X29_Y73_N23
\cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~117_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(27));

-- Location: FF_X29_Y73_N14
\cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~109_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(24));

-- Location: FF_X29_Y73_N25
\cnt[28]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~121_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[28]~DUPLICATE_q\);

-- Location: LABCELL_X29_Y73_N24
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( \cnt[28]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~118\ ))
-- \Add0~122\ = CARRY(( \cnt[28]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cnt[28]~DUPLICATE_q\,
	cin => \Add0~118\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: FF_X29_Y73_N26
\cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~121_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(28));

-- Location: LABCELL_X29_Y73_N27
\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( cnt(29) ) + ( GND ) + ( \Add0~122\ ))
-- \Add0~126\ = CARRY(( cnt(29) ) + ( GND ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt(29),
	cin => \Add0~122\,
	sumout => \Add0~125_sumout\,
	cout => \Add0~126\);

-- Location: FF_X29_Y73_N29
\cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~125_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(29));

-- Location: LABCELL_X29_Y73_N51
\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( !cnt(29) & ( !cnt(26) & ( (!cnt(27) & (!cnt(24) & !cnt(28))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(27),
	datac => ALT_INV_cnt(24),
	datad => ALT_INV_cnt(28),
	datae => ALT_INV_cnt(29),
	dataf => ALT_INV_cnt(26),
	combout => \LessThan0~5_combout\);

-- Location: FF_X29_Y73_N32
\cnt[30]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~69_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[30]~DUPLICATE_q\);

-- Location: LABCELL_X29_Y73_N30
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( \cnt[30]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~126\ ))
-- \Add0~70\ = CARRY(( \cnt[30]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cnt[30]~DUPLICATE_q\,
	cin => \Add0~126\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X29_Y73_N31
\cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~69_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(30));

-- Location: LABCELL_X30_Y73_N54
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( !cnt(23) & ( (!cnt(15) & (!cnt(16) & !cnt(17))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(15),
	datab => ALT_INV_cnt(16),
	datad => ALT_INV_cnt(17),
	dataf => ALT_INV_cnt(23),
	combout => \LessThan0~3_combout\);

-- Location: FF_X29_Y73_N5
\cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~105_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(21));

-- Location: FF_X29_Y73_N2
\cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~101_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(20));

-- Location: FF_X29_Y73_N17
\cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~89_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(25));

-- Location: LABCELL_X29_Y73_N54
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( !cnt(20) & ( !cnt(25) & ( (!cnt(18) & (!cnt(21) & !cnt(19))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(18),
	datac => ALT_INV_cnt(21),
	datad => ALT_INV_cnt(19),
	datae => ALT_INV_cnt(20),
	dataf => ALT_INV_cnt(25),
	combout => \LessThan0~4_combout\);

-- Location: LABCELL_X30_Y73_N36
\LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ( \LessThan0~3_combout\ & ( \LessThan0~4_combout\ & ( (!cnt(22) & (\LessThan0~5_combout\ & !cnt(30))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(22),
	datac => \ALT_INV_LessThan0~5_combout\,
	datad => ALT_INV_cnt(30),
	datae => \ALT_INV_LessThan0~3_combout\,
	dataf => \ALT_INV_LessThan0~4_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LABCELL_X29_Y73_N33
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \cnt[31]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt[31]~DUPLICATE_q\,
	cin => \Add0~70\,
	sumout => \Add0~33_sumout\);

-- Location: LABCELL_X29_Y73_N36
\cnt~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt~1_combout\ = ( \Add0~33_sumout\ & ( !\LessThan0~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~7_combout\,
	dataf => \ALT_INV_Add0~33_sumout\,
	combout => \cnt~1_combout\);

-- Location: FF_X29_Y73_N37
\cnt[31]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \cnt~1_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[31]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y73_N42
\LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = ( \LessThan0~6_combout\ & ( !\cnt[31]~DUPLICATE_q\ & ( (cnt(13) & (cnt(14) & !\LessThan0~2_combout\)) ) ) ) # ( !\LessThan0~6_combout\ & ( !\cnt[31]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000100000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(13),
	datab => ALT_INV_cnt(14),
	datac => \ALT_INV_LessThan0~2_combout\,
	datae => \ALT_INV_LessThan0~6_combout\,
	dataf => \ALT_INV_cnt[31]~DUPLICATE_q\,
	combout => \LessThan0~7_combout\);

-- Location: FF_X29_Y74_N5
\cnt[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~5_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[1]~DUPLICATE_q\);

-- Location: LABCELL_X29_Y74_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \cnt[2]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \cnt[2]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_cnt[2]~DUPLICATE_q\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X29_Y74_N7
\cnt[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~9_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[2]~DUPLICATE_q\);

-- Location: LABCELL_X29_Y74_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \cnt[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \cnt[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cnt[3]~DUPLICATE_q\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X29_Y74_N11
\cnt[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~13_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[3]~DUPLICATE_q\);

-- Location: LABCELL_X29_Y74_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( cnt(4) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( cnt(4) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_cnt(4),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X29_Y74_N14
\cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~17_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(4));

-- Location: LABCELL_X29_Y74_N15
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( cnt(5) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( cnt(5) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(5),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X29_Y74_N16
\cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~21_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(5));

-- Location: LABCELL_X29_Y74_N18
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( cnt(6) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( cnt(6) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt(6),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X29_Y74_N19
\cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~25_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(6));

-- Location: LABCELL_X29_Y74_N21
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \cnt[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( \cnt[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_cnt[7]~DUPLICATE_q\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X29_Y74_N23
\cnt[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~29_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[7]~DUPLICATE_q\);

-- Location: LABCELL_X29_Y74_N24
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( cnt(8) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~50\ = CARRY(( cnt(8) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(8),
	cin => \Add0~30\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X29_Y74_N26
\cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~49_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(8));

-- Location: LABCELL_X29_Y74_N27
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( cnt(9) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~46\ = CARRY(( cnt(9) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(9),
	cin => \Add0~50\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X29_Y74_N29
\cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~45_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(9));

-- Location: LABCELL_X29_Y74_N30
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( cnt(10) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~62\ = CARRY(( cnt(10) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt(10),
	cin => \Add0~46\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X29_Y74_N31
\cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~61_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(10));

-- Location: LABCELL_X29_Y74_N33
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \cnt[11]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~58\ = CARRY(( \cnt[11]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cnt[11]~DUPLICATE_q\,
	cin => \Add0~62\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X29_Y74_N34
\cnt[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~57_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[11]~DUPLICATE_q\);

-- Location: LABCELL_X29_Y74_N36
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( cnt(12) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~54\ = CARRY(( cnt(12) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_cnt(12),
	cin => \Add0~58\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X29_Y74_N38
\cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~53_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(12));

-- Location: FF_X29_Y74_N40
\cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~41_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(13));

-- Location: FF_X29_Y73_N38
\cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \cnt~1_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(31));

-- Location: LABCELL_X30_Y74_N48
\cnt~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt~0_combout\ = ( \LessThan0~2_combout\ & ( \LessThan0~6_combout\ & ( \Add0~1_sumout\ ) ) ) # ( !\LessThan0~2_combout\ & ( \LessThan0~6_combout\ & ( (\Add0~1_sumout\ & ((!cnt(13)) # ((!cnt(14)) # (cnt(31))))) ) ) ) # ( \LessThan0~2_combout\ & ( 
-- !\LessThan0~6_combout\ & ( (\Add0~1_sumout\ & cnt(31)) ) ) ) # ( !\LessThan0~2_combout\ & ( !\LessThan0~6_combout\ & ( (\Add0~1_sumout\ & cnt(31)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001110000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(13),
	datab => ALT_INV_cnt(14),
	datac => \ALT_INV_Add0~1_sumout\,
	datad => ALT_INV_cnt(31),
	datae => \ALT_INV_LessThan0~2_combout\,
	dataf => \ALT_INV_LessThan0~6_combout\,
	combout => \cnt~0_combout\);

-- Location: FF_X30_Y74_N49
\cnt[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \cnt~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[0]~DUPLICATE_q\);

-- Location: FF_X29_Y74_N4
\cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~5_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(1));

-- Location: FF_X29_Y74_N22
\cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \Add0~29_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(7));

-- Location: M10K_X26_Y71_N0
\ROM2|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => "00000F150F0000151D1400001D241900001E211B0000181C1B00001017150000090C0800000E1C0C00002A4B1B00002B491D00001F2A1D0000252F29000026362A000038545200002B4B40000029413000003D563C00003B603F00002D583300001B3F1800001C3A19000022401F0000162D1100001D3D1000001836090000172E1400001D391900001B2C1600001C321D00001D381F00001525160000162B1900001C4412000037680D0000335A0F00003667190000386D2500002D661E00001C3B1500001F4116000017301100001A37120000386224000033641A0000396B1A0000456D2D00001E3615000021422200002B492A0000132813000022482200",
	mem_init3 => "002857270000214A2300001C2C1B0000151B1200002A3E250000284F3000001F4A27000037693400002756260000274D3700001E3F2B000021422B00001A34220000162A1F00001E2C2800001F2A1D00001D361900001A321F000013201500000C170F0000102211000009190B0000141F1500000A0F090000080E08000019231B00001A2D1D00001B3523000018281C000057983E00004D8B2B00004D883900004A7E2B00003B6F1E00006A9C560000508A3D00001A430000003E6C3100004E7C4D0000527B5000004F744A00004A6B3E00004E6A2E00003D651A0000325E1000002D661C00004B772F0000638C46000074A66C0000568A4B0000305C220000",
	mem_init2 => "24531D000025541E000035681C00002C580C00001F44080000183207000023481C000030653A000038734F00003A754800002E6C2300002A681E00001F4E110000152C19000027332300001C3317000029512D000020462100001E3D1A000024511F0000234A1B0000294D1C000033632800002A5F170000275A0E0000285C180000295E1F00002D611D00002F5E1100003A6A310000326632000026561F00002D56210000283A2200001725170000233E2500002B591E00002E5624000027452B000023312100001D271D0000202D22000012171300000F17120000172F17000021351C00001C2A1A00001A2D1B0000182E1B00004260310000345729000033",
	mem_init1 => "571E00001F3D10000020321C00002943260000243B1D00001A28160000161F1300001E271B0000373C2D0000272C1F00003245210000273C1C00002B372300000B0E0B00000A0C0C00000A0D0A00000A0D0A00000B0E0B000010110E00000E100D00000D120E00000C0F0C00000A0D0A00000F150F0000191E180000131912000015181200002532370000415C6E00000B100E000018231600001A251900001D281B000013191200001E2820000023282400001D292900002335340000212C2D0000232A2A00002F43330000325F35000028562B0000215216000023520700001D410900001C3D0D0000284F1400001D421600002B452100002B341C00001A27",
	mem_init0 => "1C00001A271C0000122216000018351E00003A6424000045710E00002C5201000029591200002E592200003F682F000018400E0000214C15000018321200001F361A00001A341500001C32110000414D2C00001C1F15000016211400001D342100001B361B00001D3E1A00001938150000234D2100002D5E2B000025432700000F120C00000E130F0000233322000033533400002E4C2E00002F452D000028332900002032270000233027000020322500001F302600001C2B2100001D382100001F49290000192B2000001625190000224628000024512B0000214B26000022461D000016330E00000E1C0E00000D180E00001B2E1C00001A322100001C3622",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "tulips_rgb444_prog_planar_qcif_B.mif",
	init_file_layout => "port_a",
	logical_ram_name => "img_rom_b:ROM2|altsyncram:altsyncram_component|altsyncram_j234:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "clear0",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 40,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 40,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLOCK_25~q\,
	ena0 => VCC,
	clr0 => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	portaaddr => \ROM2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ROM2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LABCELL_X30_Y75_N54
\LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (hPos(9) & ((hPos(8)) # (hPos(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001100000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hPos(9),
	datac => ALT_INV_hPos(7),
	datad => ALT_INV_hPos(8),
	combout => \LessThan5~0_combout\);

-- Location: LABCELL_X30_Y71_N36
\LessThan8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan8~2_combout\ = ( \Equal1~1_combout\ & ( \Equal1~2_combout\ & ( (\Equal1~3_combout\ & (\Equal1~0_combout\ & !\VPos[9]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal1~3_combout\,
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_VPos[9]~DUPLICATE_q\,
	datae => \ALT_INV_Equal1~1_combout\,
	dataf => \ALT_INV_Equal1~2_combout\,
	combout => \LessThan8~2_combout\);

-- Location: LABCELL_X31_Y73_N54
\video_on~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_on~0_combout\ = ( \Equal0~4_combout\ & ( \LessThan8~2_combout\ & ( (!\hPos[31]~DUPLICATE_q\ & (!\LessThan5~0_combout\ & ((!\LessThan6~0_combout\) # (\VPos[31]~DUPLICATE_q\)))) # (\hPos[31]~DUPLICATE_q\ & (((!\LessThan6~0_combout\)) # 
-- (\VPos[31]~DUPLICATE_q\))) ) ) ) # ( !\Equal0~4_combout\ & ( \LessThan8~2_combout\ & ( (\hPos[31]~DUPLICATE_q\ & ((!\LessThan6~0_combout\) # (\VPos[31]~DUPLICATE_q\))) ) ) ) # ( \Equal0~4_combout\ & ( !\LessThan8~2_combout\ & ( (\VPos[31]~DUPLICATE_q\ & 
-- ((!\LessThan5~0_combout\) # (\hPos[31]~DUPLICATE_q\))) ) ) ) # ( !\Equal0~4_combout\ & ( !\LessThan8~2_combout\ & ( (\hPos[31]~DUPLICATE_q\ & \VPos[31]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001001100110001000101010001010100011111001101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hPos[31]~DUPLICATE_q\,
	datab => \ALT_INV_VPos[31]~DUPLICATE_q\,
	datac => \ALT_INV_LessThan6~0_combout\,
	datad => \ALT_INV_LessThan5~0_combout\,
	datae => \ALT_INV_Equal0~4_combout\,
	dataf => \ALT_INV_LessThan8~2_combout\,
	combout => \video_on~0_combout\);

-- Location: FF_X31_Y73_N55
videoOn : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \video_on~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \videoOn~q\);

-- Location: LABCELL_X30_Y75_N6
\LessThan7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = ( !hPos(9) & ( hPos(6) & ( (!hPos(8) & !hPos(7)) ) ) ) # ( !hPos(9) & ( !hPos(6) & ( (!hPos(8) & ((!hPos(5)) # ((!hPos(7)) # (!hPos(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001000000000000000000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hPos(5),
	datab => ALT_INV_hPos(8),
	datac => ALT_INV_hPos(7),
	datad => ALT_INV_hPos(4),
	datae => ALT_INV_hPos(9),
	dataf => ALT_INV_hPos(6),
	combout => \LessThan7~0_combout\);

-- Location: LABCELL_X31_Y71_N57
\LessThan8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan8~0_combout\ = ( \VPos[7]~DUPLICATE_q\ & ( (!\VPos[4]~DUPLICATE_q\ & (!\VPos[5]~DUPLICATE_q\ & (!VPos(6) & !VPos(8)))) ) ) # ( !\VPos[7]~DUPLICATE_q\ & ( !VPos(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_VPos[4]~DUPLICATE_q\,
	datab => \ALT_INV_VPos[5]~DUPLICATE_q\,
	datac => ALT_INV_VPos(6),
	datad => ALT_INV_VPos(8),
	dataf => \ALT_INV_VPos[7]~DUPLICATE_q\,
	combout => \LessThan8~0_combout\);

-- Location: LABCELL_X30_Y71_N54
\LessThan8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan8~1_combout\ = ( \LessThan8~0_combout\ & ( \Equal1~2_combout\ & ( (\Equal1~1_combout\ & (!\VPos[9]~DUPLICATE_q\ & (\Equal1~0_combout\ & \Equal1~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~1_combout\,
	datab => \ALT_INV_VPos[9]~DUPLICATE_q\,
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_Equal1~3_combout\,
	datae => \ALT_INV_LessThan8~0_combout\,
	dataf => \ALT_INV_Equal1~2_combout\,
	combout => \LessThan8~1_combout\);

-- Location: LABCELL_X30_Y71_N51
\VGA_G[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_G[6]~0_combout\ = ( VPos(31) & ( \Equal0~4_combout\ & ( (!\videoOn~q\) # ((!\hPos[31]~DUPLICATE_q\ & !\LessThan7~0_combout\)) ) ) ) # ( !VPos(31) & ( \Equal0~4_combout\ & ( (!\videoOn~q\) # ((!\LessThan8~1_combout\) # ((!\hPos[31]~DUPLICATE_q\ & 
-- !\LessThan7~0_combout\))) ) ) ) # ( VPos(31) & ( !\Equal0~4_combout\ & ( (!\videoOn~q\) # (!\hPos[31]~DUPLICATE_q\) ) ) ) # ( !VPos(31) & ( !\Equal0~4_combout\ & ( (!\videoOn~q\) # ((!\hPos[31]~DUPLICATE_q\) # (!\LessThan8~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101110111011101110111011111111111010101110101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_videoOn~q\,
	datab => \ALT_INV_hPos[31]~DUPLICATE_q\,
	datac => \ALT_INV_LessThan7~0_combout\,
	datad => \ALT_INV_LessThan8~1_combout\,
	datae => ALT_INV_VPos(31),
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \VGA_G[6]~0_combout\);

-- Location: FF_X30_Y71_N53
\VGA_R[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	asdata => \ROM0|altsyncram_component|auto_generated|q_a\(0),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \VGA_G[6]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[0]~reg0_q\);

-- Location: LABCELL_X30_Y72_N15
\VGA_R[1]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_R[1]~reg0feeder_combout\ = \ROM0|altsyncram_component|auto_generated|q_a\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM0|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \VGA_R[1]~reg0feeder_combout\);

-- Location: FF_X30_Y72_N16
\VGA_R[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \VGA_R[1]~reg0feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \VGA_G[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[1]~reg0_q\);

-- Location: FF_X30_Y71_N44
\VGA_R[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	asdata => \ROM0|altsyncram_component|auto_generated|q_a\(2),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \VGA_G[6]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[2]~reg0_q\);

-- Location: FF_X30_Y71_N40
\VGA_R[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	asdata => \ROM0|altsyncram_component|auto_generated|q_a\(3),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \VGA_G[6]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[3]~reg0_q\);

-- Location: LABCELL_X30_Y72_N9
\VGA_R[4]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_R[4]~reg0feeder_combout\ = \ROM0|altsyncram_component|auto_generated|q_a\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM0|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \VGA_R[4]~reg0feeder_combout\);

-- Location: FF_X30_Y72_N10
\VGA_R[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \VGA_R[4]~reg0feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \VGA_G[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[4]~reg0_q\);

-- Location: FF_X30_Y71_N50
\VGA_R[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	asdata => \ROM0|altsyncram_component|auto_generated|q_a\(5),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \VGA_G[6]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[5]~reg0_q\);

-- Location: LABCELL_X30_Y71_N30
\VGA_R[6]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_R[6]~reg0feeder_combout\ = \ROM0|altsyncram_component|auto_generated|q_a\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM0|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \VGA_R[6]~reg0feeder_combout\);

-- Location: FF_X30_Y71_N32
\VGA_R[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \VGA_R[6]~reg0feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \VGA_G[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[6]~reg0_q\);

-- Location: FF_X30_Y71_N46
\VGA_R[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	asdata => \ROM0|altsyncram_component|auto_generated|q_a\(7),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \VGA_G[6]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[7]~reg0_q\);

-- Location: LABCELL_X29_Y71_N15
\VGA_G[0]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_G[0]~reg0feeder_combout\ = \ROM1|altsyncram_component|auto_generated|q_a\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \VGA_G[0]~reg0feeder_combout\);

-- Location: FF_X29_Y71_N16
\VGA_G[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \VGA_G[0]~reg0feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \VGA_G[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[0]~reg0_q\);

-- Location: LABCELL_X30_Y71_N3
\VGA_G[1]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_G[1]~reg0feeder_combout\ = \ROM1|altsyncram_component|auto_generated|q_a\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \VGA_G[1]~reg0feeder_combout\);

-- Location: FF_X30_Y71_N4
\VGA_G[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \VGA_G[1]~reg0feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \VGA_G[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[1]~reg0_q\);

-- Location: LABCELL_X30_Y71_N18
\VGA_G[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_G[2]~reg0feeder_combout\ = \ROM1|altsyncram_component|auto_generated|q_a\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \VGA_G[2]~reg0feeder_combout\);

-- Location: FF_X30_Y71_N20
\VGA_G[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \VGA_G[2]~reg0feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \VGA_G[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[2]~reg0_q\);

-- Location: LABCELL_X30_Y71_N21
\VGA_G[3]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_G[3]~reg0feeder_combout\ = \ROM1|altsyncram_component|auto_generated|q_a\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \VGA_G[3]~reg0feeder_combout\);

-- Location: FF_X30_Y71_N22
\VGA_G[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \VGA_G[3]~reg0feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \VGA_G[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[3]~reg0_q\);

-- Location: LABCELL_X30_Y71_N24
\VGA_G[4]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_G[4]~reg0feeder_combout\ = \ROM1|altsyncram_component|auto_generated|q_a\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \VGA_G[4]~reg0feeder_combout\);

-- Location: FF_X30_Y71_N25
\VGA_G[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \VGA_G[4]~reg0feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \VGA_G[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[4]~reg0_q\);

-- Location: LABCELL_X30_Y71_N27
\VGA_G[5]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_G[5]~reg0feeder_combout\ = \ROM1|altsyncram_component|auto_generated|q_a\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	combout => \VGA_G[5]~reg0feeder_combout\);

-- Location: FF_X30_Y71_N28
\VGA_G[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \VGA_G[5]~reg0feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \VGA_G[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[5]~reg0_q\);

-- Location: FF_X30_Y71_N8
\VGA_G[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	asdata => \ROM1|altsyncram_component|auto_generated|q_a\(6),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \VGA_G[6]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[6]~reg0_q\);

-- Location: LABCELL_X30_Y71_N0
\VGA_G[7]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_G[7]~reg0feeder_combout\ = \ROM1|altsyncram_component|auto_generated|q_a\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \VGA_G[7]~reg0feeder_combout\);

-- Location: FF_X30_Y71_N2
\VGA_G[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \VGA_G[7]~reg0feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \VGA_G[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[7]~reg0_q\);

-- Location: FF_X30_Y71_N37
\VGA_B[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	asdata => \ROM2|altsyncram_component|auto_generated|q_a\(0),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \VGA_G[6]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[0]~reg0_q\);

-- Location: FF_X30_Y72_N41
\VGA_B[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	asdata => \ROM2|altsyncram_component|auto_generated|q_a\(1),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \VGA_G[6]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[1]~reg0_q\);

-- Location: LABCELL_X30_Y71_N9
\VGA_B[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_B[2]~reg0feeder_combout\ = \ROM2|altsyncram_component|auto_generated|q_a\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM2|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \VGA_B[2]~reg0feeder_combout\);

-- Location: FF_X30_Y71_N10
\VGA_B[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \VGA_B[2]~reg0feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \VGA_G[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[2]~reg0_q\);

-- Location: FF_X30_Y71_N16
\VGA_B[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	asdata => \ROM2|altsyncram_component|auto_generated|q_a\(3),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \VGA_G[6]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[3]~reg0_q\);

-- Location: LABCELL_X29_Y71_N45
\VGA_B[4]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_B[4]~reg0feeder_combout\ = \ROM2|altsyncram_component|auto_generated|q_a\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM2|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \VGA_B[4]~reg0feeder_combout\);

-- Location: FF_X29_Y71_N46
\VGA_B[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \VGA_B[4]~reg0feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \VGA_G[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[4]~reg0_q\);

-- Location: LABCELL_X29_Y71_N36
\VGA_B[5]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_B[5]~reg0feeder_combout\ = \ROM2|altsyncram_component|auto_generated|q_a\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	combout => \VGA_B[5]~reg0feeder_combout\);

-- Location: FF_X29_Y71_N37
\VGA_B[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \VGA_B[5]~reg0feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \VGA_G[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[5]~reg0_q\);

-- Location: LABCELL_X30_Y71_N33
\VGA_B[6]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_B[6]~reg0feeder_combout\ = \ROM2|altsyncram_component|auto_generated|q_a\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \VGA_B[6]~reg0feeder_combout\);

-- Location: FF_X30_Y71_N34
\VGA_B[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \VGA_B[6]~reg0feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \VGA_G[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[6]~reg0_q\);

-- Location: LABCELL_X30_Y72_N30
\VGA_B[7]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_B[7]~reg0feeder_combout\ = \ROM2|altsyncram_component|auto_generated|q_a\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM2|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \VGA_B[7]~reg0feeder_combout\);

-- Location: FF_X30_Y72_N31
\VGA_B[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_25~q\,
	d => \VGA_B[7]~reg0feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \VGA_G[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[7]~reg0_q\);

-- Location: MLABCELL_X82_Y7_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


