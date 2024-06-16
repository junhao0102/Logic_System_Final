-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "05/22/2024 11:41:03"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LCD IS
    PORT (
	iCLK : IN std_logic;
	iRST_N : IN std_logic;
	LCD_DATA : OUT std_logic_vector(7 DOWNTO 0);
	LCD_RW : OUT std_logic;
	LCD_EN : OUT std_logic;
	LCD_RS : OUT std_logic;
	index : IN std_logic_vector(15 DOWNTO 0);
	value : IN std_logic_vector(15 DOWNTO 0);
	keded : IN std_logic;
	txt1 : IN std_logic_vector(7 DOWNTO 0);
	txt2 : IN std_logic_vector(7 DOWNTO 0);
	txt3 : IN std_logic_vector(7 DOWNTO 0);
	txt4 : IN std_logic_vector(7 DOWNTO 0);
	txt5 : IN std_logic_vector(7 DOWNTO 0);
	txt6 : IN std_logic_vector(7 DOWNTO 0);
	txt7 : IN std_logic_vector(7 DOWNTO 0)
	);
END LCD;

-- Design Ports Information
-- LCD_DATA[0]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[1]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[2]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[4]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[5]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[6]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[7]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_RW	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_EN	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_RS	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iRST_N	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iCLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- index[0]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- index[8]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[0]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[8]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt6[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt3[0]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt2[0]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt7[0]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt1[0]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt5[0]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt4[0]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keded	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- index[1]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- index[9]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[1]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[9]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt1[1]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt5[1]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt4[1]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt6[1]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt2[1]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt7[1]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt3[1]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt1[2]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt5[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt4[2]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt6[2]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt3[2]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt2[2]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt7[2]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- index[2]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- index[10]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[2]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[10]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt6[3]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt3[3]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt2[3]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt7[3]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt1[3]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt5[3]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt4[3]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- index[3]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[11]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[3]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- index[11]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- index[4]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- index[12]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[4]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[12]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt6[4]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt3[4]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt2[4]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt7[4]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt1[4]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt5[4]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt4[4]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- index[5]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- index[13]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt6[5]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt3[5]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt2[5]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt7[5]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt1[5]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt5[5]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt4[5]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[13]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- index[6]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- index[14]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[6]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[14]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt6[6]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt3[6]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt2[6]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt7[6]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt1[6]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt5[6]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt4[6]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt1[7]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt5[7]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt4[7]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt6[7]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt3[7]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt2[7]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txt7[7]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- index[7]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- index[15]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[7]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[15]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LCD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_iCLK : std_logic;
SIGNAL ww_iRST_N : std_logic;
SIGNAL ww_LCD_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LCD_RW : std_logic;
SIGNAL ww_LCD_EN : std_logic;
SIGNAL ww_LCD_RS : std_logic;
SIGNAL ww_index : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_value : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_keded : std_logic;
SIGNAL ww_txt1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_txt2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_txt3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_txt4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_txt5 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_txt6 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_txt7 : std_logic_vector(7 DOWNTO 0);
SIGNAL \iRST_N~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \iCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LCD_DATA[0]~output_o\ : std_logic;
SIGNAL \LCD_DATA[1]~output_o\ : std_logic;
SIGNAL \LCD_DATA[2]~output_o\ : std_logic;
SIGNAL \LCD_DATA[3]~output_o\ : std_logic;
SIGNAL \LCD_DATA[4]~output_o\ : std_logic;
SIGNAL \LCD_DATA[5]~output_o\ : std_logic;
SIGNAL \LCD_DATA[6]~output_o\ : std_logic;
SIGNAL \LCD_DATA[7]~output_o\ : std_logic;
SIGNAL \LCD_RW~output_o\ : std_logic;
SIGNAL \LCD_EN~output_o\ : std_logic;
SIGNAL \LCD_RS~output_o\ : std_logic;
SIGNAL \iCLK~input_o\ : std_logic;
SIGNAL \iCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \value[8]~input_o\ : std_logic;
SIGNAL \value[0]~input_o\ : std_logic;
SIGNAL \LUT_INDEX[0]~6_combout\ : std_logic;
SIGNAL \iRST_N~input_o\ : std_logic;
SIGNAL \LUT_INDEX[3]~13\ : std_logic;
SIGNAL \LUT_INDEX[4]~14_combout\ : std_logic;
SIGNAL \LUT_INDEX[4]~15\ : std_logic;
SIGNAL \LUT_INDEX[5]~16_combout\ : std_logic;
SIGNAL \mLCD_ST~20_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LUT_DATA~7_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \mLCD_Start~0_combout\ : std_logic;
SIGNAL \mLCD_Start~q\ : std_logic;
SIGNAL \u0|ST.00~0_combout\ : std_logic;
SIGNAL \iRST_N~inputclkctrl_outclk\ : std_logic;
SIGNAL \u0|ST.00~q\ : std_logic;
SIGNAL \u0|ST.01~0_combout\ : std_logic;
SIGNAL \u0|ST.01~q\ : std_logic;
SIGNAL \u0|Selector5~0_combout\ : std_logic;
SIGNAL \u0|Selector2~1_combout\ : std_logic;
SIGNAL \u0|Add0~0_combout\ : std_logic;
SIGNAL \u0|Selector8~0_combout\ : std_logic;
SIGNAL \u0|Add0~1\ : std_logic;
SIGNAL \u0|Add0~2_combout\ : std_logic;
SIGNAL \u0|Selector7~0_combout\ : std_logic;
SIGNAL \u0|Add0~3\ : std_logic;
SIGNAL \u0|Add0~4_combout\ : std_logic;
SIGNAL \u0|Selector6~0_combout\ : std_logic;
SIGNAL \u0|Add0~5\ : std_logic;
SIGNAL \u0|Add0~6_combout\ : std_logic;
SIGNAL \u0|Selector5~1_combout\ : std_logic;
SIGNAL \u0|Add0~7\ : std_logic;
SIGNAL \u0|Add0~8_combout\ : std_logic;
SIGNAL \u0|Selector4~0_combout\ : std_logic;
SIGNAL \u0|Selector4~1_combout\ : std_logic;
SIGNAL \u0|Selector2~0_combout\ : std_logic;
SIGNAL \u0|ST.10~q\ : std_logic;
SIGNAL \u0|ST~14_combout\ : std_logic;
SIGNAL \u0|ST.11~q\ : std_logic;
SIGNAL \u0|preStart~q\ : std_logic;
SIGNAL \u0|mStart~0_combout\ : std_logic;
SIGNAL \u0|mStart~q\ : std_logic;
SIGNAL \u0|oDone~0_combout\ : std_logic;
SIGNAL \u0|oDone~1_combout\ : std_logic;
SIGNAL \u0|oDone~q\ : std_logic;
SIGNAL \mLCD_ST~16_combout\ : std_logic;
SIGNAL \mDLY[0]~18_combout\ : std_logic;
SIGNAL \mDLY[6]~34\ : std_logic;
SIGNAL \mDLY[7]~35_combout\ : std_logic;
SIGNAL \mDLY[6]~28_combout\ : std_logic;
SIGNAL \mDLY[7]~36\ : std_logic;
SIGNAL \mDLY[8]~37_combout\ : std_logic;
SIGNAL \mDLY[8]~38\ : std_logic;
SIGNAL \mDLY[9]~39_combout\ : std_logic;
SIGNAL \mDLY[9]~40\ : std_logic;
SIGNAL \mDLY[10]~41_combout\ : std_logic;
SIGNAL \mDLY[10]~42\ : std_logic;
SIGNAL \mDLY[11]~43_combout\ : std_logic;
SIGNAL \mDLY[11]~44\ : std_logic;
SIGNAL \mDLY[12]~45_combout\ : std_logic;
SIGNAL \mDLY[12]~46\ : std_logic;
SIGNAL \mDLY[13]~47_combout\ : std_logic;
SIGNAL \mDLY[13]~48\ : std_logic;
SIGNAL \mDLY[14]~49_combout\ : std_logic;
SIGNAL \mDLY[14]~50\ : std_logic;
SIGNAL \mDLY[15]~51_combout\ : std_logic;
SIGNAL \mDLY[15]~52\ : std_logic;
SIGNAL \mDLY[16]~53_combout\ : std_logic;
SIGNAL \mDLY[16]~54\ : std_logic;
SIGNAL \mDLY[17]~55_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \mDLY[6]~26_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \mDLY[6]~27_combout\ : std_logic;
SIGNAL \mDLY[0]~19\ : std_logic;
SIGNAL \mDLY[1]~20_combout\ : std_logic;
SIGNAL \mDLY[1]~21\ : std_logic;
SIGNAL \mDLY[2]~22_combout\ : std_logic;
SIGNAL \mDLY[2]~23\ : std_logic;
SIGNAL \mDLY[3]~24_combout\ : std_logic;
SIGNAL \mDLY[3]~25\ : std_logic;
SIGNAL \mDLY[4]~29_combout\ : std_logic;
SIGNAL \mDLY[4]~30\ : std_logic;
SIGNAL \mDLY[5]~31_combout\ : std_logic;
SIGNAL \mDLY[5]~32\ : std_logic;
SIGNAL \mDLY[6]~33_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \mLCD_ST~17_combout\ : std_logic;
SIGNAL \mLCD_ST~21_combout\ : std_logic;
SIGNAL \mLCD_ST.000001~q\ : std_logic;
SIGNAL \Selector3~3_combout\ : std_logic;
SIGNAL \mLCD_ST~19_combout\ : std_logic;
SIGNAL \mLCD_ST.000010~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \mLCD_ST.000011~q\ : std_logic;
SIGNAL \LUT_INDEX[0]~18_combout\ : std_logic;
SIGNAL \LUT_INDEX[0]~7\ : std_logic;
SIGNAL \LUT_INDEX[1]~8_combout\ : std_logic;
SIGNAL \LUT_INDEX[1]~9\ : std_logic;
SIGNAL \LUT_INDEX[2]~10_combout\ : std_logic;
SIGNAL \LUT_INDEX[2]~11\ : std_logic;
SIGNAL \LUT_INDEX[3]~12_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux16~6_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \index[8]~input_o\ : std_logic;
SIGNAL \index[0]~input_o\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux16~5_combout\ : std_logic;
SIGNAL \LUT_DATA[0]~0_combout\ : std_logic;
SIGNAL \txt5[0]~input_o\ : std_logic;
SIGNAL \txt4[0]~input_o\ : std_logic;
SIGNAL \Mux16~12_combout\ : std_logic;
SIGNAL \txt1[0]~input_o\ : std_logic;
SIGNAL \Mux16~9_combout\ : std_logic;
SIGNAL \Mux16~10_combout\ : std_logic;
SIGNAL \Mux16~11_combout\ : std_logic;
SIGNAL \txt6[0]~input_o\ : std_logic;
SIGNAL \txt7[0]~input_o\ : std_logic;
SIGNAL \txt3[0]~input_o\ : std_logic;
SIGNAL \txt2[0]~input_o\ : std_logic;
SIGNAL \Mux16~7_combout\ : std_logic;
SIGNAL \Mux16~8_combout\ : std_logic;
SIGNAL \Mux16~13_combout\ : std_logic;
SIGNAL \Mux16~14_combout\ : std_logic;
SIGNAL \Mux16~15_combout\ : std_logic;
SIGNAL \Mux16~16_combout\ : std_logic;
SIGNAL \keded~input_o\ : std_logic;
SIGNAL \mLCD_DATA~0_combout\ : std_logic;
SIGNAL \mLCD_ST~18_combout\ : std_logic;
SIGNAL \mLCD_ST.000000~q\ : std_logic;
SIGNAL \mLCD_DATA[3]~1_combout\ : std_logic;
SIGNAL \value[1]~input_o\ : std_logic;
SIGNAL \value[9]~input_o\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \index[9]~input_o\ : std_logic;
SIGNAL \index[1]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux16~17_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \LUT_DATA[1]~1_combout\ : std_logic;
SIGNAL \Mux6~10_combout\ : std_logic;
SIGNAL \Mux6~11_combout\ : std_logic;
SIGNAL \txt1[1]~input_o\ : std_logic;
SIGNAL \txt5[1]~input_o\ : std_logic;
SIGNAL \txt4[1]~input_o\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \txt3[1]~input_o\ : std_logic;
SIGNAL \txt7[1]~input_o\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \txt6[1]~input_o\ : std_logic;
SIGNAL \txt2[1]~input_o\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux6~8_combout\ : std_logic;
SIGNAL \Mux6~9_combout\ : std_logic;
SIGNAL \Mux6~12_combout\ : std_logic;
SIGNAL \mLCD_DATA~2_combout\ : std_logic;
SIGNAL \Mux16~20_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \txt7[2]~input_o\ : std_logic;
SIGNAL \txt6[2]~input_o\ : std_logic;
SIGNAL \txt2[2]~input_o\ : std_logic;
SIGNAL \txt3[2]~input_o\ : std_logic;
SIGNAL \Mux16~18_combout\ : std_logic;
SIGNAL \Mux16~19_combout\ : std_logic;
SIGNAL \txt1[2]~input_o\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \txt4[2]~input_o\ : std_logic;
SIGNAL \txt5[2]~input_o\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \LUT_DATA[2]~2_combout\ : std_logic;
SIGNAL \Mux14~7_combout\ : std_logic;
SIGNAL \index[2]~input_o\ : std_logic;
SIGNAL \index[10]~input_o\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \value[2]~input_o\ : std_logic;
SIGNAL \value[10]~input_o\ : std_logic;
SIGNAL \Mux14~8_combout\ : std_logic;
SIGNAL \Mux14~9_combout\ : std_logic;
SIGNAL \Mux14~10_combout\ : std_logic;
SIGNAL \mLCD_DATA~3_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \txt5[3]~input_o\ : std_logic;
SIGNAL \txt4[3]~input_o\ : std_logic;
SIGNAL \Mux16~24_combout\ : std_logic;
SIGNAL \txt7[3]~input_o\ : std_logic;
SIGNAL \txt6[3]~input_o\ : std_logic;
SIGNAL \txt3[3]~input_o\ : std_logic;
SIGNAL \txt2[3]~input_o\ : std_logic;
SIGNAL \Mux16~21_combout\ : std_logic;
SIGNAL \Mux16~22_combout\ : std_logic;
SIGNAL \txt1[3]~input_o\ : std_logic;
SIGNAL \Mux16~23_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \LUT_DATA[3]~3_combout\ : std_logic;
SIGNAL \value[11]~input_o\ : std_logic;
SIGNAL \value[3]~input_o\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux13~8_combout\ : std_logic;
SIGNAL \index[3]~input_o\ : std_logic;
SIGNAL \index[11]~input_o\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Mux13~6_combout\ : std_logic;
SIGNAL \Mux13~7_combout\ : std_logic;
SIGNAL \Mux13~9_combout\ : std_logic;
SIGNAL \mLCD_DATA~4_combout\ : std_logic;
SIGNAL \value[12]~input_o\ : std_logic;
SIGNAL \value[4]~input_o\ : std_logic;
SIGNAL \Mux6~17_combout\ : std_logic;
SIGNAL \index[12]~input_o\ : std_logic;
SIGNAL \index[4]~input_o\ : std_logic;
SIGNAL \Mux6~14_combout\ : std_logic;
SIGNAL \Mux6~15_combout\ : std_logic;
SIGNAL \Mux6~13_combout\ : std_logic;
SIGNAL \Mux6~16_combout\ : std_logic;
SIGNAL \LUT_DATA[4]~4_combout\ : std_logic;
SIGNAL \txt5[4]~input_o\ : std_logic;
SIGNAL \txt4[4]~input_o\ : std_logic;
SIGNAL \Mux16~28_combout\ : std_logic;
SIGNAL \txt1[4]~input_o\ : std_logic;
SIGNAL \Mux16~27_combout\ : std_logic;
SIGNAL \Mux6~18_combout\ : std_logic;
SIGNAL \txt6[4]~input_o\ : std_logic;
SIGNAL \txt7[4]~input_o\ : std_logic;
SIGNAL \txt3[4]~input_o\ : std_logic;
SIGNAL \txt2[4]~input_o\ : std_logic;
SIGNAL \Mux16~25_combout\ : std_logic;
SIGNAL \Mux16~26_combout\ : std_logic;
SIGNAL \Mux6~19_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \mLCD_DATA~5_combout\ : std_logic;
SIGNAL \value[13]~input_o\ : std_logic;
SIGNAL \value[5]~input_o\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \Mux2~9_combout\ : std_logic;
SIGNAL \index[13]~input_o\ : std_logic;
SIGNAL \index[5]~input_o\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \txt6[5]~input_o\ : std_logic;
SIGNAL \txt7[5]~input_o\ : std_logic;
SIGNAL \txt3[5]~input_o\ : std_logic;
SIGNAL \txt2[5]~input_o\ : std_logic;
SIGNAL \Mux16~29_combout\ : std_logic;
SIGNAL \Mux16~30_combout\ : std_logic;
SIGNAL \txt5[5]~input_o\ : std_logic;
SIGNAL \txt4[5]~input_o\ : std_logic;
SIGNAL \Mux16~31_combout\ : std_logic;
SIGNAL \txt1[5]~input_o\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \LUT_DATA~8_combout\ : std_logic;
SIGNAL \LUT_DATA~9_combout\ : std_logic;
SIGNAL \LUT_DATA~10_combout\ : std_logic;
SIGNAL \mLCD_DATA~6_combout\ : std_logic;
SIGNAL \value[14]~input_o\ : std_logic;
SIGNAL \value[6]~input_o\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~12_combout\ : std_logic;
SIGNAL \index[6]~input_o\ : std_logic;
SIGNAL \index[14]~input_o\ : std_logic;
SIGNAL \Mux16~33_combout\ : std_logic;
SIGNAL \Mux16~32_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \LUT_DATA[6]~5_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \txt5[6]~input_o\ : std_logic;
SIGNAL \txt4[6]~input_o\ : std_logic;
SIGNAL \Mux10~9_combout\ : std_logic;
SIGNAL \txt1[6]~input_o\ : std_logic;
SIGNAL \Mux10~8_combout\ : std_logic;
SIGNAL \Mux10~10_combout\ : std_logic;
SIGNAL \txt6[6]~input_o\ : std_logic;
SIGNAL \txt7[6]~input_o\ : std_logic;
SIGNAL \txt3[6]~input_o\ : std_logic;
SIGNAL \txt2[6]~input_o\ : std_logic;
SIGNAL \Mux16~35_combout\ : std_logic;
SIGNAL \Mux16~36_combout\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \Mux10~11_combout\ : std_logic;
SIGNAL \mLCD_DATA~7_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \txt1[7]~input_o\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \txt5[7]~input_o\ : std_logic;
SIGNAL \txt4[7]~input_o\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \txt6[7]~input_o\ : std_logic;
SIGNAL \txt7[7]~input_o\ : std_logic;
SIGNAL \txt2[7]~input_o\ : std_logic;
SIGNAL \txt3[7]~input_o\ : std_logic;
SIGNAL \Mux16~37_combout\ : std_logic;
SIGNAL \Mux16~38_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \LUT_DATA[7]~6_combout\ : std_logic;
SIGNAL \index[15]~input_o\ : std_logic;
SIGNAL \index[7]~input_o\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \Mux16~34_combout\ : std_logic;
SIGNAL \value[7]~input_o\ : std_logic;
SIGNAL \value[15]~input_o\ : std_logic;
SIGNAL \Mux9~7_combout\ : std_logic;
SIGNAL \Mux9~8_combout\ : std_logic;
SIGNAL \Mux9~9_combout\ : std_logic;
SIGNAL \mLCD_DATA~8_combout\ : std_logic;
SIGNAL \u0|Selector3~0_combout\ : std_logic;
SIGNAL \u0|LCD_EN~q\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \mLCD_RS~0_combout\ : std_logic;
SIGNAL \mLCD_RS~q\ : std_logic;
SIGNAL LUT_DATA : std_logic_vector(8 DOWNTO 0);
SIGNAL \u0|Cont\ : std_logic_vector(4 DOWNTO 0);
SIGNAL LUT_INDEX : std_logic_vector(5 DOWNTO 0);
SIGNAL mDLY : std_logic_vector(17 DOWNTO 0);
SIGNAL mLCD_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_keded~input_o\ : std_logic;
SIGNAL \ALT_INV_iRST_N~input_o\ : std_logic;

BEGIN

ww_iCLK <= iCLK;
ww_iRST_N <= iRST_N;
LCD_DATA <= ww_LCD_DATA;
LCD_RW <= ww_LCD_RW;
LCD_EN <= ww_LCD_EN;
LCD_RS <= ww_LCD_RS;
ww_index <= index;
ww_value <= value;
ww_keded <= keded;
ww_txt1 <= txt1;
ww_txt2 <= txt2;
ww_txt3 <= txt3;
ww_txt4 <= txt4;
ww_txt5 <= txt5;
ww_txt6 <= txt6;
ww_txt7 <= txt7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\iRST_N~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \iRST_N~input_o\);

\iCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \iCLK~input_o\);
\ALT_INV_keded~input_o\ <= NOT \keded~input_o\;
\ALT_INV_iRST_N~input_o\ <= NOT \iRST_N~input_o\;

-- Location: IOOBUF_X0_Y7_N9
\LCD_DATA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mLCD_DATA(0),
	devoe => ww_devoe,
	o => \LCD_DATA[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\LCD_DATA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mLCD_DATA(1),
	devoe => ww_devoe,
	o => \LCD_DATA[1]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\LCD_DATA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mLCD_DATA(2),
	devoe => ww_devoe,
	o => \LCD_DATA[2]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\LCD_DATA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mLCD_DATA(3),
	devoe => ww_devoe,
	o => \LCD_DATA[3]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\LCD_DATA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mLCD_DATA(4),
	devoe => ww_devoe,
	o => \LCD_DATA[4]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\LCD_DATA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mLCD_DATA(5),
	devoe => ww_devoe,
	o => \LCD_DATA[5]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\LCD_DATA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mLCD_DATA(6),
	devoe => ww_devoe,
	o => \LCD_DATA[6]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\LCD_DATA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mLCD_DATA(7),
	devoe => ww_devoe,
	o => \LCD_DATA[7]~output_o\);

-- Location: IOOBUF_X115_Y59_N23
\LCD_RW~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LCD_RW~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\LCD_EN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|LCD_EN~q\,
	devoe => ww_devoe,
	o => \LCD_EN~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\LCD_RS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mLCD_RS~q\,
	devoe => ww_devoe,
	o => \LCD_RS~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\iCLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iCLK,
	o => \iCLK~input_o\);

-- Location: CLKCTRL_G2
\iCLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \iCLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \iCLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X9_Y0_N22
\value[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(8),
	o => \value[8]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\value[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(0),
	o => \value[0]~input_o\);

-- Location: LCCOMB_X3_Y22_N10
\LUT_INDEX[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_INDEX[0]~6_combout\ = LUT_INDEX(0) $ (VCC)
-- \LUT_INDEX[0]~7\ = CARRY(LUT_INDEX(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datad => VCC,
	combout => \LUT_INDEX[0]~6_combout\,
	cout => \LUT_INDEX[0]~7\);

-- Location: IOIBUF_X0_Y36_N15
\iRST_N~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iRST_N,
	o => \iRST_N~input_o\);

-- Location: LCCOMB_X3_Y22_N16
\LUT_INDEX[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_INDEX[3]~12_combout\ = (LUT_INDEX(3) & (!\LUT_INDEX[2]~11\)) # (!LUT_INDEX(3) & ((\LUT_INDEX[2]~11\) # (GND)))
-- \LUT_INDEX[3]~13\ = CARRY((!\LUT_INDEX[2]~11\) # (!LUT_INDEX(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_INDEX(3),
	datad => VCC,
	cin => \LUT_INDEX[2]~11\,
	combout => \LUT_INDEX[3]~12_combout\,
	cout => \LUT_INDEX[3]~13\);

-- Location: LCCOMB_X3_Y22_N18
\LUT_INDEX[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_INDEX[4]~14_combout\ = (LUT_INDEX(4) & (\LUT_INDEX[3]~13\ $ (GND))) # (!LUT_INDEX(4) & (!\LUT_INDEX[3]~13\ & VCC))
-- \LUT_INDEX[4]~15\ = CARRY((LUT_INDEX(4) & !\LUT_INDEX[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_INDEX(4),
	datad => VCC,
	cin => \LUT_INDEX[3]~13\,
	combout => \LUT_INDEX[4]~14_combout\,
	cout => \LUT_INDEX[4]~15\);

-- Location: FF_X3_Y22_N19
\LUT_INDEX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \LUT_INDEX[4]~14_combout\,
	sclr => \ALT_INV_iRST_N~input_o\,
	ena => \LUT_INDEX[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_INDEX(4));

-- Location: LCCOMB_X3_Y22_N20
\LUT_INDEX[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_INDEX[5]~16_combout\ = \LUT_INDEX[4]~15\ $ (LUT_INDEX(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => LUT_INDEX(5),
	cin => \LUT_INDEX[4]~15\,
	combout => \LUT_INDEX[5]~16_combout\);

-- Location: FF_X3_Y22_N21
\LUT_INDEX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \LUT_INDEX[5]~16_combout\,
	sclr => \ALT_INV_iRST_N~input_o\,
	ena => \LUT_INDEX[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_INDEX(5));

-- Location: LCCOMB_X5_Y23_N20
\mLCD_ST~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_ST~20_combout\ = (!\mLCD_ST.000001~q\ & (!\mLCD_ST.000011~q\ & !\mLCD_ST.000010~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mLCD_ST.000001~q\,
	datac => \mLCD_ST.000011~q\,
	datad => \mLCD_ST.000010~q\,
	combout => \mLCD_ST~20_combout\);

-- Location: LCCOMB_X3_Y22_N24
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (LUT_INDEX(2) & LUT_INDEX(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => LUT_INDEX(2),
	datad => LUT_INDEX(0),
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X3_Y22_N2
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!LUT_INDEX(3) & (!LUT_INDEX(4) & ((!\Mux16~0_combout\) # (!LUT_INDEX(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(1),
	datab => LUT_INDEX(3),
	datac => LUT_INDEX(4),
	datad => \Mux16~0_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X3_Y22_N30
\LUT_DATA~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~7_combout\ = (\LessThan0~0_combout\) # (!LUT_INDEX(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => LUT_INDEX(5),
	datad => \LessThan0~0_combout\,
	combout => \LUT_DATA~7_combout\);

-- Location: LCCOMB_X5_Y20_N22
\Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (\u0|oDone~q\ & \mLCD_ST.000001~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|oDone~q\,
	datad => \mLCD_ST.000001~q\,
	combout => \Selector3~2_combout\);

-- Location: LCCOMB_X5_Y22_N28
\mLCD_Start~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_Start~0_combout\ = (\LUT_DATA~7_combout\ & ((\mLCD_ST~20_combout\) # ((\mLCD_Start~q\ & !\Selector3~2_combout\)))) # (!\LUT_DATA~7_combout\ & (((\mLCD_Start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mLCD_ST~20_combout\,
	datab => \LUT_DATA~7_combout\,
	datac => \mLCD_Start~q\,
	datad => \Selector3~2_combout\,
	combout => \mLCD_Start~0_combout\);

-- Location: FF_X5_Y22_N29
mLCD_Start : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_Start~0_combout\,
	sclr => \ALT_INV_iRST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mLCD_Start~q\);

-- Location: LCCOMB_X2_Y20_N24
\u0|ST.00~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|ST.00~0_combout\ = !\u0|ST.11~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|ST.11~q\,
	combout => \u0|ST.00~0_combout\);

-- Location: CLKCTRL_G4
\iRST_N~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \iRST_N~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \iRST_N~inputclkctrl_outclk\);

-- Location: FF_X2_Y20_N25
\u0|ST.00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \u0|ST.00~0_combout\,
	clrn => \iRST_N~inputclkctrl_outclk\,
	ena => \u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|ST.00~q\);

-- Location: LCCOMB_X1_Y20_N14
\u0|ST.01~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|ST.01~0_combout\ = !\u0|ST.00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|ST.00~q\,
	combout => \u0|ST.01~0_combout\);

-- Location: FF_X1_Y20_N15
\u0|ST.01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \u0|ST.01~0_combout\,
	clrn => \iRST_N~inputclkctrl_outclk\,
	ena => \u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|ST.01~q\);

-- Location: LCCOMB_X1_Y20_N10
\u0|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector5~0_combout\ = (\u0|ST.01~q\) # (((\u0|Cont\(4) & \u0|ST.10~q\)) # (!\u0|ST.00~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Cont\(4),
	datab => \u0|ST.10~q\,
	datac => \u0|ST.01~q\,
	datad => \u0|ST.00~q\,
	combout => \u0|Selector5~0_combout\);

-- Location: LCCOMB_X1_Y20_N4
\u0|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector2~1_combout\ = (\u0|ST.10~q\ & !\u0|Cont\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|ST.10~q\,
	datad => \u0|Cont\(4),
	combout => \u0|Selector2~1_combout\);

-- Location: LCCOMB_X1_Y20_N18
\u0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~0_combout\ = \u0|Cont\(0) $ (VCC)
-- \u0|Add0~1\ = CARRY(\u0|Cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Cont\(0),
	datad => VCC,
	combout => \u0|Add0~0_combout\,
	cout => \u0|Add0~1\);

-- Location: LCCOMB_X1_Y20_N12
\u0|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector8~0_combout\ = (\u0|Selector5~0_combout\ & ((\u0|Cont\(0)) # ((\u0|Selector2~1_combout\ & \u0|Add0~0_combout\)))) # (!\u0|Selector5~0_combout\ & (\u0|Selector2~1_combout\ & ((\u0|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Selector5~0_combout\,
	datab => \u0|Selector2~1_combout\,
	datac => \u0|Cont\(0),
	datad => \u0|Add0~0_combout\,
	combout => \u0|Selector8~0_combout\);

-- Location: FF_X1_Y20_N13
\u0|Cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \u0|Selector8~0_combout\,
	clrn => \iRST_N~inputclkctrl_outclk\,
	ena => \u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|Cont\(0));

-- Location: LCCOMB_X1_Y20_N20
\u0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~2_combout\ = (\u0|Cont\(1) & (!\u0|Add0~1\)) # (!\u0|Cont\(1) & ((\u0|Add0~1\) # (GND)))
-- \u0|Add0~3\ = CARRY((!\u0|Add0~1\) # (!\u0|Cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|Cont\(1),
	datad => VCC,
	cin => \u0|Add0~1\,
	combout => \u0|Add0~2_combout\,
	cout => \u0|Add0~3\);

-- Location: LCCOMB_X1_Y20_N2
\u0|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector7~0_combout\ = (\u0|Selector5~0_combout\ & ((\u0|Cont\(1)) # ((\u0|Selector2~1_combout\ & \u0|Add0~2_combout\)))) # (!\u0|Selector5~0_combout\ & (\u0|Selector2~1_combout\ & ((\u0|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Selector5~0_combout\,
	datab => \u0|Selector2~1_combout\,
	datac => \u0|Cont\(1),
	datad => \u0|Add0~2_combout\,
	combout => \u0|Selector7~0_combout\);

-- Location: FF_X1_Y20_N3
\u0|Cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \u0|Selector7~0_combout\,
	clrn => \iRST_N~inputclkctrl_outclk\,
	ena => \u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|Cont\(1));

-- Location: LCCOMB_X1_Y20_N22
\u0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~4_combout\ = (\u0|Cont\(2) & (\u0|Add0~3\ $ (GND))) # (!\u0|Cont\(2) & (!\u0|Add0~3\ & VCC))
-- \u0|Add0~5\ = CARRY((\u0|Cont\(2) & !\u0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|Cont\(2),
	datad => VCC,
	cin => \u0|Add0~3\,
	combout => \u0|Add0~4_combout\,
	cout => \u0|Add0~5\);

-- Location: LCCOMB_X1_Y20_N0
\u0|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector6~0_combout\ = (\u0|Add0~4_combout\ & ((\u0|Selector2~1_combout\) # ((\u0|Cont\(2) & \u0|Selector5~0_combout\)))) # (!\u0|Add0~4_combout\ & (((\u0|Cont\(2) & \u0|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Add0~4_combout\,
	datab => \u0|Selector2~1_combout\,
	datac => \u0|Cont\(2),
	datad => \u0|Selector5~0_combout\,
	combout => \u0|Selector6~0_combout\);

-- Location: FF_X1_Y20_N1
\u0|Cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \u0|Selector6~0_combout\,
	clrn => \iRST_N~inputclkctrl_outclk\,
	ena => \u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|Cont\(2));

-- Location: LCCOMB_X1_Y20_N24
\u0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~6_combout\ = (\u0|Cont\(3) & (!\u0|Add0~5\)) # (!\u0|Cont\(3) & ((\u0|Add0~5\) # (GND)))
-- \u0|Add0~7\ = CARRY((!\u0|Add0~5\) # (!\u0|Cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Cont\(3),
	datad => VCC,
	cin => \u0|Add0~5\,
	combout => \u0|Add0~6_combout\,
	cout => \u0|Add0~7\);

-- Location: LCCOMB_X1_Y20_N30
\u0|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector5~1_combout\ = (\u0|Selector5~0_combout\ & ((\u0|Cont\(3)) # ((\u0|Selector2~1_combout\ & \u0|Add0~6_combout\)))) # (!\u0|Selector5~0_combout\ & (\u0|Selector2~1_combout\ & ((\u0|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Selector5~0_combout\,
	datab => \u0|Selector2~1_combout\,
	datac => \u0|Cont\(3),
	datad => \u0|Add0~6_combout\,
	combout => \u0|Selector5~1_combout\);

-- Location: FF_X1_Y20_N31
\u0|Cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \u0|Selector5~1_combout\,
	clrn => \iRST_N~inputclkctrl_outclk\,
	ena => \u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|Cont\(3));

-- Location: LCCOMB_X1_Y20_N26
\u0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~8_combout\ = \u0|Add0~7\ $ (!\u0|Cont\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u0|Cont\(4),
	cin => \u0|Add0~7\,
	combout => \u0|Add0~8_combout\);

-- Location: LCCOMB_X1_Y20_N28
\u0|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector4~0_combout\ = (\u0|Cont\(4) & ((\u0|ST.10~q\) # ((\u0|ST.01~q\) # (!\u0|ST.00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Cont\(4),
	datab => \u0|ST.10~q\,
	datac => \u0|ST.01~q\,
	datad => \u0|ST.00~q\,
	combout => \u0|Selector4~0_combout\);

-- Location: LCCOMB_X1_Y20_N6
\u0|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector4~1_combout\ = (\u0|Selector4~0_combout\) # ((\u0|ST.10~q\ & \u0|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|ST.10~q\,
	datac => \u0|Add0~8_combout\,
	datad => \u0|Selector4~0_combout\,
	combout => \u0|Selector4~1_combout\);

-- Location: FF_X1_Y20_N7
\u0|Cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \u0|Selector4~1_combout\,
	clrn => \iRST_N~inputclkctrl_outclk\,
	ena => \u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|Cont\(4));

-- Location: LCCOMB_X1_Y20_N8
\u0|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector2~0_combout\ = (\u0|ST.01~q\) # ((\u0|ST.10~q\ & !\u0|Cont\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|ST.01~q\,
	datac => \u0|ST.10~q\,
	datad => \u0|Cont\(4),
	combout => \u0|Selector2~0_combout\);

-- Location: FF_X1_Y20_N9
\u0|ST.10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \u0|Selector2~0_combout\,
	clrn => \iRST_N~inputclkctrl_outclk\,
	ena => \u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|ST.10~q\);

-- Location: LCCOMB_X2_Y20_N22
\u0|ST~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|ST~14_combout\ = (\u0|ST.10~q\ & \u0|Cont\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ST.10~q\,
	datac => \u0|Cont\(4),
	combout => \u0|ST~14_combout\);

-- Location: FF_X2_Y20_N23
\u0|ST.11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \u0|ST~14_combout\,
	clrn => \iRST_N~inputclkctrl_outclk\,
	ena => \u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|ST.11~q\);

-- Location: FF_X5_Y20_N29
\u0|preStart\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \mLCD_Start~q\,
	clrn => \iRST_N~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|preStart~q\);

-- Location: LCCOMB_X5_Y20_N24
\u0|mStart~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|mStart~0_combout\ = (\u0|mStart~q\ & (((!\u0|ST.11~q\)))) # (!\u0|mStart~q\ & (\mLCD_Start~q\ & ((!\u0|preStart~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mLCD_Start~q\,
	datab => \u0|ST.11~q\,
	datac => \u0|mStart~q\,
	datad => \u0|preStart~q\,
	combout => \u0|mStart~0_combout\);

-- Location: FF_X5_Y20_N25
\u0|mStart\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \u0|mStart~0_combout\,
	clrn => \iRST_N~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|mStart~q\);

-- Location: LCCOMB_X5_Y20_N28
\u0|oDone~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|oDone~0_combout\ = (\u0|oDone~q\ & ((\u0|preStart~q\) # (!\mLCD_Start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|oDone~q\,
	datab => \mLCD_Start~q\,
	datac => \u0|preStart~q\,
	combout => \u0|oDone~0_combout\);

-- Location: LCCOMB_X5_Y20_N26
\u0|oDone~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|oDone~1_combout\ = (\u0|oDone~0_combout\) # ((\u0|mStart~q\ & \u0|ST.11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|mStart~q\,
	datac => \u0|ST.11~q\,
	datad => \u0|oDone~0_combout\,
	combout => \u0|oDone~1_combout\);

-- Location: FF_X5_Y20_N27
\u0|oDone\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \u0|oDone~1_combout\,
	clrn => \iRST_N~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|oDone~q\);

-- Location: LCCOMB_X5_Y22_N22
\mLCD_ST~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_ST~16_combout\ = (LUT_INDEX(5) & (((\mLCD_ST.000001~q\ & !\u0|oDone~q\)) # (!\LessThan0~0_combout\))) # (!LUT_INDEX(5) & (\mLCD_ST.000001~q\ & (!\u0|oDone~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(5),
	datab => \mLCD_ST.000001~q\,
	datac => \u0|oDone~q\,
	datad => \LessThan0~0_combout\,
	combout => \mLCD_ST~16_combout\);

-- Location: LCCOMB_X4_Y22_N14
\mDLY[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[0]~18_combout\ = mDLY(0) $ (VCC)
-- \mDLY[0]~19\ = CARRY(mDLY(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mDLY(0),
	datad => VCC,
	combout => \mDLY[0]~18_combout\,
	cout => \mDLY[0]~19\);

-- Location: LCCOMB_X4_Y22_N26
\mDLY[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[6]~33_combout\ = (mDLY(6) & (\mDLY[5]~32\ $ (GND))) # (!mDLY(6) & (!\mDLY[5]~32\ & VCC))
-- \mDLY[6]~34\ = CARRY((mDLY(6) & !\mDLY[5]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mDLY(6),
	datad => VCC,
	cin => \mDLY[5]~32\,
	combout => \mDLY[6]~33_combout\,
	cout => \mDLY[6]~34\);

-- Location: LCCOMB_X4_Y22_N28
\mDLY[7]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[7]~35_combout\ = (mDLY(7) & (!\mDLY[6]~34\)) # (!mDLY(7) & ((\mDLY[6]~34\) # (GND)))
-- \mDLY[7]~36\ = CARRY((!\mDLY[6]~34\) # (!mDLY(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mDLY(7),
	datad => VCC,
	cin => \mDLY[6]~34\,
	combout => \mDLY[7]~35_combout\,
	cout => \mDLY[7]~36\);

-- Location: LCCOMB_X4_Y22_N4
\mDLY[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[6]~28_combout\ = ((\mLCD_ST.000010~q\ & ((\LessThan0~0_combout\) # (!LUT_INDEX(5))))) # (!\iRST_N~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iRST_N~input_o\,
	datab => \mLCD_ST.000010~q\,
	datac => LUT_INDEX(5),
	datad => \LessThan0~0_combout\,
	combout => \mDLY[6]~28_combout\);

-- Location: FF_X4_Y22_N29
\mDLY[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[7]~35_combout\,
	sclr => \mDLY[6]~27_combout\,
	ena => \mDLY[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(7));

-- Location: LCCOMB_X4_Y22_N30
\mDLY[8]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[8]~37_combout\ = (mDLY(8) & (\mDLY[7]~36\ $ (GND))) # (!mDLY(8) & (!\mDLY[7]~36\ & VCC))
-- \mDLY[8]~38\ = CARRY((mDLY(8) & !\mDLY[7]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mDLY(8),
	datad => VCC,
	cin => \mDLY[7]~36\,
	combout => \mDLY[8]~37_combout\,
	cout => \mDLY[8]~38\);

-- Location: FF_X4_Y22_N31
\mDLY[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[8]~37_combout\,
	sclr => \mDLY[6]~27_combout\,
	ena => \mDLY[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(8));

-- Location: LCCOMB_X4_Y21_N0
\mDLY[9]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[9]~39_combout\ = (mDLY(9) & (!\mDLY[8]~38\)) # (!mDLY(9) & ((\mDLY[8]~38\) # (GND)))
-- \mDLY[9]~40\ = CARRY((!\mDLY[8]~38\) # (!mDLY(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mDLY(9),
	datad => VCC,
	cin => \mDLY[8]~38\,
	combout => \mDLY[9]~39_combout\,
	cout => \mDLY[9]~40\);

-- Location: FF_X4_Y21_N1
\mDLY[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[9]~39_combout\,
	sclr => \mDLY[6]~27_combout\,
	ena => \mDLY[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(9));

-- Location: LCCOMB_X4_Y21_N2
\mDLY[10]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[10]~41_combout\ = (mDLY(10) & (\mDLY[9]~40\ $ (GND))) # (!mDLY(10) & (!\mDLY[9]~40\ & VCC))
-- \mDLY[10]~42\ = CARRY((mDLY(10) & !\mDLY[9]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mDLY(10),
	datad => VCC,
	cin => \mDLY[9]~40\,
	combout => \mDLY[10]~41_combout\,
	cout => \mDLY[10]~42\);

-- Location: FF_X4_Y21_N3
\mDLY[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[10]~41_combout\,
	sclr => \mDLY[6]~27_combout\,
	ena => \mDLY[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(10));

-- Location: LCCOMB_X4_Y21_N4
\mDLY[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[11]~43_combout\ = (mDLY(11) & (!\mDLY[10]~42\)) # (!mDLY(11) & ((\mDLY[10]~42\) # (GND)))
-- \mDLY[11]~44\ = CARRY((!\mDLY[10]~42\) # (!mDLY(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mDLY(11),
	datad => VCC,
	cin => \mDLY[10]~42\,
	combout => \mDLY[11]~43_combout\,
	cout => \mDLY[11]~44\);

-- Location: FF_X4_Y21_N5
\mDLY[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[11]~43_combout\,
	sclr => \mDLY[6]~27_combout\,
	ena => \mDLY[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(11));

-- Location: LCCOMB_X4_Y21_N6
\mDLY[12]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[12]~45_combout\ = (mDLY(12) & (\mDLY[11]~44\ $ (GND))) # (!mDLY(12) & (!\mDLY[11]~44\ & VCC))
-- \mDLY[12]~46\ = CARRY((mDLY(12) & !\mDLY[11]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mDLY(12),
	datad => VCC,
	cin => \mDLY[11]~44\,
	combout => \mDLY[12]~45_combout\,
	cout => \mDLY[12]~46\);

-- Location: FF_X4_Y21_N7
\mDLY[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[12]~45_combout\,
	sclr => \mDLY[6]~27_combout\,
	ena => \mDLY[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(12));

-- Location: LCCOMB_X4_Y21_N8
\mDLY[13]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[13]~47_combout\ = (mDLY(13) & (!\mDLY[12]~46\)) # (!mDLY(13) & ((\mDLY[12]~46\) # (GND)))
-- \mDLY[13]~48\ = CARRY((!\mDLY[12]~46\) # (!mDLY(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mDLY(13),
	datad => VCC,
	cin => \mDLY[12]~46\,
	combout => \mDLY[13]~47_combout\,
	cout => \mDLY[13]~48\);

-- Location: FF_X4_Y21_N9
\mDLY[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[13]~47_combout\,
	sclr => \mDLY[6]~27_combout\,
	ena => \mDLY[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(13));

-- Location: LCCOMB_X4_Y21_N10
\mDLY[14]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[14]~49_combout\ = (mDLY(14) & (\mDLY[13]~48\ $ (GND))) # (!mDLY(14) & (!\mDLY[13]~48\ & VCC))
-- \mDLY[14]~50\ = CARRY((mDLY(14) & !\mDLY[13]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mDLY(14),
	datad => VCC,
	cin => \mDLY[13]~48\,
	combout => \mDLY[14]~49_combout\,
	cout => \mDLY[14]~50\);

-- Location: FF_X4_Y21_N11
\mDLY[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[14]~49_combout\,
	sclr => \mDLY[6]~27_combout\,
	ena => \mDLY[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(14));

-- Location: LCCOMB_X4_Y21_N12
\mDLY[15]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[15]~51_combout\ = (mDLY(15) & (!\mDLY[14]~50\)) # (!mDLY(15) & ((\mDLY[14]~50\) # (GND)))
-- \mDLY[15]~52\ = CARRY((!\mDLY[14]~50\) # (!mDLY(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mDLY(15),
	datad => VCC,
	cin => \mDLY[14]~50\,
	combout => \mDLY[15]~51_combout\,
	cout => \mDLY[15]~52\);

-- Location: FF_X4_Y21_N13
\mDLY[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[15]~51_combout\,
	sclr => \mDLY[6]~27_combout\,
	ena => \mDLY[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(15));

-- Location: LCCOMB_X4_Y21_N14
\mDLY[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[16]~53_combout\ = (mDLY(16) & (\mDLY[15]~52\ $ (GND))) # (!mDLY(16) & (!\mDLY[15]~52\ & VCC))
-- \mDLY[16]~54\ = CARRY((mDLY(16) & !\mDLY[15]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mDLY(16),
	datad => VCC,
	cin => \mDLY[15]~52\,
	combout => \mDLY[16]~53_combout\,
	cout => \mDLY[16]~54\);

-- Location: FF_X4_Y21_N15
\mDLY[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[16]~53_combout\,
	sclr => \mDLY[6]~27_combout\,
	ena => \mDLY[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(16));

-- Location: LCCOMB_X4_Y21_N16
\mDLY[17]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[17]~55_combout\ = \mDLY[16]~54\ $ (mDLY(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => mDLY(17),
	cin => \mDLY[16]~54\,
	combout => \mDLY[17]~55_combout\);

-- Location: FF_X4_Y21_N17
\mDLY[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[17]~55_combout\,
	sclr => \mDLY[6]~27_combout\,
	ena => \mDLY[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(17));

-- Location: LCCOMB_X4_Y21_N28
\LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (((!mDLY(14)) # (!mDLY(13))) # (!mDLY(16))) # (!mDLY(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mDLY(15),
	datab => mDLY(16),
	datac => mDLY(13),
	datad => mDLY(14),
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X4_Y21_N26
\mDLY[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[6]~26_combout\ = (\LessThan1~4_combout\) # (!mDLY(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mDLY(17),
	datad => \LessThan1~4_combout\,
	combout => \mDLY[6]~26_combout\);

-- Location: LCCOMB_X4_Y21_N30
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (((!mDLY(10)) # (!mDLY(11))) # (!mDLY(9))) # (!mDLY(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mDLY(12),
	datab => mDLY(9),
	datac => mDLY(11),
	datad => mDLY(10),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X4_Y21_N24
\mDLY[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[6]~27_combout\ = ((!\mDLY[6]~26_combout\ & (!\LessThan1~3_combout\ & !\LessThan1~2_combout\))) # (!\iRST_N~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mDLY[6]~26_combout\,
	datab => \iRST_N~input_o\,
	datac => \LessThan1~3_combout\,
	datad => \LessThan1~2_combout\,
	combout => \mDLY[6]~27_combout\);

-- Location: FF_X4_Y22_N15
\mDLY[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[0]~18_combout\,
	sclr => \mDLY[6]~27_combout\,
	ena => \mDLY[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(0));

-- Location: LCCOMB_X4_Y22_N16
\mDLY[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[1]~20_combout\ = (mDLY(1) & (!\mDLY[0]~19\)) # (!mDLY(1) & ((\mDLY[0]~19\) # (GND)))
-- \mDLY[1]~21\ = CARRY((!\mDLY[0]~19\) # (!mDLY(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mDLY(1),
	datad => VCC,
	cin => \mDLY[0]~19\,
	combout => \mDLY[1]~20_combout\,
	cout => \mDLY[1]~21\);

-- Location: FF_X4_Y22_N17
\mDLY[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[1]~20_combout\,
	sclr => \mDLY[6]~27_combout\,
	ena => \mDLY[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(1));

-- Location: LCCOMB_X4_Y22_N18
\mDLY[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[2]~22_combout\ = (mDLY(2) & (\mDLY[1]~21\ $ (GND))) # (!mDLY(2) & (!\mDLY[1]~21\ & VCC))
-- \mDLY[2]~23\ = CARRY((mDLY(2) & !\mDLY[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mDLY(2),
	datad => VCC,
	cin => \mDLY[1]~21\,
	combout => \mDLY[2]~22_combout\,
	cout => \mDLY[2]~23\);

-- Location: FF_X4_Y22_N19
\mDLY[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[2]~22_combout\,
	sclr => \mDLY[6]~27_combout\,
	ena => \mDLY[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(2));

-- Location: LCCOMB_X4_Y22_N20
\mDLY[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[3]~24_combout\ = (mDLY(3) & (!\mDLY[2]~23\)) # (!mDLY(3) & ((\mDLY[2]~23\) # (GND)))
-- \mDLY[3]~25\ = CARRY((!\mDLY[2]~23\) # (!mDLY(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mDLY(3),
	datad => VCC,
	cin => \mDLY[2]~23\,
	combout => \mDLY[3]~24_combout\,
	cout => \mDLY[3]~25\);

-- Location: FF_X4_Y22_N21
\mDLY[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[3]~24_combout\,
	sclr => \mDLY[6]~27_combout\,
	ena => \mDLY[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(3));

-- Location: LCCOMB_X4_Y22_N22
\mDLY[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[4]~29_combout\ = (mDLY(4) & (\mDLY[3]~25\ $ (GND))) # (!mDLY(4) & (!\mDLY[3]~25\ & VCC))
-- \mDLY[4]~30\ = CARRY((mDLY(4) & !\mDLY[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mDLY(4),
	datad => VCC,
	cin => \mDLY[3]~25\,
	combout => \mDLY[4]~29_combout\,
	cout => \mDLY[4]~30\);

-- Location: FF_X4_Y22_N23
\mDLY[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[4]~29_combout\,
	sclr => \mDLY[6]~27_combout\,
	ena => \mDLY[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(4));

-- Location: LCCOMB_X4_Y22_N24
\mDLY[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[5]~31_combout\ = (mDLY(5) & (!\mDLY[4]~30\)) # (!mDLY(5) & ((\mDLY[4]~30\) # (GND)))
-- \mDLY[5]~32\ = CARRY((!\mDLY[4]~30\) # (!mDLY(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mDLY(5),
	datad => VCC,
	cin => \mDLY[4]~30\,
	combout => \mDLY[5]~31_combout\,
	cout => \mDLY[5]~32\);

-- Location: FF_X4_Y22_N25
\mDLY[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[5]~31_combout\,
	sclr => \mDLY[6]~27_combout\,
	ena => \mDLY[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(5));

-- Location: FF_X4_Y22_N27
\mDLY[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[6]~33_combout\,
	sclr => \mDLY[6]~27_combout\,
	ena => \mDLY[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(6));

-- Location: LCCOMB_X4_Y22_N10
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (((!mDLY(7)) # (!mDLY(8))) # (!mDLY(5))) # (!mDLY(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mDLY(6),
	datab => mDLY(5),
	datac => mDLY(8),
	datad => mDLY(7),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X4_Y22_N0
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!mDLY(3)) # (!mDLY(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mDLY(4),
	datad => mDLY(3),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X4_Y22_N12
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (\LessThan1~1_combout\) # (((\LessThan1~0_combout\) # (!mDLY(2))) # (!mDLY(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~1_combout\,
	datab => mDLY(1),
	datac => mDLY(2),
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X5_Y22_N12
\LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (\LessThan1~2_combout\) # (((\LessThan1~3_combout\) # (\LessThan1~4_combout\)) # (!mDLY(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~2_combout\,
	datab => mDLY(17),
	datac => \LessThan1~3_combout\,
	datad => \LessThan1~4_combout\,
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X5_Y22_N10
\mLCD_ST~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_ST~17_combout\ = (\iRST_N~input_o\ & ((\mLCD_ST~16_combout\) # ((\mLCD_ST.000010~q\ & \LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mLCD_ST.000010~q\,
	datab => \iRST_N~input_o\,
	datac => \mLCD_ST~16_combout\,
	datad => \LessThan1~5_combout\,
	combout => \mLCD_ST~17_combout\);

-- Location: LCCOMB_X5_Y22_N0
\mLCD_ST~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_ST~21_combout\ = (\mLCD_ST~17_combout\ & (((\mLCD_ST.000001~q\)))) # (!\mLCD_ST~17_combout\ & (\iRST_N~input_o\ & (\mLCD_ST~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iRST_N~input_o\,
	datab => \mLCD_ST~20_combout\,
	datac => \mLCD_ST.000001~q\,
	datad => \mLCD_ST~17_combout\,
	combout => \mLCD_ST~21_combout\);

-- Location: FF_X5_Y22_N1
\mLCD_ST.000001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_ST~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mLCD_ST.000001~q\);

-- Location: LCCOMB_X5_Y22_N26
\Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~3_combout\ = (\mLCD_ST.000001~q\ & ((\u0|oDone~q\) # ((\mLCD_ST.000010~q\ & \LessThan1~5_combout\)))) # (!\mLCD_ST.000001~q\ & (((\mLCD_ST.000010~q\ & \LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mLCD_ST.000001~q\,
	datab => \u0|oDone~q\,
	datac => \mLCD_ST.000010~q\,
	datad => \LessThan1~5_combout\,
	combout => \Selector3~3_combout\);

-- Location: LCCOMB_X5_Y22_N14
\mLCD_ST~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_ST~19_combout\ = ((\LessThan0~0_combout\) # (!LUT_INDEX(5))) # (!\iRST_N~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iRST_N~input_o\,
	datac => LUT_INDEX(5),
	datad => \LessThan0~0_combout\,
	combout => \mLCD_ST~19_combout\);

-- Location: FF_X5_Y22_N27
\mLCD_ST.000010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Selector3~3_combout\,
	sclr => \ALT_INV_iRST_N~input_o\,
	ena => \mLCD_ST~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mLCD_ST.000010~q\);

-- Location: LCCOMB_X5_Y22_N24
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\mLCD_ST.000010~q\ & !\LessThan1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mLCD_ST.000010~q\,
	datad => \LessThan1~5_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X5_Y22_N25
\mLCD_ST.000011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	sclr => \ALT_INV_iRST_N~input_o\,
	ena => \mLCD_ST~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mLCD_ST.000011~q\);

-- Location: LCCOMB_X3_Y22_N0
\LUT_INDEX[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_INDEX[0]~18_combout\ = ((\mLCD_ST.000011~q\ & ((\LessThan0~0_combout\) # (!LUT_INDEX(5))))) # (!\iRST_N~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iRST_N~input_o\,
	datab => LUT_INDEX(5),
	datac => \mLCD_ST.000011~q\,
	datad => \LessThan0~0_combout\,
	combout => \LUT_INDEX[0]~18_combout\);

-- Location: FF_X3_Y22_N11
\LUT_INDEX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \LUT_INDEX[0]~6_combout\,
	sclr => \ALT_INV_iRST_N~input_o\,
	ena => \LUT_INDEX[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_INDEX(0));

-- Location: LCCOMB_X3_Y22_N12
\LUT_INDEX[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_INDEX[1]~8_combout\ = (LUT_INDEX(1) & (!\LUT_INDEX[0]~7\)) # (!LUT_INDEX(1) & ((\LUT_INDEX[0]~7\) # (GND)))
-- \LUT_INDEX[1]~9\ = CARRY((!\LUT_INDEX[0]~7\) # (!LUT_INDEX(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(1),
	datad => VCC,
	cin => \LUT_INDEX[0]~7\,
	combout => \LUT_INDEX[1]~8_combout\,
	cout => \LUT_INDEX[1]~9\);

-- Location: FF_X3_Y22_N13
\LUT_INDEX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \LUT_INDEX[1]~8_combout\,
	sclr => \ALT_INV_iRST_N~input_o\,
	ena => \LUT_INDEX[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_INDEX(1));

-- Location: LCCOMB_X3_Y22_N14
\LUT_INDEX[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_INDEX[2]~10_combout\ = (LUT_INDEX(2) & (\LUT_INDEX[1]~9\ $ (GND))) # (!LUT_INDEX(2) & (!\LUT_INDEX[1]~9\ & VCC))
-- \LUT_INDEX[2]~11\ = CARRY((LUT_INDEX(2) & !\LUT_INDEX[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(2),
	datad => VCC,
	cin => \LUT_INDEX[1]~9\,
	combout => \LUT_INDEX[2]~10_combout\,
	cout => \LUT_INDEX[2]~11\);

-- Location: FF_X3_Y22_N15
\LUT_INDEX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \LUT_INDEX[2]~10_combout\,
	sclr => \ALT_INV_iRST_N~input_o\,
	ena => \LUT_INDEX[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_INDEX(2));

-- Location: FF_X3_Y22_N17
\LUT_INDEX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \LUT_INDEX[3]~12_combout\,
	sclr => \ALT_INV_iRST_N~input_o\,
	ena => \LUT_INDEX[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_INDEX(3));

-- Location: LCCOMB_X5_Y22_N4
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!LUT_INDEX(3) & (!LUT_INDEX(2) & !LUT_INDEX(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(3),
	datac => LUT_INDEX(2),
	datad => LUT_INDEX(1),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X5_Y22_N18
\Mux16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~6_combout\ = (\Mux2~0_combout\ & ((LUT_INDEX(0) & ((\value[0]~input_o\))) # (!LUT_INDEX(0) & (\value[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value[8]~input_o\,
	datab => \value[0]~input_o\,
	datac => \Mux2~0_combout\,
	datad => LUT_INDEX(0),
	combout => \Mux16~6_combout\);

-- Location: LCCOMB_X2_Y22_N6
\Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = LUT_INDEX(0) $ (LUT_INDEX(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => LUT_INDEX(0),
	datad => LUT_INDEX(2),
	combout => \Mux16~1_combout\);

-- Location: IOIBUF_X0_Y25_N15
\index[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_index(8),
	o => \index[8]~input_o\);

-- Location: IOIBUF_X0_Y36_N22
\index[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_index(0),
	o => \index[0]~input_o\);

-- Location: LCCOMB_X1_Y22_N30
\Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = (!LUT_INDEX(2) & ((LUT_INDEX(0) & ((\index[0]~input_o\))) # (!LUT_INDEX(0) & (\index[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index[8]~input_o\,
	datab => \index[0]~input_o\,
	datac => LUT_INDEX(0),
	datad => LUT_INDEX(2),
	combout => \Mux16~4_combout\);

-- Location: LCCOMB_X2_Y22_N4
\Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (!LUT_INDEX(0) & (!LUT_INDEX(2) & LUT_DATA(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => LUT_INDEX(0),
	datac => LUT_INDEX(2),
	datad => LUT_DATA(0),
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X1_Y22_N28
\Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (LUT_INDEX(3) & (LUT_INDEX(1))) # (!LUT_INDEX(3) & ((LUT_INDEX(1) & (\Mux16~0_combout\)) # (!LUT_INDEX(1) & ((\Mux16~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(3),
	datab => LUT_INDEX(1),
	datac => \Mux16~0_combout\,
	datad => \Mux16~2_combout\,
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X1_Y22_N20
\Mux16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~5_combout\ = (LUT_INDEX(3) & ((\Mux16~3_combout\ & ((\Mux16~4_combout\))) # (!\Mux16~3_combout\ & (!\Mux16~1_combout\)))) # (!LUT_INDEX(3) & (((\Mux16~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~1_combout\,
	datab => LUT_INDEX(3),
	datac => \Mux16~4_combout\,
	datad => \Mux16~3_combout\,
	combout => \Mux16~5_combout\);

-- Location: LCCOMB_X2_Y22_N28
\LUT_DATA[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA[0]~0_combout\ = (LUT_INDEX(4) & (\Mux16~6_combout\)) # (!LUT_INDEX(4) & ((\Mux16~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~6_combout\,
	datab => LUT_INDEX(4),
	datad => \Mux16~5_combout\,
	combout => \LUT_DATA[0]~0_combout\);

-- Location: IOIBUF_X0_Y33_N22
\txt5[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt5(0),
	o => \txt5[0]~input_o\);

-- Location: IOIBUF_X0_Y34_N15
\txt4[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt4(0),
	o => \txt4[0]~input_o\);

-- Location: LCCOMB_X2_Y22_N16
\Mux16~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~12_combout\ = (!LUT_INDEX(2) & ((LUT_INDEX(0) & (\txt5[0]~input_o\)) # (!LUT_INDEX(0) & ((\txt4[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \txt5[0]~input_o\,
	datab => \txt4[0]~input_o\,
	datac => LUT_INDEX(0),
	datad => LUT_INDEX(2),
	combout => \Mux16~12_combout\);

-- Location: IOIBUF_X0_Y33_N15
\txt1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt1(0),
	o => \txt1[0]~input_o\);

-- Location: LCCOMB_X2_Y22_N22
\Mux16~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~9_combout\ = (\txt1[0]~input_o\ & (LUT_INDEX(0) & LUT_INDEX(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \txt1[0]~input_o\,
	datac => LUT_INDEX(0),
	datad => LUT_INDEX(2),
	combout => \Mux16~9_combout\);

-- Location: LCCOMB_X2_Y22_N24
\Mux16~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~10_combout\ = (LUT_INDEX(0) & !LUT_INDEX(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => LUT_INDEX(0),
	datad => LUT_INDEX(2),
	combout => \Mux16~10_combout\);

-- Location: LCCOMB_X2_Y22_N26
\Mux16~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~11_combout\ = (LUT_INDEX(3) & (LUT_INDEX(1))) # (!LUT_INDEX(3) & ((\Mux16~10_combout\) # ((LUT_INDEX(1) & \Mux16~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(3),
	datab => LUT_INDEX(1),
	datac => \Mux16~9_combout\,
	datad => \Mux16~10_combout\,
	combout => \Mux16~11_combout\);

-- Location: IOIBUF_X0_Y35_N8
\txt6[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt6(0),
	o => \txt6[0]~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\txt7[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt7(0),
	o => \txt7[0]~input_o\);

-- Location: IOIBUF_X0_Y31_N15
\txt3[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt3(0),
	o => \txt3[0]~input_o\);

-- Location: IOIBUF_X0_Y34_N22
\txt2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt2(0),
	o => \txt2[0]~input_o\);

-- Location: LCCOMB_X2_Y22_N2
\Mux16~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~7_combout\ = (LUT_INDEX(0) & ((\txt3[0]~input_o\) # ((LUT_INDEX(2))))) # (!LUT_INDEX(0) & (((\txt2[0]~input_o\ & !LUT_INDEX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \txt3[0]~input_o\,
	datab => \txt2[0]~input_o\,
	datac => LUT_INDEX(0),
	datad => LUT_INDEX(2),
	combout => \Mux16~7_combout\);

-- Location: LCCOMB_X2_Y22_N0
\Mux16~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~8_combout\ = (LUT_INDEX(2) & ((\Mux16~7_combout\ & ((\txt7[0]~input_o\))) # (!\Mux16~7_combout\ & (\txt6[0]~input_o\)))) # (!LUT_INDEX(2) & (((\Mux16~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \txt6[0]~input_o\,
	datab => \txt7[0]~input_o\,
	datac => LUT_INDEX(2),
	datad => \Mux16~7_combout\,
	combout => \Mux16~8_combout\);

-- Location: LCCOMB_X2_Y22_N14
\Mux16~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~13_combout\ = (LUT_INDEX(3) & ((\Mux16~11_combout\ & (\Mux16~12_combout\)) # (!\Mux16~11_combout\ & ((\Mux16~8_combout\))))) # (!LUT_INDEX(3) & (((\Mux16~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(3),
	datab => \Mux16~12_combout\,
	datac => \Mux16~11_combout\,
	datad => \Mux16~8_combout\,
	combout => \Mux16~13_combout\);

-- Location: LCCOMB_X2_Y22_N12
\Mux16~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~14_combout\ = (LUT_INDEX(3) & (LUT_INDEX(1) & ((!\Mux16~1_combout\)))) # (!LUT_INDEX(3) & (!LUT_INDEX(1) & (\Mux16~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(3),
	datab => LUT_INDEX(1),
	datac => \Mux16~2_combout\,
	datad => \Mux16~1_combout\,
	combout => \Mux16~14_combout\);

-- Location: LCCOMB_X2_Y22_N18
\Mux16~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~15_combout\ = (\Mux16~14_combout\) # ((\Mux16~10_combout\ & (LUT_INDEX(3) $ (LUT_INDEX(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(3),
	datab => \Mux16~10_combout\,
	datac => LUT_INDEX(1),
	datad => \Mux16~14_combout\,
	combout => \Mux16~15_combout\);

-- Location: LCCOMB_X2_Y22_N8
\Mux16~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~16_combout\ = (LUT_INDEX(4) & (\Mux16~13_combout\)) # (!LUT_INDEX(4) & ((\Mux16~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => LUT_INDEX(4),
	datac => \Mux16~13_combout\,
	datad => \Mux16~15_combout\,
	combout => \Mux16~16_combout\);

-- Location: IOIBUF_X0_Y19_N8
\keded~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keded,
	o => \keded~input_o\);

-- Location: FF_X2_Y22_N29
\LUT_DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \LUT_DATA[0]~0_combout\,
	asdata => \Mux16~16_combout\,
	sclr => LUT_INDEX(5),
	sload => \ALT_INV_keded~input_o\,
	ena => \LUT_DATA~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_DATA(0));

-- Location: LCCOMB_X3_Y21_N28
\mLCD_DATA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_DATA~0_combout\ = (LUT_DATA(0) & \iRST_N~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_DATA(0),
	datac => \iRST_N~input_o\,
	combout => \mLCD_DATA~0_combout\);

-- Location: LCCOMB_X5_Y22_N30
\mLCD_ST~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_ST~18_combout\ = (\mLCD_ST~17_combout\ & (((\mLCD_ST.000000~q\)))) # (!\mLCD_ST~17_combout\ & (!\mLCD_ST.000011~q\ & (\iRST_N~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mLCD_ST.000011~q\,
	datab => \iRST_N~input_o\,
	datac => \mLCD_ST.000000~q\,
	datad => \mLCD_ST~17_combout\,
	combout => \mLCD_ST~18_combout\);

-- Location: FF_X5_Y22_N31
\mLCD_ST.000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_ST~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mLCD_ST.000000~q\);

-- Location: LCCOMB_X3_Y21_N30
\mLCD_DATA[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_DATA[3]~1_combout\ = ((!\mLCD_ST.000000~q\ & ((\LessThan0~0_combout\) # (!LUT_INDEX(5))))) # (!\iRST_N~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(5),
	datab => \iRST_N~input_o\,
	datac => \mLCD_ST.000000~q\,
	datad => \LessThan0~0_combout\,
	combout => \mLCD_DATA[3]~1_combout\);

-- Location: FF_X3_Y21_N29
\mLCD_DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_DATA~0_combout\,
	ena => \mLCD_DATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mLCD_DATA(0));

-- Location: IOIBUF_X5_Y0_N22
\value[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(1),
	o => \value[1]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\value[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(9),
	o => \value[9]~input_o\);

-- Location: LCCOMB_X4_Y20_N2
\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Mux2~0_combout\ & ((LUT_INDEX(0) & (\value[1]~input_o\)) # (!LUT_INDEX(0) & ((\value[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value[1]~input_o\,
	datab => \value[9]~input_o\,
	datac => \Mux2~0_combout\,
	datad => LUT_INDEX(0),
	combout => \Mux6~3_combout\);

-- Location: IOIBUF_X0_Y19_N1
\index[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_index(9),
	o => \index[9]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\index[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_index(1),
	o => \index[1]~input_o\);

-- Location: LCCOMB_X2_Y20_N6
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (LUT_INDEX(1) & ((LUT_INDEX(0) & ((\index[1]~input_o\))) # (!LUT_INDEX(0) & (\index[9]~input_o\)))) # (!LUT_INDEX(1) & (((LUT_INDEX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index[9]~input_o\,
	datab => \index[1]~input_o\,
	datac => LUT_INDEX(1),
	datad => LUT_INDEX(0),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X2_Y22_N30
\Mux16~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~17_combout\ = (!LUT_INDEX(0) & ((LUT_INDEX(2)) # (LUT_DATA(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => LUT_INDEX(2),
	datac => LUT_INDEX(0),
	datad => LUT_DATA(1),
	combout => \Mux16~17_combout\);

-- Location: LCCOMB_X2_Y22_N20
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (LUT_INDEX(3) & (LUT_INDEX(1))) # (!LUT_INDEX(3) & ((LUT_INDEX(1) & ((\Mux16~1_combout\))) # (!LUT_INDEX(1) & (\Mux16~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(3),
	datab => LUT_INDEX(1),
	datac => \Mux16~17_combout\,
	datad => \Mux16~1_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X3_Y20_N20
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (LUT_INDEX(3) & (!LUT_INDEX(2) & (\Mux6~0_combout\ $ (!\Mux6~1_combout\)))) # (!LUT_INDEX(3) & (((\Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(2),
	datab => LUT_INDEX(3),
	datac => \Mux6~0_combout\,
	datad => \Mux6~1_combout\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X3_Y20_N28
\LUT_DATA[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA[1]~1_combout\ = (LUT_INDEX(4) & (\Mux6~3_combout\)) # (!LUT_INDEX(4) & ((\Mux6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~3_combout\,
	datab => LUT_INDEX(4),
	datad => \Mux6~2_combout\,
	combout => \LUT_DATA[1]~1_combout\);

-- Location: LCCOMB_X4_Y20_N12
\Mux6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~10_combout\ = (LUT_INDEX(3) & (LUT_INDEX(1) & (LUT_INDEX(0) $ (!LUT_INDEX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datab => LUT_INDEX(3),
	datac => LUT_INDEX(1),
	datad => LUT_INDEX(2),
	combout => \Mux6~10_combout\);

-- Location: LCCOMB_X3_Y20_N26
\Mux6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~11_combout\ = (!LUT_INDEX(3) & ((LUT_INDEX(1) & (\Mux16~0_combout\)) # (!LUT_INDEX(1) & ((\Mux16~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(3),
	datab => LUT_INDEX(1),
	datac => \Mux16~0_combout\,
	datad => \Mux16~17_combout\,
	combout => \Mux6~11_combout\);

-- Location: IOIBUF_X0_Y16_N15
\txt1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt1(1),
	o => \txt1[1]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\txt5[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt5(1),
	o => \txt5[1]~input_o\);

-- Location: IOIBUF_X0_Y9_N15
\txt4[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt4(1),
	o => \txt4[1]~input_o\);

-- Location: LCCOMB_X2_Y20_N28
\Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (LUT_INDEX(3) & ((LUT_INDEX(0) & (\txt5[1]~input_o\)) # (!LUT_INDEX(0) & ((\txt4[1]~input_o\))))) # (!LUT_INDEX(3) & (((LUT_INDEX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(3),
	datab => \txt5[1]~input_o\,
	datac => \txt4[1]~input_o\,
	datad => LUT_INDEX(0),
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X2_Y20_N30
\Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\Mux6~4_combout\ & ((LUT_INDEX(3) & (!LUT_INDEX(2))) # (!LUT_INDEX(3) & (LUT_INDEX(2) & \txt1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(3),
	datab => LUT_INDEX(2),
	datac => \txt1[1]~input_o\,
	datad => \Mux6~4_combout\,
	combout => \Mux6~5_combout\);

-- Location: IOIBUF_X0_Y13_N8
\txt3[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt3(1),
	o => \txt3[1]~input_o\);

-- Location: IOIBUF_X0_Y13_N1
\txt7[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt7(1),
	o => \txt7[1]~input_o\);

-- Location: LCCOMB_X2_Y20_N26
\Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (LUT_INDEX(2) & ((\txt7[1]~input_o\))) # (!LUT_INDEX(2) & (\txt3[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \txt3[1]~input_o\,
	datac => \txt7[1]~input_o\,
	datad => LUT_INDEX(2),
	combout => \Mux6~7_combout\);

-- Location: IOIBUF_X0_Y20_N15
\txt6[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt6(1),
	o => \txt6[1]~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\txt2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt2(1),
	o => \txt2[1]~input_o\);

-- Location: LCCOMB_X2_Y20_N16
\Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (LUT_INDEX(2) & (\txt6[1]~input_o\)) # (!LUT_INDEX(2) & ((\txt2[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \txt6[1]~input_o\,
	datac => \txt2[1]~input_o\,
	datad => LUT_INDEX(2),
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X2_Y20_N20
\Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~8_combout\ = (LUT_INDEX(3) & ((LUT_INDEX(0) & (\Mux6~7_combout\)) # (!LUT_INDEX(0) & ((\Mux6~6_combout\))))) # (!LUT_INDEX(3) & (!LUT_INDEX(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(3),
	datab => LUT_INDEX(0),
	datac => \Mux6~7_combout\,
	datad => \Mux6~6_combout\,
	combout => \Mux6~8_combout\);

-- Location: LCCOMB_X2_Y20_N14
\Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~9_combout\ = (LUT_INDEX(1) & (\Mux6~5_combout\)) # (!LUT_INDEX(1) & ((\Mux6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => LUT_INDEX(1),
	datac => \Mux6~5_combout\,
	datad => \Mux6~8_combout\,
	combout => \Mux6~9_combout\);

-- Location: LCCOMB_X3_Y20_N8
\Mux6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~12_combout\ = (LUT_INDEX(4) & (((\Mux6~9_combout\)))) # (!LUT_INDEX(4) & ((\Mux6~10_combout\) # ((\Mux6~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~10_combout\,
	datab => LUT_INDEX(4),
	datac => \Mux6~11_combout\,
	datad => \Mux6~9_combout\,
	combout => \Mux6~12_combout\);

-- Location: FF_X3_Y20_N29
\LUT_DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \LUT_DATA[1]~1_combout\,
	asdata => \Mux6~12_combout\,
	sclr => LUT_INDEX(5),
	sload => \ALT_INV_keded~input_o\,
	ena => \LUT_DATA~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_DATA(1));

-- Location: LCCOMB_X3_Y21_N2
\mLCD_DATA~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_DATA~2_combout\ = (\iRST_N~input_o\ & LUT_DATA(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iRST_N~input_o\,
	datad => LUT_DATA(1),
	combout => \mLCD_DATA~2_combout\);

-- Location: FF_X3_Y21_N3
\mLCD_DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_DATA~2_combout\,
	ena => \mLCD_DATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mLCD_DATA(1));

-- Location: LCCOMB_X2_Y21_N10
\Mux16~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~20_combout\ = (LUT_INDEX(1) & (LUT_INDEX(0) $ (((!LUT_INDEX(2)))))) # (!LUT_INDEX(1) & (!LUT_INDEX(0) & ((LUT_DATA(2)) # (LUT_INDEX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datab => LUT_DATA(2),
	datac => LUT_INDEX(1),
	datad => LUT_INDEX(2),
	combout => \Mux16~20_combout\);

-- Location: LCCOMB_X2_Y21_N28
\Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (LUT_INDEX(3) & ((LUT_INDEX(1) & (LUT_INDEX(0) & LUT_INDEX(2))) # (!LUT_INDEX(1) & (!LUT_INDEX(0) & !LUT_INDEX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(1),
	datab => LUT_INDEX(3),
	datac => LUT_INDEX(0),
	datad => LUT_INDEX(2),
	combout => \Mux14~4_combout\);

-- Location: LCCOMB_X2_Y21_N12
\Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (\Mux14~4_combout\) # ((\Mux16~20_combout\ & !LUT_INDEX(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~20_combout\,
	datac => LUT_INDEX(3),
	datad => \Mux14~4_combout\,
	combout => \Mux14~5_combout\);

-- Location: IOIBUF_X0_Y23_N15
\txt7[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt7(2),
	o => \txt7[2]~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\txt6[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt6(2),
	o => \txt6[2]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\txt2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt2(2),
	o => \txt2[2]~input_o\);

-- Location: IOIBUF_X0_Y23_N22
\txt3[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt3(2),
	o => \txt3[2]~input_o\);

-- Location: LCCOMB_X1_Y22_N24
\Mux16~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~18_combout\ = (LUT_INDEX(0) & (((\txt3[2]~input_o\) # (LUT_INDEX(2))))) # (!LUT_INDEX(0) & (\txt2[2]~input_o\ & ((!LUT_INDEX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \txt2[2]~input_o\,
	datab => \txt3[2]~input_o\,
	datac => LUT_INDEX(0),
	datad => LUT_INDEX(2),
	combout => \Mux16~18_combout\);

-- Location: LCCOMB_X1_Y22_N22
\Mux16~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~19_combout\ = (LUT_INDEX(2) & ((\Mux16~18_combout\ & (\txt7[2]~input_o\)) # (!\Mux16~18_combout\ & ((\txt6[2]~input_o\))))) # (!LUT_INDEX(2) & (((\Mux16~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \txt7[2]~input_o\,
	datab => \txt6[2]~input_o\,
	datac => LUT_INDEX(2),
	datad => \Mux16~18_combout\,
	combout => \Mux16~19_combout\);

-- Location: IOIBUF_X0_Y30_N8
\txt1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt1(2),
	o => \txt1[2]~input_o\);

-- Location: LCCOMB_X1_Y22_N26
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\txt1[2]~input_o\ & (LUT_INDEX(0) & !LUT_INDEX(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \txt1[2]~input_o\,
	datac => LUT_INDEX(0),
	datad => LUT_INDEX(3),
	combout => \Mux14~0_combout\);

-- Location: IOIBUF_X0_Y24_N1
\txt4[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt4(2),
	o => \txt4[2]~input_o\);

-- Location: IOIBUF_X0_Y26_N15
\txt5[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt5(2),
	o => \txt5[2]~input_o\);

-- Location: LCCOMB_X1_Y22_N12
\Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = ((LUT_INDEX(0) & ((\txt5[2]~input_o\))) # (!LUT_INDEX(0) & (\txt4[2]~input_o\))) # (!LUT_INDEX(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \txt4[2]~input_o\,
	datab => \txt5[2]~input_o\,
	datac => LUT_INDEX(0),
	datad => LUT_INDEX(3),
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X1_Y22_N2
\Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (LUT_INDEX(1) & ((\Mux14~0_combout\) # ((!LUT_INDEX(2) & \Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(2),
	datab => LUT_INDEX(1),
	datac => \Mux14~0_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X1_Y22_N4
\Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\Mux14~2_combout\) # ((LUT_INDEX(3) & (!LUT_INDEX(1) & \Mux16~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(3),
	datab => LUT_INDEX(1),
	datac => \Mux16~19_combout\,
	datad => \Mux14~2_combout\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X2_Y21_N24
\LUT_DATA[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA[2]~2_combout\ = (LUT_INDEX(4) & ((\Mux14~3_combout\))) # (!LUT_INDEX(4) & (\Mux14~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~5_combout\,
	datab => LUT_INDEX(4),
	datad => \Mux14~3_combout\,
	combout => \LUT_DATA[2]~2_combout\);

-- Location: LCCOMB_X2_Y21_N30
\Mux14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~7_combout\ = (!LUT_INDEX(4) & (LUT_INDEX(3) & !LUT_INDEX(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(4),
	datac => LUT_INDEX(3),
	datad => LUT_INDEX(2),
	combout => \Mux14~7_combout\);

-- Location: IOIBUF_X0_Y18_N15
\index[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_index(2),
	o => \index[2]~input_o\);

-- Location: IOIBUF_X0_Y14_N1
\index[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_index(10),
	o => \index[10]~input_o\);

-- Location: LCCOMB_X1_Y21_N16
\Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~6_combout\ = (LUT_INDEX(0) & (\index[2]~input_o\ & ((LUT_INDEX(1))))) # (!LUT_INDEX(0) & (((\index[10]~input_o\) # (!LUT_INDEX(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index[2]~input_o\,
	datab => \index[10]~input_o\,
	datac => LUT_INDEX(0),
	datad => LUT_INDEX(1),
	combout => \Mux14~6_combout\);

-- Location: IOIBUF_X0_Y21_N15
\value[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(2),
	o => \value[2]~input_o\);

-- Location: IOIBUF_X0_Y24_N8
\value[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(10),
	o => \value[10]~input_o\);

-- Location: LCCOMB_X2_Y21_N8
\Mux14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~8_combout\ = (!LUT_INDEX(1) & ((LUT_INDEX(0) & (\value[2]~input_o\)) # (!LUT_INDEX(0) & ((\value[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datab => \value[2]~input_o\,
	datac => LUT_INDEX(1),
	datad => \value[10]~input_o\,
	combout => \Mux14~8_combout\);

-- Location: LCCOMB_X2_Y21_N6
\Mux14~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~9_combout\ = (LUT_INDEX(4) & (!LUT_INDEX(2) & (\Mux14~8_combout\))) # (!LUT_INDEX(4) & (((\Mux16~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(4),
	datab => LUT_INDEX(2),
	datac => \Mux14~8_combout\,
	datad => \Mux16~20_combout\,
	combout => \Mux14~9_combout\);

-- Location: LCCOMB_X2_Y21_N4
\Mux14~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~10_combout\ = (\Mux14~7_combout\ & ((\Mux14~6_combout\) # ((!LUT_INDEX(3) & \Mux14~9_combout\)))) # (!\Mux14~7_combout\ & (!LUT_INDEX(3) & ((\Mux14~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~7_combout\,
	datab => LUT_INDEX(3),
	datac => \Mux14~6_combout\,
	datad => \Mux14~9_combout\,
	combout => \Mux14~10_combout\);

-- Location: FF_X2_Y21_N25
\LUT_DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \LUT_DATA[2]~2_combout\,
	asdata => \Mux14~10_combout\,
	sclr => LUT_INDEX(5),
	sload => \keded~input_o\,
	ena => \LUT_DATA~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_DATA(2));

-- Location: LCCOMB_X3_Y21_N16
\mLCD_DATA~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_DATA~3_combout\ = (\iRST_N~input_o\ & LUT_DATA(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iRST_N~input_o\,
	datad => LUT_DATA(2),
	combout => \mLCD_DATA~3_combout\);

-- Location: FF_X3_Y21_N17
\mLCD_DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_DATA~3_combout\,
	ena => \mLCD_DATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mLCD_DATA(2));

-- Location: LCCOMB_X2_Y19_N28
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (LUT_INDEX(3) & ((LUT_INDEX(0) $ (!LUT_INDEX(1))))) # (!LUT_INDEX(3) & ((LUT_INDEX(0) & ((!LUT_INDEX(1)))) # (!LUT_INDEX(0) & ((LUT_DATA(3)) # (LUT_INDEX(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(3),
	datab => LUT_DATA(3),
	datac => LUT_INDEX(0),
	datad => LUT_INDEX(1),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X2_Y19_N2
\Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (!LUT_INDEX(2) & \Mux13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(2),
	datad => \Mux13~0_combout\,
	combout => \Mux13~1_combout\);

-- Location: IOIBUF_X0_Y27_N22
\txt5[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt5(3),
	o => \txt5[3]~input_o\);

-- Location: IOIBUF_X0_Y30_N1
\txt4[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt4(3),
	o => \txt4[3]~input_o\);

-- Location: LCCOMB_X1_Y22_N18
\Mux16~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~24_combout\ = (!LUT_INDEX(2) & ((LUT_INDEX(0) & (\txt5[3]~input_o\)) # (!LUT_INDEX(0) & ((\txt4[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \txt5[3]~input_o\,
	datab => LUT_INDEX(0),
	datac => LUT_INDEX(2),
	datad => \txt4[3]~input_o\,
	combout => \Mux16~24_combout\);

-- Location: IOIBUF_X0_Y25_N22
\txt7[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt7(3),
	o => \txt7[3]~input_o\);

-- Location: IOIBUF_X0_Y29_N15
\txt6[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt6(3),
	o => \txt6[3]~input_o\);

-- Location: IOIBUF_X0_Y27_N15
\txt3[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt3(3),
	o => \txt3[3]~input_o\);

-- Location: IOIBUF_X0_Y22_N22
\txt2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt2(3),
	o => \txt2[3]~input_o\);

-- Location: LCCOMB_X1_Y22_N6
\Mux16~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~21_combout\ = (LUT_INDEX(0) & ((\txt3[3]~input_o\) # ((LUT_INDEX(2))))) # (!LUT_INDEX(0) & (((\txt2[3]~input_o\ & !LUT_INDEX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \txt3[3]~input_o\,
	datab => \txt2[3]~input_o\,
	datac => LUT_INDEX(0),
	datad => LUT_INDEX(2),
	combout => \Mux16~21_combout\);

-- Location: LCCOMB_X1_Y22_N8
\Mux16~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~22_combout\ = (LUT_INDEX(2) & ((\Mux16~21_combout\ & (\txt7[3]~input_o\)) # (!\Mux16~21_combout\ & ((\txt6[3]~input_o\))))) # (!LUT_INDEX(2) & (((\Mux16~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \txt7[3]~input_o\,
	datab => \txt6[3]~input_o\,
	datac => LUT_INDEX(2),
	datad => \Mux16~21_combout\,
	combout => \Mux16~22_combout\);

-- Location: IOIBUF_X0_Y24_N22
\txt1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt1(3),
	o => \txt1[3]~input_o\);

-- Location: LCCOMB_X1_Y22_N14
\Mux16~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~23_combout\ = (\txt1[3]~input_o\ & (LUT_INDEX(0) & LUT_INDEX(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \txt1[3]~input_o\,
	datac => LUT_INDEX(0),
	datad => LUT_INDEX(2),
	combout => \Mux16~23_combout\);

-- Location: LCCOMB_X1_Y22_N16
\Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (LUT_INDEX(3) & (LUT_INDEX(1))) # (!LUT_INDEX(3) & ((LUT_INDEX(1) & (\Mux16~23_combout\)) # (!LUT_INDEX(1) & ((\Mux16~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(3),
	datab => LUT_INDEX(1),
	datac => \Mux16~23_combout\,
	datad => \Mux16~10_combout\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X1_Y22_N0
\Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (LUT_INDEX(3) & ((\Mux13~2_combout\ & (\Mux16~24_combout\)) # (!\Mux13~2_combout\ & ((\Mux16~22_combout\))))) # (!LUT_INDEX(3) & (((\Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(3),
	datab => \Mux16~24_combout\,
	datac => \Mux16~22_combout\,
	datad => \Mux13~2_combout\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X2_Y19_N16
\LUT_DATA[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA[3]~3_combout\ = (LUT_INDEX(4) & ((\Mux13~3_combout\))) # (!LUT_INDEX(4) & (\Mux13~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(4),
	datab => \Mux13~1_combout\,
	datad => \Mux13~3_combout\,
	combout => \LUT_DATA[3]~3_combout\);

-- Location: IOIBUF_X1_Y0_N15
\value[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(11),
	o => \value[11]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\value[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(3),
	o => \value[3]~input_o\);

-- Location: LCCOMB_X2_Y19_N24
\Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (LUT_INDEX(4) & ((LUT_INDEX(0) & ((\value[3]~input_o\))) # (!LUT_INDEX(0) & (\value[11]~input_o\)))) # (!LUT_INDEX(4) & (((LUT_INDEX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value[11]~input_o\,
	datab => \value[3]~input_o\,
	datac => LUT_INDEX(4),
	datad => LUT_INDEX(0),
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X2_Y19_N8
\Mux13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~8_combout\ = (LUT_INDEX(2) & (LUT_INDEX(3) & ((\Mux13~4_combout\) # (!LUT_INDEX(1))))) # (!LUT_INDEX(2) & ((LUT_INDEX(1) & (!LUT_INDEX(3) & !\Mux13~4_combout\)) # (!LUT_INDEX(1) & ((\Mux13~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(1),
	datab => LUT_INDEX(2),
	datac => LUT_INDEX(3),
	datad => \Mux13~4_combout\,
	combout => \Mux13~8_combout\);

-- Location: IOIBUF_X0_Y11_N15
\index[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_index(3),
	o => \index[3]~input_o\);

-- Location: IOIBUF_X0_Y15_N22
\index[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_index(11),
	o => \index[11]~input_o\);

-- Location: LCCOMB_X2_Y19_N30
\Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = (LUT_INDEX(1) & ((\index[11]~input_o\))) # (!LUT_INDEX(1) & (LUT_DATA(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => LUT_DATA(3),
	datac => \index[11]~input_o\,
	datad => LUT_INDEX(1),
	combout => \Mux13~5_combout\);

-- Location: LCCOMB_X2_Y19_N4
\Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~6_combout\ = (\Mux13~4_combout\ & (\index[3]~input_o\)) # (!\Mux13~4_combout\ & ((\Mux13~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index[3]~input_o\,
	datac => \Mux13~5_combout\,
	datad => \Mux13~4_combout\,
	combout => \Mux13~6_combout\);

-- Location: LCCOMB_X2_Y19_N10
\Mux13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~7_combout\ = (\Mux13~4_combout\ & (((!LUT_INDEX(3))))) # (!\Mux13~4_combout\ & (LUT_INDEX(2) $ (((!LUT_INDEX(1) & LUT_INDEX(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(1),
	datab => LUT_INDEX(2),
	datac => LUT_INDEX(3),
	datad => \Mux13~4_combout\,
	combout => \Mux13~7_combout\);

-- Location: LCCOMB_X2_Y19_N22
\Mux13~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~9_combout\ = (\Mux13~7_combout\ & (((\Mux13~8_combout\)))) # (!\Mux13~7_combout\ & (!LUT_INDEX(4) & ((\Mux13~8_combout\) # (\Mux13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(4),
	datab => \Mux13~8_combout\,
	datac => \Mux13~6_combout\,
	datad => \Mux13~7_combout\,
	combout => \Mux13~9_combout\);

-- Location: FF_X2_Y19_N17
\LUT_DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \LUT_DATA[3]~3_combout\,
	asdata => \Mux13~9_combout\,
	sclr => LUT_INDEX(5),
	sload => \keded~input_o\,
	ena => \LUT_DATA~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_DATA(3));

-- Location: LCCOMB_X3_Y21_N22
\mLCD_DATA~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_DATA~4_combout\ = (\iRST_N~input_o\ & LUT_DATA(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iRST_N~input_o\,
	datad => LUT_DATA(3),
	combout => \mLCD_DATA~4_combout\);

-- Location: FF_X3_Y21_N23
\mLCD_DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_DATA~4_combout\,
	ena => \mLCD_DATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mLCD_DATA(3));

-- Location: IOIBUF_X11_Y0_N8
\value[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(12),
	o => \value[12]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\value[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(4),
	o => \value[4]~input_o\);

-- Location: LCCOMB_X4_Y20_N26
\Mux6~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~17_combout\ = (\Mux2~0_combout\ & ((LUT_INDEX(0) & ((\value[4]~input_o\))) # (!LUT_INDEX(0) & (\value[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value[12]~input_o\,
	datab => \value[4]~input_o\,
	datac => \Mux2~0_combout\,
	datad => LUT_INDEX(0),
	combout => \Mux6~17_combout\);

-- Location: IOIBUF_X9_Y0_N1
\index[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_index(12),
	o => \index[12]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\index[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_index(4),
	o => \index[4]~input_o\);

-- Location: LCCOMB_X4_Y20_N24
\Mux6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~14_combout\ = (LUT_INDEX(2)) # ((LUT_INDEX(0) & ((\index[4]~input_o\))) # (!LUT_INDEX(0) & (\index[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index[12]~input_o\,
	datab => \index[4]~input_o\,
	datac => LUT_INDEX(0),
	datad => LUT_INDEX(2),
	combout => \Mux6~14_combout\);

-- Location: LCCOMB_X4_Y20_N22
\Mux6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~15_combout\ = (LUT_INDEX(0) & (((LUT_INDEX(3) & \Mux6~14_combout\)))) # (!LUT_INDEX(0) & ((LUT_INDEX(2)) # ((LUT_INDEX(3) & \Mux6~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datab => LUT_INDEX(2),
	datac => LUT_INDEX(3),
	datad => \Mux6~14_combout\,
	combout => \Mux6~15_combout\);

-- Location: LCCOMB_X4_Y20_N18
\Mux6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~13_combout\ = (\Mux2~0_combout\ & ((LUT_INDEX(0)) # (LUT_DATA(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datac => \Mux2~0_combout\,
	datad => LUT_DATA(4),
	combout => \Mux6~13_combout\);

-- Location: LCCOMB_X4_Y20_N28
\Mux6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~16_combout\ = (\Mux6~13_combout\) # ((LUT_INDEX(1) & \Mux6~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(1),
	datac => \Mux6~15_combout\,
	datad => \Mux6~13_combout\,
	combout => \Mux6~16_combout\);

-- Location: LCCOMB_X4_Y20_N20
\LUT_DATA[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA[4]~4_combout\ = (LUT_INDEX(4) & (\Mux6~17_combout\)) # (!LUT_INDEX(4) & ((\Mux6~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~17_combout\,
	datab => LUT_INDEX(4),
	datad => \Mux6~16_combout\,
	combout => \LUT_DATA[4]~4_combout\);

-- Location: IOIBUF_X0_Y4_N8
\txt5[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt5(4),
	o => \txt5[4]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\txt4[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt4(4),
	o => \txt4[4]~input_o\);

-- Location: LCCOMB_X4_Y20_N4
\Mux16~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~28_combout\ = (!LUT_INDEX(2) & ((LUT_INDEX(0) & (\txt5[4]~input_o\)) # (!LUT_INDEX(0) & ((\txt4[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \txt5[4]~input_o\,
	datab => \txt4[4]~input_o\,
	datac => LUT_INDEX(0),
	datad => LUT_INDEX(2),
	combout => \Mux16~28_combout\);

-- Location: IOIBUF_X5_Y0_N8
\txt1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt1(4),
	o => \txt1[4]~input_o\);

-- Location: LCCOMB_X4_Y20_N16
\Mux16~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~27_combout\ = (LUT_INDEX(0) & (\txt1[4]~input_o\ & LUT_INDEX(2))) # (!LUT_INDEX(0) & ((!LUT_INDEX(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \txt1[4]~input_o\,
	datac => LUT_INDEX(0),
	datad => LUT_INDEX(2),
	combout => \Mux16~27_combout\);

-- Location: LCCOMB_X4_Y20_N14
\Mux6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~18_combout\ = (LUT_INDEX(3) & (((LUT_INDEX(1))))) # (!LUT_INDEX(3) & ((LUT_INDEX(1) & ((\Mux16~27_combout\))) # (!LUT_INDEX(1) & (!LUT_INDEX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datab => LUT_INDEX(3),
	datac => LUT_INDEX(1),
	datad => \Mux16~27_combout\,
	combout => \Mux6~18_combout\);

-- Location: IOIBUF_X11_Y0_N15
\txt6[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt6(4),
	o => \txt6[4]~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\txt7[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt7(4),
	o => \txt7[4]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\txt3[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt3(4),
	o => \txt3[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\txt2[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt2(4),
	o => \txt2[4]~input_o\);

-- Location: LCCOMB_X4_Y20_N0
\Mux16~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~25_combout\ = (LUT_INDEX(0) & ((\txt3[4]~input_o\) # ((LUT_INDEX(2))))) # (!LUT_INDEX(0) & (((\txt2[4]~input_o\ & !LUT_INDEX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \txt3[4]~input_o\,
	datab => \txt2[4]~input_o\,
	datac => LUT_INDEX(0),
	datad => LUT_INDEX(2),
	combout => \Mux16~25_combout\);

-- Location: LCCOMB_X4_Y20_N10
\Mux16~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~26_combout\ = (LUT_INDEX(2) & ((\Mux16~25_combout\ & ((\txt7[4]~input_o\))) # (!\Mux16~25_combout\ & (\txt6[4]~input_o\)))) # (!LUT_INDEX(2) & (((\Mux16~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \txt6[4]~input_o\,
	datab => LUT_INDEX(2),
	datac => \txt7[4]~input_o\,
	datad => \Mux16~25_combout\,
	combout => \Mux16~26_combout\);

-- Location: LCCOMB_X4_Y20_N30
\Mux6~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~19_combout\ = (LUT_INDEX(3) & ((\Mux6~18_combout\ & (\Mux16~28_combout\)) # (!\Mux6~18_combout\ & ((\Mux16~26_combout\))))) # (!LUT_INDEX(3) & (((\Mux6~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(3),
	datab => \Mux16~28_combout\,
	datac => \Mux6~18_combout\,
	datad => \Mux16~26_combout\,
	combout => \Mux6~19_combout\);

-- Location: LCCOMB_X4_Y20_N8
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (LUT_INDEX(4) & (((\Mux6~19_combout\)))) # (!LUT_INDEX(4) & ((\Mux6~10_combout\) # ((\Mux6~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~10_combout\,
	datab => LUT_INDEX(4),
	datac => \Mux6~19_combout\,
	datad => \Mux6~13_combout\,
	combout => \Mux3~0_combout\);

-- Location: FF_X4_Y20_N21
\LUT_DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \LUT_DATA[4]~4_combout\,
	asdata => \Mux3~0_combout\,
	sclr => LUT_INDEX(5),
	sload => \ALT_INV_keded~input_o\,
	ena => \LUT_DATA~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_DATA(4));

-- Location: LCCOMB_X3_Y21_N12
\mLCD_DATA~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_DATA~5_combout\ = (LUT_DATA(4) & \iRST_N~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => LUT_DATA(4),
	datac => \iRST_N~input_o\,
	combout => \mLCD_DATA~5_combout\);

-- Location: FF_X3_Y21_N13
\mLCD_DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_DATA~5_combout\,
	ena => \mLCD_DATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mLCD_DATA(4));

-- Location: IOIBUF_X0_Y34_N8
\value[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(13),
	o => \value[13]~input_o\);

-- Location: IOIBUF_X0_Y42_N8
\value[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(5),
	o => \value[5]~input_o\);

-- Location: LCCOMB_X3_Y22_N4
\Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (LUT_INDEX(0) & (((\value[5]~input_o\) # (LUT_INDEX(1))))) # (!LUT_INDEX(0) & (\value[13]~input_o\ & ((!LUT_INDEX(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datab => \value[13]~input_o\,
	datac => \value[5]~input_o\,
	datad => LUT_INDEX(1),
	combout => \Mux2~8_combout\);

-- Location: LCCOMB_X2_Y22_N10
\Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~9_combout\ = (LUT_INDEX(3)) # ((\Mux2~8_combout\) # (LUT_INDEX(2) $ (LUT_INDEX(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(3),
	datab => LUT_INDEX(2),
	datac => LUT_INDEX(1),
	datad => \Mux2~8_combout\,
	combout => \Mux2~9_combout\);

-- Location: IOIBUF_X0_Y47_N1
\index[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_index(13),
	o => \index[13]~input_o\);

-- Location: IOIBUF_X0_Y46_N15
\index[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_index(5),
	o => \index[5]~input_o\);

-- Location: LCCOMB_X5_Y22_N20
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (LUT_INDEX(2)) # ((LUT_INDEX(0) & ((\index[5]~input_o\))) # (!LUT_INDEX(0) & (\index[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index[13]~input_o\,
	datab => \index[5]~input_o\,
	datac => LUT_INDEX(2),
	datad => LUT_INDEX(0),
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X5_Y22_N2
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (LUT_INDEX(3) & ((LUT_INDEX(1) & ((\Mux2~1_combout\))) # (!LUT_INDEX(1) & (LUT_INDEX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(1),
	datab => LUT_INDEX(0),
	datac => LUT_INDEX(3),
	datad => \Mux2~1_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X5_Y22_N8
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux2~2_combout\) # ((\Mux2~0_combout\ & ((LUT_DATA(5)) # (LUT_INDEX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_DATA(5),
	datab => \Mux2~0_combout\,
	datac => LUT_INDEX(0),
	datad => \Mux2~2_combout\,
	combout => \Mux2~3_combout\);

-- Location: IOIBUF_X16_Y0_N22
\txt6[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt6(5),
	o => \txt6[5]~input_o\);

-- Location: IOIBUF_X0_Y43_N15
\txt7[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt7(5),
	o => \txt7[5]~input_o\);

-- Location: IOIBUF_X0_Y42_N1
\txt3[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt3(5),
	o => \txt3[5]~input_o\);

-- Location: IOIBUF_X0_Y45_N22
\txt2[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt2(5),
	o => \txt2[5]~input_o\);

-- Location: LCCOMB_X3_Y22_N22
\Mux16~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~29_combout\ = (LUT_INDEX(2) & (((LUT_INDEX(0))))) # (!LUT_INDEX(2) & ((LUT_INDEX(0) & (\txt3[5]~input_o\)) # (!LUT_INDEX(0) & ((\txt2[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \txt3[5]~input_o\,
	datab => \txt2[5]~input_o\,
	datac => LUT_INDEX(2),
	datad => LUT_INDEX(0),
	combout => \Mux16~29_combout\);

-- Location: LCCOMB_X4_Y22_N6
\Mux16~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~30_combout\ = (LUT_INDEX(2) & ((\Mux16~29_combout\ & ((\txt7[5]~input_o\))) # (!\Mux16~29_combout\ & (\txt6[5]~input_o\)))) # (!LUT_INDEX(2) & (((\Mux16~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(2),
	datab => \txt6[5]~input_o\,
	datac => \txt7[5]~input_o\,
	datad => \Mux16~29_combout\,
	combout => \Mux16~30_combout\);

-- Location: IOIBUF_X0_Y46_N22
\txt5[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt5(5),
	o => \txt5[5]~input_o\);

-- Location: IOIBUF_X0_Y34_N1
\txt4[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt4(5),
	o => \txt4[5]~input_o\);

-- Location: LCCOMB_X3_Y22_N26
\Mux16~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~31_combout\ = (LUT_INDEX(2)) # ((LUT_INDEX(0) & (\txt5[5]~input_o\)) # (!LUT_INDEX(0) & ((\txt4[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \txt5[5]~input_o\,
	datab => \txt4[5]~input_o\,
	datac => LUT_INDEX(2),
	datad => LUT_INDEX(0),
	combout => \Mux16~31_combout\);

-- Location: IOIBUF_X0_Y45_N15
\txt1[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt1(5),
	o => \txt1[5]~input_o\);

-- Location: LCCOMB_X3_Y22_N8
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (LUT_INDEX(3) & (LUT_INDEX(1))) # (!LUT_INDEX(3) & (\Mux16~0_combout\ & ((\txt1[5]~input_o\) # (!LUT_INDEX(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(1),
	datab => LUT_INDEX(3),
	datac => \txt1[5]~input_o\,
	datad => \Mux16~0_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X4_Y22_N8
\Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (LUT_INDEX(3) & ((\Mux2~4_combout\ & ((\Mux16~31_combout\))) # (!\Mux2~4_combout\ & (\Mux16~30_combout\)))) # (!LUT_INDEX(3) & (((\Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~30_combout\,
	datab => LUT_INDEX(3),
	datac => \Mux16~31_combout\,
	datad => \Mux2~4_combout\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X5_Y22_N6
\Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (LUT_INDEX(2) & ((LUT_INDEX(1) & (!LUT_INDEX(0))) # (!LUT_INDEX(1) & ((LUT_INDEX(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datab => LUT_INDEX(3),
	datac => LUT_INDEX(2),
	datad => LUT_INDEX(1),
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X5_Y22_N16
\Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\Mux2~6_combout\) # ((\Mux2~0_combout\ & ((LUT_DATA(5)) # (LUT_INDEX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_DATA(5),
	datab => LUT_INDEX(0),
	datac => \Mux2~0_combout\,
	datad => \Mux2~6_combout\,
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X4_Y22_N2
\LUT_DATA~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~8_combout\ = (\keded~input_o\ & (LUT_INDEX(4))) # (!\keded~input_o\ & ((LUT_INDEX(4) & (\Mux2~5_combout\)) # (!LUT_INDEX(4) & ((\Mux2~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keded~input_o\,
	datab => LUT_INDEX(4),
	datac => \Mux2~5_combout\,
	datad => \Mux2~7_combout\,
	combout => \LUT_DATA~8_combout\);

-- Location: LCCOMB_X3_Y22_N6
\LUT_DATA~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~9_combout\ = (\keded~input_o\ & ((\LUT_DATA~8_combout\ & (\Mux2~9_combout\)) # (!\LUT_DATA~8_combout\ & ((\Mux2~3_combout\))))) # (!\keded~input_o\ & (((\LUT_DATA~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~9_combout\,
	datab => \keded~input_o\,
	datac => \Mux2~3_combout\,
	datad => \LUT_DATA~8_combout\,
	combout => \LUT_DATA~9_combout\);

-- Location: LCCOMB_X3_Y22_N28
\LUT_DATA~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~10_combout\ = (LUT_INDEX(5)) # (\LUT_DATA~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => LUT_INDEX(5),
	datad => \LUT_DATA~9_combout\,
	combout => \LUT_DATA~10_combout\);

-- Location: FF_X3_Y22_N29
\LUT_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \LUT_DATA~10_combout\,
	ena => \LUT_DATA~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_DATA(5));

-- Location: LCCOMB_X3_Y21_N26
\mLCD_DATA~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_DATA~6_combout\ = (\iRST_N~input_o\ & LUT_DATA(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iRST_N~input_o\,
	datac => LUT_DATA(5),
	combout => \mLCD_DATA~6_combout\);

-- Location: FF_X3_Y21_N27
\mLCD_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_DATA~6_combout\,
	ena => \mLCD_DATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mLCD_DATA(5));

-- Location: IOIBUF_X9_Y0_N8
\value[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(14),
	o => \value[14]~input_o\);

-- Location: IOIBUF_X13_Y0_N22
\value[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(6),
	o => \value[6]~input_o\);

-- Location: LCCOMB_X4_Y20_N6
\Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (LUT_INDEX(0) & (((!LUT_INDEX(1) & \value[6]~input_o\)))) # (!LUT_INDEX(0) & ((\value[14]~input_o\) # ((LUT_INDEX(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datab => \value[14]~input_o\,
	datac => LUT_INDEX(1),
	datad => \value[6]~input_o\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X3_Y20_N30
\Mux10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~12_combout\ = (\Mux10~4_combout\ & (!LUT_INDEX(3) & (LUT_INDEX(2) $ (!LUT_INDEX(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~4_combout\,
	datab => LUT_INDEX(2),
	datac => LUT_INDEX(3),
	datad => LUT_INDEX(1),
	combout => \Mux10~12_combout\);

-- Location: IOIBUF_X0_Y15_N15
\index[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_index(6),
	o => \index[6]~input_o\);

-- Location: IOIBUF_X0_Y12_N15
\index[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_index(14),
	o => \index[14]~input_o\);

-- Location: LCCOMB_X3_Y20_N6
\Mux16~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~33_combout\ = (LUT_INDEX(0) & ((\index[6]~input_o\) # ((LUT_INDEX(2))))) # (!LUT_INDEX(0) & (((!LUT_INDEX(2) & \index[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index[6]~input_o\,
	datab => LUT_INDEX(0),
	datac => LUT_INDEX(2),
	datad => \index[14]~input_o\,
	combout => \Mux16~33_combout\);

-- Location: LCCOMB_X3_Y20_N10
\Mux16~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~32_combout\ = (LUT_DATA(6) & (!LUT_INDEX(0) & !LUT_INDEX(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => LUT_DATA(6),
	datac => LUT_INDEX(0),
	datad => LUT_INDEX(2),
	combout => \Mux16~32_combout\);

-- Location: LCCOMB_X3_Y20_N24
\Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (LUT_INDEX(1) & ((LUT_INDEX(2)) # ((LUT_INDEX(3))))) # (!LUT_INDEX(1) & (((!LUT_INDEX(3) & \Mux16~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(2),
	datab => LUT_INDEX(1),
	datac => LUT_INDEX(3),
	datad => \Mux16~32_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X3_Y20_N16
\Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (LUT_INDEX(3) & ((\Mux10~2_combout\ & (\Mux16~33_combout\)) # (!\Mux10~2_combout\ & ((!LUT_INDEX(0)))))) # (!LUT_INDEX(3) & (((\Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~33_combout\,
	datab => LUT_INDEX(0),
	datac => LUT_INDEX(3),
	datad => \Mux10~2_combout\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X3_Y20_N14
\LUT_DATA[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA[6]~5_combout\ = (LUT_INDEX(4) & (\Mux10~12_combout\)) # (!LUT_INDEX(4) & ((\Mux10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~12_combout\,
	datab => LUT_INDEX(4),
	datad => \Mux10~3_combout\,
	combout => \LUT_DATA[6]~5_combout\);

-- Location: LCCOMB_X3_Y20_N2
\Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (LUT_INDEX(1) & ((LUT_INDEX(3)) # ((\Mux16~0_combout\)))) # (!LUT_INDEX(1) & (!LUT_INDEX(3) & ((\Mux16~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(1),
	datab => LUT_INDEX(3),
	datac => \Mux16~0_combout\,
	datad => \Mux16~32_combout\,
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X3_Y20_N0
\Mux10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (LUT_INDEX(3) & (((LUT_INDEX(0) & \Mux10~5_combout\)) # (!LUT_INDEX(2)))) # (!LUT_INDEX(3) & (((\Mux10~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(2),
	datab => LUT_INDEX(0),
	datac => LUT_INDEX(3),
	datad => \Mux10~5_combout\,
	combout => \Mux10~6_combout\);

-- Location: IOIBUF_X3_Y0_N1
\txt5[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt5(6),
	o => \txt5[6]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\txt4[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt4(6),
	o => \txt4[6]~input_o\);

-- Location: LCCOMB_X3_Y20_N12
\Mux10~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~9_combout\ = (LUT_INDEX(1) & ((LUT_INDEX(0) & (\txt5[6]~input_o\)) # (!LUT_INDEX(0) & ((\txt4[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \txt5[6]~input_o\,
	datab => LUT_INDEX(0),
	datac => \txt4[6]~input_o\,
	datad => LUT_INDEX(1),
	combout => \Mux10~9_combout\);

-- Location: IOIBUF_X3_Y0_N15
\txt1[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt1(6),
	o => \txt1[6]~input_o\);

-- Location: LCCOMB_X3_Y20_N18
\Mux10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~8_combout\ = (!LUT_INDEX(3) & (((\txt1[6]~input_o\ & LUT_INDEX(1))) # (!\Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \txt1[6]~input_o\,
	datab => LUT_INDEX(3),
	datac => \Mux16~0_combout\,
	datad => LUT_INDEX(1),
	combout => \Mux10~8_combout\);

-- Location: LCCOMB_X3_Y20_N22
\Mux10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~10_combout\ = (\Mux10~8_combout\) # ((\Mux10~9_combout\ & !LUT_INDEX(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~9_combout\,
	datab => LUT_INDEX(2),
	datad => \Mux10~8_combout\,
	combout => \Mux10~10_combout\);

-- Location: IOIBUF_X1_Y0_N1
\txt6[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt6(6),
	o => \txt6[6]~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\txt7[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt7(6),
	o => \txt7[6]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\txt3[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt3(6),
	o => \txt3[6]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\txt2[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt2(6),
	o => \txt2[6]~input_o\);

-- Location: LCCOMB_X2_Y20_N12
\Mux16~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~35_combout\ = (LUT_INDEX(0) & ((\txt3[6]~input_o\) # ((LUT_INDEX(2))))) # (!LUT_INDEX(0) & (((\txt2[6]~input_o\ & !LUT_INDEX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \txt3[6]~input_o\,
	datab => LUT_INDEX(0),
	datac => \txt2[6]~input_o\,
	datad => LUT_INDEX(2),
	combout => \Mux16~35_combout\);

-- Location: LCCOMB_X2_Y20_N2
\Mux16~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~36_combout\ = (LUT_INDEX(2) & ((\Mux16~35_combout\ & ((\txt7[6]~input_o\))) # (!\Mux16~35_combout\ & (\txt6[6]~input_o\)))) # (!LUT_INDEX(2) & (((\Mux16~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \txt6[6]~input_o\,
	datab => LUT_INDEX(2),
	datac => \txt7[6]~input_o\,
	datad => \Mux16~35_combout\,
	combout => \Mux16~36_combout\);

-- Location: LCCOMB_X2_Y20_N8
\Mux10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~7_combout\ = (LUT_INDEX(3) & (!LUT_INDEX(1) & \Mux16~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(3),
	datac => LUT_INDEX(1),
	datad => \Mux16~36_combout\,
	combout => \Mux10~7_combout\);

-- Location: LCCOMB_X3_Y20_N4
\Mux10~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~11_combout\ = (LUT_INDEX(4) & (((\Mux10~10_combout\) # (\Mux10~7_combout\)))) # (!LUT_INDEX(4) & (\Mux10~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(4),
	datab => \Mux10~6_combout\,
	datac => \Mux10~10_combout\,
	datad => \Mux10~7_combout\,
	combout => \Mux10~11_combout\);

-- Location: FF_X3_Y20_N15
\LUT_DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \LUT_DATA[6]~5_combout\,
	asdata => \Mux10~11_combout\,
	sclr => LUT_INDEX(5),
	sload => \ALT_INV_keded~input_o\,
	ena => \LUT_DATA~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_DATA(6));

-- Location: LCCOMB_X3_Y21_N20
\mLCD_DATA~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_DATA~7_combout\ = (LUT_DATA(6) & \iRST_N~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => LUT_DATA(6),
	datac => \iRST_N~input_o\,
	combout => \mLCD_DATA~7_combout\);

-- Location: FF_X3_Y21_N21
\mLCD_DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_DATA~7_combout\,
	ena => \mLCD_DATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mLCD_DATA(6));

-- Location: LCCOMB_X2_Y21_N16
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (!LUT_INDEX(1) & ((LUT_INDEX(0) & ((LUT_INDEX(2)))) # (!LUT_INDEX(0) & (LUT_DATA(7) & !LUT_INDEX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datab => LUT_DATA(7),
	datac => LUT_INDEX(1),
	datad => LUT_INDEX(2),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X2_Y21_N22
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (!LUT_INDEX(3) & \Mux9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => LUT_INDEX(3),
	datad => \Mux9~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: IOIBUF_X0_Y32_N22
\txt1[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt1(7),
	o => \txt1[7]~input_o\);

-- Location: LCCOMB_X3_Y21_N4
\Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (LUT_INDEX(2) & (!LUT_INDEX(3) & ((\txt1[7]~input_o\) # (!LUT_INDEX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \txt1[7]~input_o\,
	datab => LUT_INDEX(0),
	datac => LUT_INDEX(2),
	datad => LUT_INDEX(3),
	combout => \Mux9~2_combout\);

-- Location: IOIBUF_X0_Y14_N8
\txt5[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt5(7),
	o => \txt5[7]~input_o\);

-- Location: IOIBUF_X0_Y32_N15
\txt4[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt4(7),
	o => \txt4[7]~input_o\);

-- Location: LCCOMB_X3_Y21_N10
\Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (!LUT_INDEX(2) & ((LUT_INDEX(0) & (\txt5[7]~input_o\)) # (!LUT_INDEX(0) & ((\txt4[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \txt5[7]~input_o\,
	datab => \txt4[7]~input_o\,
	datac => LUT_INDEX(2),
	datad => LUT_INDEX(0),
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X3_Y21_N8
\Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (LUT_INDEX(1) & ((\Mux9~2_combout\) # ((LUT_INDEX(3) & \Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(3),
	datab => LUT_INDEX(1),
	datac => \Mux9~2_combout\,
	datad => \Mux9~3_combout\,
	combout => \Mux9~4_combout\);

-- Location: IOIBUF_X0_Y28_N22
\txt6[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt6(7),
	o => \txt6[7]~input_o\);

-- Location: IOIBUF_X0_Y28_N15
\txt7[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt7(7),
	o => \txt7[7]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\txt2[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt2(7),
	o => \txt2[7]~input_o\);

-- Location: IOIBUF_X0_Y10_N15
\txt3[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_txt3(7),
	o => \txt3[7]~input_o\);

-- Location: LCCOMB_X3_Y21_N6
\Mux16~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~37_combout\ = (LUT_INDEX(2) & (((LUT_INDEX(0))))) # (!LUT_INDEX(2) & ((LUT_INDEX(0) & ((\txt3[7]~input_o\))) # (!LUT_INDEX(0) & (\txt2[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \txt2[7]~input_o\,
	datab => \txt3[7]~input_o\,
	datac => LUT_INDEX(2),
	datad => LUT_INDEX(0),
	combout => \Mux16~37_combout\);

-- Location: LCCOMB_X3_Y21_N24
\Mux16~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~38_combout\ = (LUT_INDEX(2) & ((\Mux16~37_combout\ & ((\txt7[7]~input_o\))) # (!\Mux16~37_combout\ & (\txt6[7]~input_o\)))) # (!LUT_INDEX(2) & (((\Mux16~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \txt6[7]~input_o\,
	datab => \txt7[7]~input_o\,
	datac => LUT_INDEX(2),
	datad => \Mux16~37_combout\,
	combout => \Mux16~38_combout\);

-- Location: LCCOMB_X3_Y21_N18
\Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\Mux9~4_combout\) # ((LUT_INDEX(3) & (!LUT_INDEX(1) & \Mux16~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(3),
	datab => LUT_INDEX(1),
	datac => \Mux9~4_combout\,
	datad => \Mux16~38_combout\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X2_Y21_N2
\LUT_DATA[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA[7]~6_combout\ = (LUT_INDEX(4) & ((\Mux9~5_combout\))) # (!LUT_INDEX(4) & (\Mux9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~1_combout\,
	datab => LUT_INDEX(4),
	datad => \Mux9~5_combout\,
	combout => \LUT_DATA[7]~6_combout\);

-- Location: IOIBUF_X0_Y17_N15
\index[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_index(15),
	o => \index[15]~input_o\);

-- Location: IOIBUF_X0_Y24_N15
\index[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_index(7),
	o => \index[7]~input_o\);

-- Location: LCCOMB_X2_Y21_N0
\Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = (LUT_INDEX(1) & ((LUT_INDEX(0) & ((\index[7]~input_o\))) # (!LUT_INDEX(0) & (\index[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datab => \index[15]~input_o\,
	datac => LUT_INDEX(1),
	datad => \index[7]~input_o\,
	combout => \Mux9~6_combout\);

-- Location: LCCOMB_X2_Y21_N18
\Mux16~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~34_combout\ = LUT_INDEX(1) $ (LUT_INDEX(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => LUT_INDEX(1),
	datad => LUT_INDEX(2),
	combout => \Mux16~34_combout\);

-- Location: IOIBUF_X0_Y18_N22
\value[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(7),
	o => \value[7]~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\value[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(15),
	o => \value[15]~input_o\);

-- Location: LCCOMB_X2_Y21_N14
\Mux9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~7_combout\ = (LUT_INDEX(0) & (\value[7]~input_o\ & (!LUT_INDEX(1)))) # (!LUT_INDEX(0) & (((LUT_INDEX(1)) # (\value[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datab => \value[7]~input_o\,
	datac => LUT_INDEX(1),
	datad => \value[15]~input_o\,
	combout => \Mux9~7_combout\);

-- Location: LCCOMB_X2_Y21_N20
\Mux9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~8_combout\ = (LUT_INDEX(4) & (!\Mux16~34_combout\ & (\Mux9~7_combout\))) # (!LUT_INDEX(4) & (((\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(4),
	datab => \Mux16~34_combout\,
	datac => \Mux9~7_combout\,
	datad => \Mux9~0_combout\,
	combout => \Mux9~8_combout\);

-- Location: LCCOMB_X2_Y21_N26
\Mux9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~9_combout\ = (\Mux14~7_combout\ & ((\Mux9~6_combout\) # ((!LUT_INDEX(3) & \Mux9~8_combout\)))) # (!\Mux14~7_combout\ & (((!LUT_INDEX(3) & \Mux9~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~7_combout\,
	datab => \Mux9~6_combout\,
	datac => LUT_INDEX(3),
	datad => \Mux9~8_combout\,
	combout => \Mux9~9_combout\);

-- Location: FF_X2_Y21_N3
\LUT_DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \LUT_DATA[7]~6_combout\,
	asdata => \Mux9~9_combout\,
	sclr => LUT_INDEX(5),
	sload => \keded~input_o\,
	ena => \LUT_DATA~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_DATA(7));

-- Location: LCCOMB_X3_Y21_N14
\mLCD_DATA~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_DATA~8_combout\ = (LUT_DATA(7) & \iRST_N~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => LUT_DATA(7),
	datac => \iRST_N~input_o\,
	combout => \mLCD_DATA~8_combout\);

-- Location: FF_X3_Y21_N15
\mLCD_DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_DATA~8_combout\,
	ena => \mLCD_DATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mLCD_DATA(7));

-- Location: LCCOMB_X1_Y20_N16
\u0|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector3~0_combout\ = (\u0|ST.01~q\) # ((\u0|LCD_EN~q\ & ((\u0|ST.10~q\) # (!\u0|ST.00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ST.10~q\,
	datab => \u0|ST.01~q\,
	datac => \u0|LCD_EN~q\,
	datad => \u0|ST.00~q\,
	combout => \u0|Selector3~0_combout\);

-- Location: FF_X1_Y20_N17
\u0|LCD_EN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \u0|Selector3~0_combout\,
	clrn => \iRST_N~inputclkctrl_outclk\,
	ena => \u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|LCD_EN~q\);

-- Location: LCCOMB_X2_Y19_N26
\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (LUT_INDEX(3)) # ((LUT_INDEX(2) & LUT_INDEX(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(2),
	datac => LUT_INDEX(3),
	datad => LUT_INDEX(1),
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X2_Y19_N12
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (LUT_INDEX(0)) # ((LUT_INDEX(3)) # (LUT_INDEX(2) $ (LUT_INDEX(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(2),
	datab => LUT_INDEX(0),
	datac => LUT_INDEX(3),
	datad => LUT_INDEX(1),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X2_Y19_N0
\Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (LUT_INDEX(5) & ((LUT_DATA(8)) # ((!LUT_INDEX(4) & !\Mux8~0_combout\)))) # (!LUT_INDEX(5) & ((LUT_INDEX(4) & ((\Mux8~0_combout\))) # (!LUT_INDEX(4) & (LUT_DATA(8) & !\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(4),
	datab => LUT_INDEX(5),
	datac => LUT_DATA(8),
	datad => \Mux8~0_combout\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X2_Y19_N14
\Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\Mux8~2_combout\) # ((\Mux8~1_combout\ & (!LUT_INDEX(5) & !LUT_INDEX(4))) # (!\Mux8~1_combout\ & (LUT_INDEX(5) $ (LUT_INDEX(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => LUT_INDEX(5),
	datac => LUT_INDEX(4),
	datad => \Mux8~2_combout\,
	combout => \Mux8~3_combout\);

-- Location: FF_X2_Y19_N15
\LUT_DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Mux8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_DATA(8));

-- Location: LCCOMB_X3_Y21_N0
\mLCD_RS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_RS~0_combout\ = (\iRST_N~input_o\ & LUT_DATA(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iRST_N~input_o\,
	datad => LUT_DATA(8),
	combout => \mLCD_RS~0_combout\);

-- Location: FF_X3_Y21_N1
mLCD_RS : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_RS~0_combout\,
	ena => \mLCD_DATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mLCD_RS~q\);

ww_LCD_DATA(0) <= \LCD_DATA[0]~output_o\;

ww_LCD_DATA(1) <= \LCD_DATA[1]~output_o\;

ww_LCD_DATA(2) <= \LCD_DATA[2]~output_o\;

ww_LCD_DATA(3) <= \LCD_DATA[3]~output_o\;

ww_LCD_DATA(4) <= \LCD_DATA[4]~output_o\;

ww_LCD_DATA(5) <= \LCD_DATA[5]~output_o\;

ww_LCD_DATA(6) <= \LCD_DATA[6]~output_o\;

ww_LCD_DATA(7) <= \LCD_DATA[7]~output_o\;

ww_LCD_RW <= \LCD_RW~output_o\;

ww_LCD_EN <= \LCD_EN~output_o\;

ww_LCD_RS <= \LCD_RS~output_o\;
END structure;


