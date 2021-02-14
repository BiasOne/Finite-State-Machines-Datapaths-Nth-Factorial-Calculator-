-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "10/22/2020 18:31:45"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_level IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	go : IN std_logic;
	switch : IN std_logic_vector(9 DOWNTO 0);
	button : IN std_logic_vector(1 DOWNTO 0);
	led0 : BUFFER std_logic_vector(6 DOWNTO 0);
	led0_dp : BUFFER std_logic;
	led1 : BUFFER std_logic_vector(6 DOWNTO 0);
	led1_dp : BUFFER std_logic;
	led2 : BUFFER std_logic_vector(6 DOWNTO 0);
	led2_dp : BUFFER std_logic;
	led3 : BUFFER std_logic_vector(6 DOWNTO 0);
	led3_dp : BUFFER std_logic;
	led4 : BUFFER std_logic_vector(6 DOWNTO 0);
	led4_dp : BUFFER std_logic;
	led5 : BUFFER std_logic_vector(6 DOWNTO 0);
	led5_dp : BUFFER std_logic;
	ledr0 : BUFFER std_logic
	);
END top_level;

-- Design Ports Information
-- rst	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- go	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[1]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0_dp	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1_dp	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2_dp	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3_dp	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4_dp	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5_dp	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr0	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[8]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[9]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_go : std_logic;
SIGNAL ww_switch : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_button : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_led0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led0_dp : std_logic;
SIGNAL ww_led1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led1_dp : std_logic;
SIGNAL ww_led2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led2_dp : std_logic;
SIGNAL ww_led3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led3_dp : std_logic;
SIGNAL ww_led4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led4_dp : std_logic;
SIGNAL ww_led5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led5_dp : std_logic;
SIGNAL ww_ledr0 : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \go~input_o\ : std_logic;
SIGNAL \switch[3]~input_o\ : std_logic;
SIGNAL \switch[4]~input_o\ : std_logic;
SIGNAL \switch[5]~input_o\ : std_logic;
SIGNAL \switch[6]~input_o\ : std_logic;
SIGNAL \switch[7]~input_o\ : std_logic;
SIGNAL \button[0]~input_o\ : std_logic;
SIGNAL \button[1]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \led0[0]~output_o\ : std_logic;
SIGNAL \led0[1]~output_o\ : std_logic;
SIGNAL \led0[2]~output_o\ : std_logic;
SIGNAL \led0[3]~output_o\ : std_logic;
SIGNAL \led0[4]~output_o\ : std_logic;
SIGNAL \led0[5]~output_o\ : std_logic;
SIGNAL \led0[6]~output_o\ : std_logic;
SIGNAL \led0_dp~output_o\ : std_logic;
SIGNAL \led1[0]~output_o\ : std_logic;
SIGNAL \led1[1]~output_o\ : std_logic;
SIGNAL \led1[2]~output_o\ : std_logic;
SIGNAL \led1[3]~output_o\ : std_logic;
SIGNAL \led1[4]~output_o\ : std_logic;
SIGNAL \led1[5]~output_o\ : std_logic;
SIGNAL \led1[6]~output_o\ : std_logic;
SIGNAL \led1_dp~output_o\ : std_logic;
SIGNAL \led2[0]~output_o\ : std_logic;
SIGNAL \led2[1]~output_o\ : std_logic;
SIGNAL \led2[2]~output_o\ : std_logic;
SIGNAL \led2[3]~output_o\ : std_logic;
SIGNAL \led2[4]~output_o\ : std_logic;
SIGNAL \led2[5]~output_o\ : std_logic;
SIGNAL \led2[6]~output_o\ : std_logic;
SIGNAL \led2_dp~output_o\ : std_logic;
SIGNAL \led3[0]~output_o\ : std_logic;
SIGNAL \led3[1]~output_o\ : std_logic;
SIGNAL \led3[2]~output_o\ : std_logic;
SIGNAL \led3[3]~output_o\ : std_logic;
SIGNAL \led3[4]~output_o\ : std_logic;
SIGNAL \led3[5]~output_o\ : std_logic;
SIGNAL \led3[6]~output_o\ : std_logic;
SIGNAL \led3_dp~output_o\ : std_logic;
SIGNAL \led4[0]~output_o\ : std_logic;
SIGNAL \led4[1]~output_o\ : std_logic;
SIGNAL \led4[2]~output_o\ : std_logic;
SIGNAL \led4[3]~output_o\ : std_logic;
SIGNAL \led4[4]~output_o\ : std_logic;
SIGNAL \led4[5]~output_o\ : std_logic;
SIGNAL \led4[6]~output_o\ : std_logic;
SIGNAL \led4_dp~output_o\ : std_logic;
SIGNAL \led5[0]~output_o\ : std_logic;
SIGNAL \led5[1]~output_o\ : std_logic;
SIGNAL \led5[2]~output_o\ : std_logic;
SIGNAL \led5[3]~output_o\ : std_logic;
SIGNAL \led5[4]~output_o\ : std_logic;
SIGNAL \led5[5]~output_o\ : std_logic;
SIGNAL \led5[6]~output_o\ : std_logic;
SIGNAL \led5_dp~output_o\ : std_logic;
SIGNAL \ledr0~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \switch[8]~input_o\ : std_logic;
SIGNAL \factorial_1|state.LOOP_COND~feeder_combout\ : std_logic;
SIGNAL \factorial_1|state.LOOP_COND~q\ : std_logic;
SIGNAL \switch[0]~input_o\ : std_logic;
SIGNAL \factorial_1|Add0~0_combout\ : std_logic;
SIGNAL \factorial_1|Add0~47_combout\ : std_logic;
SIGNAL \factorial_1|regN[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \switch[2]~input_o\ : std_logic;
SIGNAL \switch[1]~input_o\ : std_logic;
SIGNAL \factorial_1|Add0~1\ : std_logic;
SIGNAL \factorial_1|Add0~2_combout\ : std_logic;
SIGNAL \factorial_1|Add0~46_combout\ : std_logic;
SIGNAL \factorial_1|regN[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \factorial_1|Add0~3\ : std_logic;
SIGNAL \factorial_1|Add0~4_combout\ : std_logic;
SIGNAL \factorial_1|Add0~45_combout\ : std_logic;
SIGNAL \factorial_1|regN[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \factorial_1|Add0~5\ : std_logic;
SIGNAL \factorial_1|Add0~6_combout\ : std_logic;
SIGNAL \factorial_1|Add0~44_combout\ : std_logic;
SIGNAL \factorial_1|regN[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \factorial_1|LessThan0~3_combout\ : std_logic;
SIGNAL \factorial_1|Add0~7\ : std_logic;
SIGNAL \factorial_1|Add0~8_combout\ : std_logic;
SIGNAL \factorial_1|Add0~43_combout\ : std_logic;
SIGNAL \factorial_1|regN[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \factorial_1|Add0~9\ : std_logic;
SIGNAL \factorial_1|Add0~10_combout\ : std_logic;
SIGNAL \factorial_1|Add0~42_combout\ : std_logic;
SIGNAL \factorial_1|regN[5]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \factorial_1|regN[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \factorial_1|Add0~11\ : std_logic;
SIGNAL \factorial_1|Add0~12_combout\ : std_logic;
SIGNAL \factorial_1|Add0~41_combout\ : std_logic;
SIGNAL \factorial_1|regN[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \factorial_1|Add0~13\ : std_logic;
SIGNAL \factorial_1|Add0~14_combout\ : std_logic;
SIGNAL \factorial_1|Add0~40_combout\ : std_logic;
SIGNAL \factorial_1|regN[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \factorial_1|LessThan0~2_combout\ : std_logic;
SIGNAL \factorial_1|Add0~15\ : std_logic;
SIGNAL \factorial_1|Add0~16_combout\ : std_logic;
SIGNAL \factorial_1|Add0~39_combout\ : std_logic;
SIGNAL \factorial_1|regN[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \factorial_1|Add0~17\ : std_logic;
SIGNAL \factorial_1|Add0~18_combout\ : std_logic;
SIGNAL \factorial_1|Add0~38_combout\ : std_logic;
SIGNAL \factorial_1|regN[9]~_Duplicate_1_q\ : std_logic;
SIGNAL \factorial_1|Add0~19\ : std_logic;
SIGNAL \factorial_1|Add0~20_combout\ : std_logic;
SIGNAL \factorial_1|Add0~37_combout\ : std_logic;
SIGNAL \factorial_1|regN[10]~_Duplicate_1_q\ : std_logic;
SIGNAL \factorial_1|Add0~21\ : std_logic;
SIGNAL \factorial_1|Add0~22_combout\ : std_logic;
SIGNAL \factorial_1|Add0~36_combout\ : std_logic;
SIGNAL \factorial_1|regN[11]~_Duplicate_1_q\ : std_logic;
SIGNAL \factorial_1|Add0~23\ : std_logic;
SIGNAL \factorial_1|Add0~24_combout\ : std_logic;
SIGNAL \factorial_1|Add0~35_combout\ : std_logic;
SIGNAL \factorial_1|regN[12]~_Duplicate_1_q\ : std_logic;
SIGNAL \factorial_1|Add0~25\ : std_logic;
SIGNAL \factorial_1|Add0~26_combout\ : std_logic;
SIGNAL \factorial_1|Add0~34_combout\ : std_logic;
SIGNAL \factorial_1|regN[13]~_Duplicate_1_q\ : std_logic;
SIGNAL \factorial_1|Add0~27\ : std_logic;
SIGNAL \factorial_1|Add0~28_combout\ : std_logic;
SIGNAL \factorial_1|Add0~33_combout\ : std_logic;
SIGNAL \factorial_1|regN[14]~_Duplicate_1_q\ : std_logic;
SIGNAL \factorial_1|Add0~29\ : std_logic;
SIGNAL \factorial_1|Add0~30_combout\ : std_logic;
SIGNAL \factorial_1|Add0~32_combout\ : std_logic;
SIGNAL \factorial_1|regN[15]~_Duplicate_1_q\ : std_logic;
SIGNAL \factorial_1|LessThan0~0_combout\ : std_logic;
SIGNAL \factorial_1|LessThan0~1_combout\ : std_logic;
SIGNAL \factorial_1|LessThan0~4_combout\ : std_logic;
SIGNAL \factorial_1|state~13_combout\ : std_logic;
SIGNAL \factorial_1|state.LOOP_BODY~q\ : std_logic;
SIGNAL \factorial_1|state~10_combout\ : std_logic;
SIGNAL \factorial_1|state.OUTPUTMATH~q\ : std_logic;
SIGNAL \switch[9]~input_o\ : std_logic;
SIGNAL \factorial_1|Selector2~0_combout\ : std_logic;
SIGNAL \factorial_1|state.FINISH~q\ : std_logic;
SIGNAL \factorial_1|Selector1~0_combout\ : std_logic;
SIGNAL \factorial_1|state.START~q\ : std_logic;
SIGNAL \factorial_1|state~12_combout\ : std_logic;
SIGNAL \factorial_1|state.LOAD~q\ : std_logic;
SIGNAL \factorial_1|state~11_combout\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \factorial_1|Selector18~0_combout\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \factorial_1|output[0]~feeder_combout\ : std_logic;
SIGNAL \factorial_1|output[1]~feeder_combout\ : std_logic;
SIGNAL \U_LED2|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux0~0_combout\ : std_logic;
SIGNAL \factorial_1|output[6]~feeder_combout\ : std_logic;
SIGNAL \factorial_1|output[5]~feeder_combout\ : std_logic;
SIGNAL \U_LED3|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux0~0_combout\ : std_logic;
SIGNAL \factorial_1|output[11]~feeder_combout\ : std_logic;
SIGNAL \U_LED4|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED4|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED4|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED4|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED4|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED4|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED4|Mux0~0_combout\ : std_logic;
SIGNAL \factorial_1|output[14]~feeder_combout\ : std_logic;
SIGNAL \factorial_1|output[12]~feeder_combout\ : std_logic;
SIGNAL \U_LED5|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED5|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED5|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED5|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED5|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED5|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED5|Mux0~0_combout\ : std_logic;
SIGNAL \factorial_1|Selector0~0_combout\ : std_logic;
SIGNAL \factorial_1|done~q\ : std_logic;
SIGNAL \factorial_1|tempFact\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \factorial_1|output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_switch[8]~input_o\ : std_logic;
SIGNAL \factorial_1|ALT_INV_state.LOOP_BODY~q\ : std_logic;
SIGNAL \U_LED5|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U_LED4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U_LED3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U_LED2|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_go <= go;
ww_switch <= switch;
ww_button <= button;
led0 <= ww_led0;
led0_dp <= ww_led0_dp;
led1 <= ww_led1;
led1_dp <= ww_led1_dp;
led2 <= ww_led2;
led2_dp <= ww_led2_dp;
led3 <= ww_led3;
led3_dp <= ww_led3_dp;
led4 <= ww_led4;
led4_dp <= ww_led4_dp;
led5 <= ww_led5;
led5_dp <= ww_led5_dp;
ledr0 <= ww_ledr0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\factorial_1|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT31\ & \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT30\ & \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT29\ & 
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT28\ & \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT27\ & \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT26\ & \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT25\ & 
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT24\ & \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT23\ & \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT22\ & \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT21\ & 
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT20\ & \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT19\ & \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT18\ & \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT17\ & 
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT13\ & 
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT9\ & 
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT5\ & 
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT1\ & 
\factorial_1|Mult0|auto_generated|mac_mult1~dataout\ & \factorial_1|Mult0|auto_generated|mac_mult1~3\ & \factorial_1|Mult0|auto_generated|mac_mult1~2\ & \factorial_1|Mult0|auto_generated|mac_mult1~1\ & \factorial_1|Mult0|auto_generated|mac_mult1~0\);

\factorial_1|Mult0|auto_generated|mac_out2~0\ <= \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\factorial_1|Mult0|auto_generated|mac_out2~1\ <= \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\factorial_1|Mult0|auto_generated|mac_out2~2\ <= \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\factorial_1|Mult0|auto_generated|mac_out2~3\ <= \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\factorial_1|Mult0|auto_generated|mac_out2~dataout\ <= \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\factorial_1|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\factorial_1|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\factorial_1|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\factorial_1|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\factorial_1|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\factorial_1|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\factorial_1|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\factorial_1|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\factorial_1|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\factorial_1|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\factorial_1|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\factorial_1|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\factorial_1|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\factorial_1|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\factorial_1|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\factorial_1|Mult0|auto_generated|mac_out2~DATAOUT16\ <= \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\factorial_1|Mult0|auto_generated|mac_out2~DATAOUT17\ <= \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\factorial_1|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\factorial_1|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\factorial_1|Mult0|auto_generated|mac_out2~DATAOUT20\ <= \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\factorial_1|Mult0|auto_generated|mac_out2~DATAOUT21\ <= \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\factorial_1|Mult0|auto_generated|mac_out2~DATAOUT22\ <= \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\factorial_1|Mult0|auto_generated|mac_out2~DATAOUT23\ <= \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\factorial_1|Mult0|auto_generated|mac_out2~DATAOUT24\ <= \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\factorial_1|Mult0|auto_generated|mac_out2~DATAOUT25\ <= \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\factorial_1|Mult0|auto_generated|mac_out2~DATAOUT26\ <= \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\factorial_1|Mult0|auto_generated|mac_out2~DATAOUT27\ <= \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\factorial_1|Mult0|auto_generated|mac_out2~DATAOUT28\ <= \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\factorial_1|Mult0|auto_generated|mac_out2~DATAOUT29\ <= \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\factorial_1|Mult0|auto_generated|mac_out2~DATAOUT30\ <= \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\factorial_1|Mult0|auto_generated|mac_out2~DATAOUT31\ <= \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\factorial_1|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\factorial_1|tempFact\(15) & \factorial_1|tempFact\(14) & \factorial_1|tempFact\(13) & \factorial_1|tempFact\(12) & \factorial_1|tempFact\(11) & \factorial_1|tempFact\(10) & 
\factorial_1|tempFact\(9) & \factorial_1|tempFact\(8) & \factorial_1|tempFact\(7) & \factorial_1|tempFact\(6) & \factorial_1|tempFact\(5) & \factorial_1|tempFact\(4) & \factorial_1|tempFact\(3) & \factorial_1|tempFact\(2) & 
\factorial_1|tempFact\(1) & \factorial_1|tempFact\(0) & gnd & gnd);

\factorial_1|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\factorial_1|Add0~32_combout\ & \factorial_1|Add0~33_combout\ & \factorial_1|Add0~34_combout\ & \factorial_1|Add0~35_combout\ & \factorial_1|Add0~36_combout\ & \factorial_1|Add0~37_combout\ & 
\factorial_1|Add0~38_combout\ & \factorial_1|Add0~39_combout\ & \factorial_1|Add0~40_combout\ & \factorial_1|Add0~41_combout\ & \factorial_1|Add0~42_combout\ & \factorial_1|Add0~43_combout\ & \factorial_1|Add0~44_combout\ & \factorial_1|Add0~45_combout\
& \factorial_1|Add0~46_combout\ & \factorial_1|Add0~47_combout\ & gnd & gnd);

\factorial_1|Mult0|auto_generated|mac_mult1~0\ <= \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\factorial_1|Mult0|auto_generated|mac_mult1~1\ <= \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\factorial_1|Mult0|auto_generated|mac_mult1~2\ <= \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\factorial_1|Mult0|auto_generated|mac_mult1~3\ <= \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\factorial_1|Mult0|auto_generated|mac_mult1~dataout\ <= \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT28\ <= \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT29\ <= \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT30\ <= \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\factorial_1|Mult0|auto_generated|mac_mult1~DATAOUT31\ <= \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_switch[8]~input_o\ <= NOT \switch[8]~input_o\;
\factorial_1|ALT_INV_state.LOOP_BODY~q\ <= NOT \factorial_1|state.LOOP_BODY~q\;
\U_LED5|ALT_INV_Mux0~0_combout\ <= NOT \U_LED5|Mux0~0_combout\;
\U_LED4|ALT_INV_Mux0~0_combout\ <= NOT \U_LED4|Mux0~0_combout\;
\U_LED3|ALT_INV_Mux0~0_combout\ <= NOT \U_LED3|Mux0~0_combout\;
\U_LED2|ALT_INV_Mux0~0_combout\ <= NOT \U_LED2|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y50_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X58_Y54_N16
\led0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led0[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\led0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led0[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\led0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led0[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\led0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led0[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\led0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led0[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\led0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\led0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led0[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\led0_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led0_dp~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\led1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led1[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\led1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led1[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\led1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led1[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\led1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led1[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\led1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led1[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\led1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led1[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\led1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led1[6]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\led1_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led1_dp~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\led2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \led2[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\led2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \led2[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\led2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \led2[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\led2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \led2[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\led2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \led2[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\led2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \led2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\led2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \led2[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\led2_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led2_dp~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\led3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \led3[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\led3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \led3[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\led3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \led3[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\led3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \led3[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\led3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \led3[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\led3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \led3[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\led3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \led3[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\led3_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led3_dp~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\led4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \led4[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\led4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \led4[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\led4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \led4[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\led4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \led4[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\led4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \led4[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\led4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \led4[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\led4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED4|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \led4[6]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\led4_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led4_dp~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\led5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED5|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \led5[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\led5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED5|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \led5[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\led5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED5|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \led5[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\led5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED5|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \led5[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\led5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED5|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \led5[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\led5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED5|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \led5[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\led5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED5|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \led5[6]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\led5_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led5_dp~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\ledr0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \factorial_1|done~q\,
	devoe => ww_devoe,
	o => \ledr0~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X56_Y54_N1
\switch[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(8),
	o => \switch[8]~input_o\);

-- Location: LCCOMB_X69_Y50_N18
\factorial_1|state.LOOP_COND~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|state.LOOP_COND~feeder_combout\ = \factorial_1|state~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \factorial_1|state~11_combout\,
	combout => \factorial_1|state.LOOP_COND~feeder_combout\);

-- Location: FF_X69_Y50_N19
\factorial_1|state.LOOP_COND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \factorial_1|state.LOOP_COND~feeder_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|state.LOOP_COND~q\);

-- Location: IOIBUF_X51_Y54_N29
\switch[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(0),
	o => \switch[0]~input_o\);

-- Location: LCCOMB_X70_Y50_N0
\factorial_1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|Add0~0_combout\ = \factorial_1|regN[0]~_Duplicate_1_q\ $ (VCC)
-- \factorial_1|Add0~1\ = CARRY(\factorial_1|regN[0]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \factorial_1|regN[0]~_Duplicate_1_q\,
	datad => VCC,
	combout => \factorial_1|Add0~0_combout\,
	cout => \factorial_1|Add0~1\);

-- Location: LCCOMB_X69_Y50_N28
\factorial_1|Add0~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|Add0~47_combout\ = (\factorial_1|state.LOOP_BODY~q\ & ((\factorial_1|Add0~0_combout\))) # (!\factorial_1|state.LOOP_BODY~q\ & (\switch[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \factorial_1|state.LOOP_BODY~q\,
	datac => \factorial_1|Add0~0_combout\,
	combout => \factorial_1|Add0~47_combout\);

-- Location: FF_X69_Y50_N29
\factorial_1|regN[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \factorial_1|Add0~47_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \factorial_1|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|regN[0]~_Duplicate_1_q\);

-- Location: IOIBUF_X51_Y54_N1
\switch[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(2),
	o => \switch[2]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\switch[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(1),
	o => \switch[1]~input_o\);

-- Location: LCCOMB_X70_Y50_N2
\factorial_1|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|Add0~2_combout\ = (\factorial_1|regN[1]~_Duplicate_1_q\ & (\factorial_1|Add0~1\ & VCC)) # (!\factorial_1|regN[1]~_Duplicate_1_q\ & (!\factorial_1|Add0~1\))
-- \factorial_1|Add0~3\ = CARRY((!\factorial_1|regN[1]~_Duplicate_1_q\ & !\factorial_1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|regN[1]~_Duplicate_1_q\,
	datad => VCC,
	cin => \factorial_1|Add0~1\,
	combout => \factorial_1|Add0~2_combout\,
	cout => \factorial_1|Add0~3\);

-- Location: LCCOMB_X71_Y50_N6
\factorial_1|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|Add0~46_combout\ = (\factorial_1|state.LOOP_BODY~q\ & ((\factorial_1|Add0~2_combout\))) # (!\factorial_1|state.LOOP_BODY~q\ & (\switch[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|state.LOOP_BODY~q\,
	datab => \switch[1]~input_o\,
	datad => \factorial_1|Add0~2_combout\,
	combout => \factorial_1|Add0~46_combout\);

-- Location: FF_X71_Y50_N7
\factorial_1|regN[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \factorial_1|Add0~46_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \factorial_1|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|regN[1]~_Duplicate_1_q\);

-- Location: LCCOMB_X70_Y50_N4
\factorial_1|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|Add0~4_combout\ = (\factorial_1|regN[2]~_Duplicate_1_q\ & ((GND) # (!\factorial_1|Add0~3\))) # (!\factorial_1|regN[2]~_Duplicate_1_q\ & (\factorial_1|Add0~3\ $ (GND)))
-- \factorial_1|Add0~5\ = CARRY((\factorial_1|regN[2]~_Duplicate_1_q\) # (!\factorial_1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|regN[2]~_Duplicate_1_q\,
	datad => VCC,
	cin => \factorial_1|Add0~3\,
	combout => \factorial_1|Add0~4_combout\,
	cout => \factorial_1|Add0~5\);

-- Location: LCCOMB_X71_Y50_N4
\factorial_1|Add0~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|Add0~45_combout\ = (\factorial_1|state.LOOP_BODY~q\ & ((\factorial_1|Add0~4_combout\))) # (!\factorial_1|state.LOOP_BODY~q\ & (\switch[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[2]~input_o\,
	datac => \factorial_1|Add0~4_combout\,
	datad => \factorial_1|state.LOOP_BODY~q\,
	combout => \factorial_1|Add0~45_combout\);

-- Location: FF_X71_Y50_N5
\factorial_1|regN[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \factorial_1|Add0~45_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \factorial_1|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|regN[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X70_Y50_N6
\factorial_1|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|Add0~6_combout\ = (\factorial_1|regN[3]~_Duplicate_1_q\ & (\factorial_1|Add0~5\ & VCC)) # (!\factorial_1|regN[3]~_Duplicate_1_q\ & (!\factorial_1|Add0~5\))
-- \factorial_1|Add0~7\ = CARRY((!\factorial_1|regN[3]~_Duplicate_1_q\ & !\factorial_1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \factorial_1|regN[3]~_Duplicate_1_q\,
	datad => VCC,
	cin => \factorial_1|Add0~5\,
	combout => \factorial_1|Add0~6_combout\,
	cout => \factorial_1|Add0~7\);

-- Location: LCCOMB_X71_Y50_N8
\factorial_1|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|Add0~44_combout\ = (\factorial_1|Add0~6_combout\ & \factorial_1|state.LOOP_BODY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \factorial_1|Add0~6_combout\,
	datad => \factorial_1|state.LOOP_BODY~q\,
	combout => \factorial_1|Add0~44_combout\);

-- Location: FF_X71_Y50_N11
\factorial_1|regN[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \factorial_1|Add0~44_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => VCC,
	ena => \factorial_1|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|regN[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X71_Y50_N10
\factorial_1|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|LessThan0~3_combout\ = (\factorial_1|regN[0]~_Duplicate_1_q\) # ((\factorial_1|regN[2]~_Duplicate_1_q\) # ((\factorial_1|regN[3]~_Duplicate_1_q\) # (\factorial_1|regN[1]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|regN[0]~_Duplicate_1_q\,
	datab => \factorial_1|regN[2]~_Duplicate_1_q\,
	datac => \factorial_1|regN[3]~_Duplicate_1_q\,
	datad => \factorial_1|regN[1]~_Duplicate_1_q\,
	combout => \factorial_1|LessThan0~3_combout\);

-- Location: LCCOMB_X70_Y50_N8
\factorial_1|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|Add0~8_combout\ = (\factorial_1|regN[4]~_Duplicate_1_q\ & ((GND) # (!\factorial_1|Add0~7\))) # (!\factorial_1|regN[4]~_Duplicate_1_q\ & (\factorial_1|Add0~7\ $ (GND)))
-- \factorial_1|Add0~9\ = CARRY((\factorial_1|regN[4]~_Duplicate_1_q\) # (!\factorial_1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \factorial_1|regN[4]~_Duplicate_1_q\,
	datad => VCC,
	cin => \factorial_1|Add0~7\,
	combout => \factorial_1|Add0~8_combout\,
	cout => \factorial_1|Add0~9\);

-- Location: LCCOMB_X71_Y50_N14
\factorial_1|Add0~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|Add0~43_combout\ = (\factorial_1|state.LOOP_BODY~q\ & \factorial_1|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|state.LOOP_BODY~q\,
	datac => \factorial_1|Add0~8_combout\,
	combout => \factorial_1|Add0~43_combout\);

-- Location: FF_X71_Y50_N9
\factorial_1|regN[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \factorial_1|Add0~43_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => VCC,
	ena => \factorial_1|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|regN[4]~_Duplicate_1_q\);

-- Location: LCCOMB_X70_Y50_N10
\factorial_1|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|Add0~10_combout\ = (\factorial_1|regN[5]~_Duplicate_1_q\ & (\factorial_1|Add0~9\ & VCC)) # (!\factorial_1|regN[5]~_Duplicate_1_q\ & (!\factorial_1|Add0~9\))
-- \factorial_1|Add0~11\ = CARRY((!\factorial_1|regN[5]~_Duplicate_1_q\ & !\factorial_1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \factorial_1|regN[5]~_Duplicate_1_q\,
	datad => VCC,
	cin => \factorial_1|Add0~9\,
	combout => \factorial_1|Add0~10_combout\,
	cout => \factorial_1|Add0~11\);

-- Location: LCCOMB_X71_Y50_N12
\factorial_1|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|Add0~42_combout\ = (\factorial_1|state.LOOP_BODY~q\ & \factorial_1|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|state.LOOP_BODY~q\,
	datad => \factorial_1|Add0~10_combout\,
	combout => \factorial_1|Add0~42_combout\);

-- Location: LCCOMB_X71_Y50_N26
\factorial_1|regN[5]~_Duplicate_1feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|regN[5]~_Duplicate_1feeder_combout\ = \factorial_1|Add0~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \factorial_1|Add0~42_combout\,
	combout => \factorial_1|regN[5]~_Duplicate_1feeder_combout\);

-- Location: FF_X71_Y50_N27
\factorial_1|regN[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \factorial_1|regN[5]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \factorial_1|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|regN[5]~_Duplicate_1_q\);

-- Location: LCCOMB_X70_Y50_N12
\factorial_1|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|Add0~12_combout\ = (\factorial_1|regN[6]~_Duplicate_1_q\ & ((GND) # (!\factorial_1|Add0~11\))) # (!\factorial_1|regN[6]~_Duplicate_1_q\ & (\factorial_1|Add0~11\ $ (GND)))
-- \factorial_1|Add0~13\ = CARRY((\factorial_1|regN[6]~_Duplicate_1_q\) # (!\factorial_1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \factorial_1|regN[6]~_Duplicate_1_q\,
	datad => VCC,
	cin => \factorial_1|Add0~11\,
	combout => \factorial_1|Add0~12_combout\,
	cout => \factorial_1|Add0~13\);

-- Location: LCCOMB_X71_Y50_N28
\factorial_1|Add0~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|Add0~41_combout\ = (\factorial_1|state.LOOP_BODY~q\ & \factorial_1|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|state.LOOP_BODY~q\,
	datad => \factorial_1|Add0~12_combout\,
	combout => \factorial_1|Add0~41_combout\);

-- Location: FF_X71_Y50_N29
\factorial_1|regN[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \factorial_1|Add0~41_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \factorial_1|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|regN[6]~_Duplicate_1_q\);

-- Location: LCCOMB_X70_Y50_N14
\factorial_1|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|Add0~14_combout\ = (\factorial_1|regN[7]~_Duplicate_1_q\ & (\factorial_1|Add0~13\ & VCC)) # (!\factorial_1|regN[7]~_Duplicate_1_q\ & (!\factorial_1|Add0~13\))
-- \factorial_1|Add0~15\ = CARRY((!\factorial_1|regN[7]~_Duplicate_1_q\ & !\factorial_1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|regN[7]~_Duplicate_1_q\,
	datad => VCC,
	cin => \factorial_1|Add0~13\,
	combout => \factorial_1|Add0~14_combout\,
	cout => \factorial_1|Add0~15\);

-- Location: LCCOMB_X71_Y50_N0
\factorial_1|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|Add0~40_combout\ = (\factorial_1|state.LOOP_BODY~q\ & \factorial_1|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|state.LOOP_BODY~q\,
	datad => \factorial_1|Add0~14_combout\,
	combout => \factorial_1|Add0~40_combout\);

-- Location: FF_X71_Y50_N3
\factorial_1|regN[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \factorial_1|Add0~40_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => VCC,
	ena => \factorial_1|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|regN[7]~_Duplicate_1_q\);

-- Location: LCCOMB_X71_Y50_N2
\factorial_1|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|LessThan0~2_combout\ = (\factorial_1|regN[5]~_Duplicate_1_q\) # ((\factorial_1|regN[6]~_Duplicate_1_q\) # ((\factorial_1|regN[7]~_Duplicate_1_q\) # (\factorial_1|regN[4]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|regN[5]~_Duplicate_1_q\,
	datab => \factorial_1|regN[6]~_Duplicate_1_q\,
	datac => \factorial_1|regN[7]~_Duplicate_1_q\,
	datad => \factorial_1|regN[4]~_Duplicate_1_q\,
	combout => \factorial_1|LessThan0~2_combout\);

-- Location: LCCOMB_X70_Y50_N16
\factorial_1|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|Add0~16_combout\ = (\factorial_1|regN[8]~_Duplicate_1_q\ & ((GND) # (!\factorial_1|Add0~15\))) # (!\factorial_1|regN[8]~_Duplicate_1_q\ & (\factorial_1|Add0~15\ $ (GND)))
-- \factorial_1|Add0~17\ = CARRY((\factorial_1|regN[8]~_Duplicate_1_q\) # (!\factorial_1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \factorial_1|regN[8]~_Duplicate_1_q\,
	datad => VCC,
	cin => \factorial_1|Add0~15\,
	combout => \factorial_1|Add0~16_combout\,
	cout => \factorial_1|Add0~17\);

-- Location: LCCOMB_X71_Y50_N16
\factorial_1|Add0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|Add0~39_combout\ = (\factorial_1|Add0~16_combout\ & \factorial_1|state.LOOP_BODY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \factorial_1|Add0~16_combout\,
	datad => \factorial_1|state.LOOP_BODY~q\,
	combout => \factorial_1|Add0~39_combout\);

-- Location: FF_X71_Y50_N17
\factorial_1|regN[8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \factorial_1|Add0~39_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \factorial_1|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|regN[8]~_Duplicate_1_q\);

-- Location: LCCOMB_X70_Y50_N18
\factorial_1|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|Add0~18_combout\ = (\factorial_1|regN[9]~_Duplicate_1_q\ & (\factorial_1|Add0~17\ & VCC)) # (!\factorial_1|regN[9]~_Duplicate_1_q\ & (!\factorial_1|Add0~17\))
-- \factorial_1|Add0~19\ = CARRY((!\factorial_1|regN[9]~_Duplicate_1_q\ & !\factorial_1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \factorial_1|regN[9]~_Duplicate_1_q\,
	datad => VCC,
	cin => \factorial_1|Add0~17\,
	combout => \factorial_1|Add0~18_combout\,
	cout => \factorial_1|Add0~19\);

-- Location: LCCOMB_X71_Y50_N22
\factorial_1|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|Add0~38_combout\ = (\factorial_1|state.LOOP_BODY~q\ & \factorial_1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|state.LOOP_BODY~q\,
	datad => \factorial_1|Add0~18_combout\,
	combout => \factorial_1|Add0~38_combout\);

-- Location: FF_X71_Y50_N19
\factorial_1|regN[9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \factorial_1|Add0~38_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => VCC,
	ena => \factorial_1|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|regN[9]~_Duplicate_1_q\);

-- Location: LCCOMB_X70_Y50_N20
\factorial_1|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|Add0~20_combout\ = (\factorial_1|regN[10]~_Duplicate_1_q\ & ((GND) # (!\factorial_1|Add0~19\))) # (!\factorial_1|regN[10]~_Duplicate_1_q\ & (\factorial_1|Add0~19\ $ (GND)))
-- \factorial_1|Add0~21\ = CARRY((\factorial_1|regN[10]~_Duplicate_1_q\) # (!\factorial_1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|regN[10]~_Duplicate_1_q\,
	datad => VCC,
	cin => \factorial_1|Add0~19\,
	combout => \factorial_1|Add0~20_combout\,
	cout => \factorial_1|Add0~21\);

-- Location: LCCOMB_X71_Y50_N20
\factorial_1|Add0~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|Add0~37_combout\ = (\factorial_1|state.LOOP_BODY~q\ & \factorial_1|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|state.LOOP_BODY~q\,
	datad => \factorial_1|Add0~20_combout\,
	combout => \factorial_1|Add0~37_combout\);

-- Location: FF_X71_Y50_N21
\factorial_1|regN[10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \factorial_1|Add0~37_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \factorial_1|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|regN[10]~_Duplicate_1_q\);

-- Location: LCCOMB_X70_Y50_N22
\factorial_1|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|Add0~22_combout\ = (\factorial_1|regN[11]~_Duplicate_1_q\ & (\factorial_1|Add0~21\ & VCC)) # (!\factorial_1|regN[11]~_Duplicate_1_q\ & (!\factorial_1|Add0~21\))
-- \factorial_1|Add0~23\ = CARRY((!\factorial_1|regN[11]~_Duplicate_1_q\ & !\factorial_1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|regN[11]~_Duplicate_1_q\,
	datad => VCC,
	cin => \factorial_1|Add0~21\,
	combout => \factorial_1|Add0~22_combout\,
	cout => \factorial_1|Add0~23\);

-- Location: LCCOMB_X71_Y50_N30
\factorial_1|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|Add0~36_combout\ = (\factorial_1|state.LOOP_BODY~q\ & \factorial_1|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|state.LOOP_BODY~q\,
	datad => \factorial_1|Add0~22_combout\,
	combout => \factorial_1|Add0~36_combout\);

-- Location: FF_X71_Y50_N31
\factorial_1|regN[11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \factorial_1|Add0~36_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \factorial_1|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|regN[11]~_Duplicate_1_q\);

-- Location: LCCOMB_X70_Y50_N24
\factorial_1|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|Add0~24_combout\ = (\factorial_1|regN[12]~_Duplicate_1_q\ & ((GND) # (!\factorial_1|Add0~23\))) # (!\factorial_1|regN[12]~_Duplicate_1_q\ & (\factorial_1|Add0~23\ $ (GND)))
-- \factorial_1|Add0~25\ = CARRY((\factorial_1|regN[12]~_Duplicate_1_q\) # (!\factorial_1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|regN[12]~_Duplicate_1_q\,
	datad => VCC,
	cin => \factorial_1|Add0~23\,
	combout => \factorial_1|Add0~24_combout\,
	cout => \factorial_1|Add0~25\);

-- Location: LCCOMB_X69_Y50_N0
\factorial_1|Add0~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|Add0~35_combout\ = (\factorial_1|state.LOOP_BODY~q\ & \factorial_1|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \factorial_1|state.LOOP_BODY~q\,
	datad => \factorial_1|Add0~24_combout\,
	combout => \factorial_1|Add0~35_combout\);

-- Location: FF_X69_Y50_N1
\factorial_1|regN[12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \factorial_1|Add0~35_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \factorial_1|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|regN[12]~_Duplicate_1_q\);

-- Location: LCCOMB_X70_Y50_N26
\factorial_1|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|Add0~26_combout\ = (\factorial_1|regN[13]~_Duplicate_1_q\ & (\factorial_1|Add0~25\ & VCC)) # (!\factorial_1|regN[13]~_Duplicate_1_q\ & (!\factorial_1|Add0~25\))
-- \factorial_1|Add0~27\ = CARRY((!\factorial_1|regN[13]~_Duplicate_1_q\ & !\factorial_1|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \factorial_1|regN[13]~_Duplicate_1_q\,
	datad => VCC,
	cin => \factorial_1|Add0~25\,
	combout => \factorial_1|Add0~26_combout\,
	cout => \factorial_1|Add0~27\);

-- Location: LCCOMB_X69_Y50_N6
\factorial_1|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|Add0~34_combout\ = (\factorial_1|state.LOOP_BODY~q\ & \factorial_1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \factorial_1|state.LOOP_BODY~q\,
	datad => \factorial_1|Add0~26_combout\,
	combout => \factorial_1|Add0~34_combout\);

-- Location: FF_X69_Y50_N7
\factorial_1|regN[13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \factorial_1|Add0~34_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \factorial_1|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|regN[13]~_Duplicate_1_q\);

-- Location: LCCOMB_X70_Y50_N28
\factorial_1|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|Add0~28_combout\ = (\factorial_1|regN[14]~_Duplicate_1_q\ & ((GND) # (!\factorial_1|Add0~27\))) # (!\factorial_1|regN[14]~_Duplicate_1_q\ & (\factorial_1|Add0~27\ $ (GND)))
-- \factorial_1|Add0~29\ = CARRY((\factorial_1|regN[14]~_Duplicate_1_q\) # (!\factorial_1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \factorial_1|regN[14]~_Duplicate_1_q\,
	datad => VCC,
	cin => \factorial_1|Add0~27\,
	combout => \factorial_1|Add0~28_combout\,
	cout => \factorial_1|Add0~29\);

-- Location: LCCOMB_X69_Y50_N20
\factorial_1|Add0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|Add0~33_combout\ = (\factorial_1|state.LOOP_BODY~q\ & \factorial_1|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \factorial_1|state.LOOP_BODY~q\,
	datad => \factorial_1|Add0~28_combout\,
	combout => \factorial_1|Add0~33_combout\);

-- Location: FF_X69_Y50_N21
\factorial_1|regN[14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \factorial_1|Add0~33_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \factorial_1|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|regN[14]~_Duplicate_1_q\);

-- Location: LCCOMB_X70_Y50_N30
\factorial_1|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|Add0~30_combout\ = \factorial_1|regN[15]~_Duplicate_1_q\ $ (!\factorial_1|Add0~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|regN[15]~_Duplicate_1_q\,
	cin => \factorial_1|Add0~29\,
	combout => \factorial_1|Add0~30_combout\);

-- Location: LCCOMB_X69_Y50_N26
\factorial_1|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|Add0~32_combout\ = (\factorial_1|state.LOOP_BODY~q\ & \factorial_1|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \factorial_1|state.LOOP_BODY~q\,
	datac => \factorial_1|Add0~30_combout\,
	combout => \factorial_1|Add0~32_combout\);

-- Location: FF_X69_Y50_N27
\factorial_1|regN[15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \factorial_1|Add0~32_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \factorial_1|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|regN[15]~_Duplicate_1_q\);

-- Location: LCCOMB_X69_Y50_N30
\factorial_1|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|LessThan0~0_combout\ = (\factorial_1|regN[13]~_Duplicate_1_q\) # ((\factorial_1|regN[12]~_Duplicate_1_q\) # ((\factorial_1|regN[15]~_Duplicate_1_q\) # (\factorial_1|regN[14]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|regN[13]~_Duplicate_1_q\,
	datab => \factorial_1|regN[12]~_Duplicate_1_q\,
	datac => \factorial_1|regN[15]~_Duplicate_1_q\,
	datad => \factorial_1|regN[14]~_Duplicate_1_q\,
	combout => \factorial_1|LessThan0~0_combout\);

-- Location: LCCOMB_X71_Y50_N18
\factorial_1|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|LessThan0~1_combout\ = (\factorial_1|regN[11]~_Duplicate_1_q\) # ((\factorial_1|regN[10]~_Duplicate_1_q\) # ((\factorial_1|regN[9]~_Duplicate_1_q\) # (\factorial_1|regN[8]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|regN[11]~_Duplicate_1_q\,
	datab => \factorial_1|regN[10]~_Duplicate_1_q\,
	datac => \factorial_1|regN[9]~_Duplicate_1_q\,
	datad => \factorial_1|regN[8]~_Duplicate_1_q\,
	combout => \factorial_1|LessThan0~1_combout\);

-- Location: LCCOMB_X71_Y50_N24
\factorial_1|LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|LessThan0~4_combout\ = (\factorial_1|LessThan0~3_combout\) # ((\factorial_1|LessThan0~2_combout\) # ((\factorial_1|LessThan0~0_combout\) # (\factorial_1|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|LessThan0~3_combout\,
	datab => \factorial_1|LessThan0~2_combout\,
	datac => \factorial_1|LessThan0~0_combout\,
	datad => \factorial_1|LessThan0~1_combout\,
	combout => \factorial_1|LessThan0~4_combout\);

-- Location: LCCOMB_X69_Y50_N4
\factorial_1|state~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|state~13_combout\ = (\factorial_1|state.LOOP_COND~q\ & \factorial_1|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \factorial_1|state.LOOP_COND~q\,
	datad => \factorial_1|LessThan0~4_combout\,
	combout => \factorial_1|state~13_combout\);

-- Location: FF_X69_Y50_N5
\factorial_1|state.LOOP_BODY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \factorial_1|state~13_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|state.LOOP_BODY~q\);

-- Location: LCCOMB_X69_Y50_N8
\factorial_1|state~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|state~10_combout\ = (\factorial_1|state.LOOP_COND~q\ & !\factorial_1|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \factorial_1|state.LOOP_COND~q\,
	datad => \factorial_1|LessThan0~4_combout\,
	combout => \factorial_1|state~10_combout\);

-- Location: FF_X69_Y50_N9
\factorial_1|state.OUTPUTMATH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \factorial_1|state~10_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|state.OUTPUTMATH~q\);

-- Location: IOIBUF_X69_Y54_N1
\switch[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(9),
	o => \switch[9]~input_o\);

-- Location: LCCOMB_X69_Y50_N10
\factorial_1|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|Selector2~0_combout\ = (\factorial_1|state.OUTPUTMATH~q\) # ((\factorial_1|state.FINISH~q\ & \switch[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \factorial_1|state.OUTPUTMATH~q\,
	datac => \factorial_1|state.FINISH~q\,
	datad => \switch[9]~input_o\,
	combout => \factorial_1|Selector2~0_combout\);

-- Location: FF_X69_Y50_N11
\factorial_1|state.FINISH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \factorial_1|Selector2~0_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|state.FINISH~q\);

-- Location: LCCOMB_X69_Y50_N12
\factorial_1|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|Selector1~0_combout\ = (\switch[9]~input_o\) # ((!\factorial_1|state.FINISH~q\ & \factorial_1|state.START~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|state.FINISH~q\,
	datac => \factorial_1|state.START~q\,
	datad => \switch[9]~input_o\,
	combout => \factorial_1|Selector1~0_combout\);

-- Location: FF_X69_Y50_N13
\factorial_1|state.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \factorial_1|Selector1~0_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|state.START~q\);

-- Location: LCCOMB_X69_Y50_N2
\factorial_1|state~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|state~12_combout\ = (!\factorial_1|state.START~q\ & \switch[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|state.START~q\,
	datad => \switch[9]~input_o\,
	combout => \factorial_1|state~12_combout\);

-- Location: FF_X69_Y50_N3
\factorial_1|state.LOAD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \factorial_1|state~12_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|state.LOAD~q\);

-- Location: LCCOMB_X69_Y50_N22
\factorial_1|state~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|state~11_combout\ = (\factorial_1|state.LOOP_BODY~q\) # (\factorial_1|state.LOAD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \factorial_1|state.LOOP_BODY~q\,
	datad => \factorial_1|state.LOAD~q\,
	combout => \factorial_1|state~11_combout\);

-- Location: DSPMULT_X68_Y50_N0
\factorial_1|Mult0|auto_generated|mac_mult1\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \clk~inputclkctrl_outclk\,
	aclr => \switch[8]~input_o\,
	ena => \factorial_1|state~11_combout\,
	dataa => \factorial_1|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \factorial_1|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \factorial_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X68_Y50_N2
\factorial_1|Mult0|auto_generated|mac_out2\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \factorial_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: FF_X67_Y50_N25
\factorial_1|tempFact[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT15\,
	clrn => \ALT_INV_switch[8]~input_o\,
	sclr => \factorial_1|ALT_INV_state.LOOP_BODY~q\,
	sload => VCC,
	ena => \factorial_1|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|tempFact\(15));

-- Location: FF_X67_Y50_N11
\factorial_1|tempFact[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT14\,
	clrn => \ALT_INV_switch[8]~input_o\,
	sclr => \factorial_1|ALT_INV_state.LOOP_BODY~q\,
	sload => VCC,
	ena => \factorial_1|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|tempFact\(14));

-- Location: FF_X67_Y50_N1
\factorial_1|tempFact[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT13\,
	clrn => \ALT_INV_switch[8]~input_o\,
	sclr => \factorial_1|ALT_INV_state.LOOP_BODY~q\,
	sload => VCC,
	ena => \factorial_1|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|tempFact\(13));

-- Location: FF_X67_Y50_N19
\factorial_1|tempFact[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT12\,
	clrn => \ALT_INV_switch[8]~input_o\,
	sclr => \factorial_1|ALT_INV_state.LOOP_BODY~q\,
	sload => VCC,
	ena => \factorial_1|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|tempFact\(12));

-- Location: FF_X67_Y50_N17
\factorial_1|tempFact[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT11\,
	clrn => \ALT_INV_switch[8]~input_o\,
	sclr => \factorial_1|ALT_INV_state.LOOP_BODY~q\,
	sload => VCC,
	ena => \factorial_1|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|tempFact\(11));

-- Location: FF_X67_Y50_N7
\factorial_1|tempFact[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT10\,
	clrn => \ALT_INV_switch[8]~input_o\,
	sclr => \factorial_1|ALT_INV_state.LOOP_BODY~q\,
	sload => VCC,
	ena => \factorial_1|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|tempFact\(10));

-- Location: FF_X69_Y50_N23
\factorial_1|tempFact[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT9\,
	clrn => \ALT_INV_switch[8]~input_o\,
	sclr => \factorial_1|ALT_INV_state.LOOP_BODY~q\,
	sload => VCC,
	ena => \factorial_1|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|tempFact\(9));

-- Location: FF_X67_Y50_N21
\factorial_1|tempFact[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT8\,
	clrn => \ALT_INV_switch[8]~input_o\,
	sclr => \factorial_1|ALT_INV_state.LOOP_BODY~q\,
	sload => VCC,
	ena => \factorial_1|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|tempFact\(8));

-- Location: FF_X67_Y50_N31
\factorial_1|tempFact[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT7\,
	clrn => \ALT_INV_switch[8]~input_o\,
	sclr => \factorial_1|ALT_INV_state.LOOP_BODY~q\,
	sload => VCC,
	ena => \factorial_1|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|tempFact\(7));

-- Location: FF_X67_Y50_N5
\factorial_1|tempFact[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT6\,
	clrn => \ALT_INV_switch[8]~input_o\,
	sclr => \factorial_1|ALT_INV_state.LOOP_BODY~q\,
	sload => VCC,
	ena => \factorial_1|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|tempFact\(6));

-- Location: FF_X67_Y50_N15
\factorial_1|tempFact[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT5\,
	clrn => \ALT_INV_switch[8]~input_o\,
	sclr => \factorial_1|ALT_INV_state.LOOP_BODY~q\,
	sload => VCC,
	ena => \factorial_1|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|tempFact\(5));

-- Location: FF_X69_Y50_N17
\factorial_1|tempFact[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT4\,
	clrn => \ALT_INV_switch[8]~input_o\,
	sclr => \factorial_1|ALT_INV_state.LOOP_BODY~q\,
	sload => VCC,
	ena => \factorial_1|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|tempFact\(4));

-- Location: FF_X67_Y50_N29
\factorial_1|tempFact[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT3\,
	clrn => \ALT_INV_switch[8]~input_o\,
	sclr => \factorial_1|ALT_INV_state.LOOP_BODY~q\,
	sload => VCC,
	ena => \factorial_1|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|tempFact\(3));

-- Location: FF_X67_Y50_N9
\factorial_1|tempFact[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT1\,
	clrn => \ALT_INV_switch[8]~input_o\,
	sclr => \factorial_1|ALT_INV_state.LOOP_BODY~q\,
	sload => VCC,
	ena => \factorial_1|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|tempFact\(1));

-- Location: LCCOMB_X69_Y50_N14
\factorial_1|Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|Selector18~0_combout\ = (\factorial_1|state.LOOP_BODY~q\ & (((\factorial_1|Mult0|auto_generated|mac_out2~dataout\)))) # (!\factorial_1|state.LOOP_BODY~q\ & ((\factorial_1|state.LOAD~q\) # ((\factorial_1|tempFact\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|state.LOOP_BODY~q\,
	datab => \factorial_1|state.LOAD~q\,
	datac => \factorial_1|tempFact\(0),
	datad => \factorial_1|Mult0|auto_generated|mac_out2~dataout\,
	combout => \factorial_1|Selector18~0_combout\);

-- Location: FF_X69_Y50_N15
\factorial_1|tempFact[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \factorial_1|Selector18~0_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|tempFact\(0));

-- Location: FF_X67_Y50_N27
\factorial_1|tempFact[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \factorial_1|Mult0|auto_generated|mac_out2~DATAOUT2\,
	clrn => \ALT_INV_switch[8]~input_o\,
	sclr => \factorial_1|ALT_INV_state.LOOP_BODY~q\,
	sload => VCC,
	ena => \factorial_1|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|tempFact\(2));

-- Location: FF_X74_Y50_N13
\factorial_1|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \factorial_1|tempFact\(2),
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => VCC,
	ena => \factorial_1|state.OUTPUTMATH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|output\(2));

-- Location: LCCOMB_X74_Y50_N16
\factorial_1|output[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|output[0]~feeder_combout\ = \factorial_1|tempFact\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \factorial_1|tempFact\(0),
	combout => \factorial_1|output[0]~feeder_combout\);

-- Location: FF_X74_Y50_N17
\factorial_1|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \factorial_1|output[0]~feeder_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \factorial_1|state.OUTPUTMATH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|output\(0));

-- Location: LCCOMB_X74_Y50_N18
\factorial_1|output[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|output[1]~feeder_combout\ = \factorial_1|tempFact\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \factorial_1|tempFact\(1),
	combout => \factorial_1|output[1]~feeder_combout\);

-- Location: FF_X74_Y50_N19
\factorial_1|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \factorial_1|output[1]~feeder_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \factorial_1|state.OUTPUTMATH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|output\(1));

-- Location: FF_X74_Y50_N7
\factorial_1|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \factorial_1|tempFact\(3),
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => VCC,
	ena => \factorial_1|state.OUTPUTMATH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|output\(3));

-- Location: LCCOMB_X74_Y50_N24
\U_LED2|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|Mux6~0_combout\ = (\factorial_1|output\(2) & (!\factorial_1|output\(1) & (\factorial_1|output\(0) $ (!\factorial_1|output\(3))))) # (!\factorial_1|output\(2) & (\factorial_1|output\(0) & (\factorial_1|output\(1) $ (!\factorial_1|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|output\(2),
	datab => \factorial_1|output\(0),
	datac => \factorial_1|output\(1),
	datad => \factorial_1|output\(3),
	combout => \U_LED2|Mux6~0_combout\);

-- Location: LCCOMB_X74_Y50_N30
\U_LED2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|Mux5~0_combout\ = (\factorial_1|output\(1) & ((\factorial_1|output\(0) & ((\factorial_1|output\(3)))) # (!\factorial_1|output\(0) & (\factorial_1|output\(2))))) # (!\factorial_1|output\(1) & (\factorial_1|output\(2) & (\factorial_1|output\(0) $ 
-- (\factorial_1|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|output\(2),
	datab => \factorial_1|output\(0),
	datac => \factorial_1|output\(1),
	datad => \factorial_1|output\(3),
	combout => \U_LED2|Mux5~0_combout\);

-- Location: LCCOMB_X74_Y50_N4
\U_LED2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|Mux4~0_combout\ = (\factorial_1|output\(2) & (\factorial_1|output\(3) & ((\factorial_1|output\(1)) # (!\factorial_1|output\(0))))) # (!\factorial_1|output\(2) & (!\factorial_1|output\(0) & (\factorial_1|output\(1) & !\factorial_1|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|output\(2),
	datab => \factorial_1|output\(0),
	datac => \factorial_1|output\(1),
	datad => \factorial_1|output\(3),
	combout => \U_LED2|Mux4~0_combout\);

-- Location: LCCOMB_X74_Y50_N14
\U_LED2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|Mux3~0_combout\ = (\factorial_1|output\(0) & (\factorial_1|output\(2) $ ((!\factorial_1|output\(1))))) # (!\factorial_1|output\(0) & ((\factorial_1|output\(2) & (!\factorial_1|output\(1) & !\factorial_1|output\(3))) # (!\factorial_1|output\(2) & 
-- (\factorial_1|output\(1) & \factorial_1|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|output\(2),
	datab => \factorial_1|output\(0),
	datac => \factorial_1|output\(1),
	datad => \factorial_1|output\(3),
	combout => \U_LED2|Mux3~0_combout\);

-- Location: LCCOMB_X74_Y50_N28
\U_LED2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|Mux2~0_combout\ = (\factorial_1|output\(1) & (((\factorial_1|output\(0) & !\factorial_1|output\(3))))) # (!\factorial_1|output\(1) & ((\factorial_1|output\(2) & ((!\factorial_1|output\(3)))) # (!\factorial_1|output\(2) & 
-- (\factorial_1|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|output\(2),
	datab => \factorial_1|output\(0),
	datac => \factorial_1|output\(1),
	datad => \factorial_1|output\(3),
	combout => \U_LED2|Mux2~0_combout\);

-- Location: LCCOMB_X74_Y50_N12
\U_LED2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|Mux1~0_combout\ = (\factorial_1|output\(1) & (!\factorial_1|output\(3) & ((\factorial_1|output\(0)) # (!\factorial_1|output\(2))))) # (!\factorial_1|output\(1) & (\factorial_1|output\(0) & (\factorial_1|output\(3) $ (!\factorial_1|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|output\(3),
	datab => \factorial_1|output\(1),
	datac => \factorial_1|output\(2),
	datad => \factorial_1|output\(0),
	combout => \U_LED2|Mux1~0_combout\);

-- Location: LCCOMB_X74_Y50_N6
\U_LED2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|Mux0~0_combout\ = (\factorial_1|output\(0) & ((\factorial_1|output\(3)) # (\factorial_1|output\(2) $ (\factorial_1|output\(1))))) # (!\factorial_1|output\(0) & ((\factorial_1|output\(1)) # (\factorial_1|output\(2) $ (\factorial_1|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|output\(2),
	datab => \factorial_1|output\(1),
	datac => \factorial_1|output\(3),
	datad => \factorial_1|output\(0),
	combout => \U_LED2|Mux0~0_combout\);

-- Location: LCCOMB_X74_Y46_N22
\factorial_1|output[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|output[6]~feeder_combout\ = \factorial_1|tempFact\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \factorial_1|tempFact\(6),
	combout => \factorial_1|output[6]~feeder_combout\);

-- Location: FF_X74_Y46_N23
\factorial_1|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \factorial_1|output[6]~feeder_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \factorial_1|state.OUTPUTMATH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|output\(6));

-- Location: LCCOMB_X74_Y46_N24
\factorial_1|output[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|output[5]~feeder_combout\ = \factorial_1|tempFact\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \factorial_1|tempFact\(5),
	combout => \factorial_1|output[5]~feeder_combout\);

-- Location: FF_X74_Y46_N25
\factorial_1|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \factorial_1|output[5]~feeder_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \factorial_1|state.OUTPUTMATH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|output\(5));

-- Location: FF_X71_Y50_N13
\factorial_1|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \factorial_1|tempFact\(4),
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => VCC,
	ena => \factorial_1|state.OUTPUTMATH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|output\(4));

-- Location: FF_X74_Y46_N29
\factorial_1|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \factorial_1|tempFact\(7),
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => VCC,
	ena => \factorial_1|state.OUTPUTMATH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|output\(7));

-- Location: LCCOMB_X74_Y46_N18
\U_LED3|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|Mux6~0_combout\ = (\factorial_1|output\(6) & (!\factorial_1|output\(5) & (\factorial_1|output\(4) $ (!\factorial_1|output\(7))))) # (!\factorial_1|output\(6) & (\factorial_1|output\(4) & (\factorial_1|output\(5) $ (!\factorial_1|output\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|output\(6),
	datab => \factorial_1|output\(5),
	datac => \factorial_1|output\(4),
	datad => \factorial_1|output\(7),
	combout => \U_LED3|Mux6~0_combout\);

-- Location: LCCOMB_X74_Y46_N16
\U_LED3|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|Mux5~0_combout\ = (\factorial_1|output\(5) & ((\factorial_1|output\(4) & ((\factorial_1|output\(7)))) # (!\factorial_1|output\(4) & (\factorial_1|output\(6))))) # (!\factorial_1|output\(5) & (\factorial_1|output\(6) & (\factorial_1|output\(4) $ 
-- (\factorial_1|output\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|output\(6),
	datab => \factorial_1|output\(5),
	datac => \factorial_1|output\(4),
	datad => \factorial_1|output\(7),
	combout => \U_LED3|Mux5~0_combout\);

-- Location: LCCOMB_X74_Y46_N6
\U_LED3|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|Mux4~0_combout\ = (\factorial_1|output\(6) & (\factorial_1|output\(7) & ((\factorial_1|output\(5)) # (!\factorial_1|output\(4))))) # (!\factorial_1|output\(6) & (\factorial_1|output\(5) & (!\factorial_1|output\(4) & !\factorial_1|output\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|output\(6),
	datab => \factorial_1|output\(5),
	datac => \factorial_1|output\(4),
	datad => \factorial_1|output\(7),
	combout => \U_LED3|Mux4~0_combout\);

-- Location: LCCOMB_X74_Y46_N12
\U_LED3|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|Mux3~0_combout\ = (\factorial_1|output\(4) & (\factorial_1|output\(6) $ ((!\factorial_1|output\(5))))) # (!\factorial_1|output\(4) & ((\factorial_1|output\(6) & (!\factorial_1|output\(5) & !\factorial_1|output\(7))) # (!\factorial_1|output\(6) & 
-- (\factorial_1|output\(5) & \factorial_1|output\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|output\(6),
	datab => \factorial_1|output\(5),
	datac => \factorial_1|output\(4),
	datad => \factorial_1|output\(7),
	combout => \U_LED3|Mux3~0_combout\);

-- Location: LCCOMB_X74_Y46_N30
\U_LED3|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|Mux2~0_combout\ = (\factorial_1|output\(5) & (((\factorial_1|output\(4) & !\factorial_1|output\(7))))) # (!\factorial_1|output\(5) & ((\factorial_1|output\(6) & ((!\factorial_1|output\(7)))) # (!\factorial_1|output\(6) & 
-- (\factorial_1|output\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|output\(6),
	datab => \factorial_1|output\(5),
	datac => \factorial_1|output\(4),
	datad => \factorial_1|output\(7),
	combout => \U_LED3|Mux2~0_combout\);

-- Location: LCCOMB_X74_Y46_N20
\U_LED3|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|Mux1~0_combout\ = (\factorial_1|output\(6) & (\factorial_1|output\(4) & (\factorial_1|output\(5) $ (\factorial_1|output\(7))))) # (!\factorial_1|output\(6) & (!\factorial_1|output\(7) & ((\factorial_1|output\(5)) # (\factorial_1|output\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|output\(6),
	datab => \factorial_1|output\(5),
	datac => \factorial_1|output\(4),
	datad => \factorial_1|output\(7),
	combout => \U_LED3|Mux1~0_combout\);

-- Location: LCCOMB_X74_Y46_N28
\U_LED3|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|Mux0~0_combout\ = (\factorial_1|output\(4) & ((\factorial_1|output\(7)) # (\factorial_1|output\(6) $ (\factorial_1|output\(5))))) # (!\factorial_1|output\(4) & ((\factorial_1|output\(5)) # (\factorial_1|output\(6) $ (\factorial_1|output\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|output\(6),
	datab => \factorial_1|output\(4),
	datac => \factorial_1|output\(7),
	datad => \factorial_1|output\(5),
	combout => \U_LED3|Mux0~0_combout\);

-- Location: FF_X74_Y46_N11
\factorial_1|output[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \factorial_1|tempFact\(10),
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => VCC,
	ena => \factorial_1|state.OUTPUTMATH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|output\(10));

-- Location: FF_X74_Y46_N1
\factorial_1|output[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \factorial_1|tempFact\(9),
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => VCC,
	ena => \factorial_1|state.OUTPUTMATH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|output\(9));

-- Location: FF_X74_Y46_N15
\factorial_1|output[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \factorial_1|tempFact\(8),
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => VCC,
	ena => \factorial_1|state.OUTPUTMATH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|output\(8));

-- Location: LCCOMB_X67_Y50_N22
\factorial_1|output[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|output[11]~feeder_combout\ = \factorial_1|tempFact\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \factorial_1|tempFact\(11),
	combout => \factorial_1|output[11]~feeder_combout\);

-- Location: FF_X67_Y50_N23
\factorial_1|output[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \factorial_1|output[11]~feeder_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \factorial_1|state.OUTPUTMATH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|output\(11));

-- Location: LCCOMB_X74_Y46_N4
\U_LED4|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|Mux6~0_combout\ = (\factorial_1|output\(10) & (!\factorial_1|output\(9) & (\factorial_1|output\(8) $ (!\factorial_1|output\(11))))) # (!\factorial_1|output\(10) & (\factorial_1|output\(8) & (\factorial_1|output\(9) $ (!\factorial_1|output\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|output\(10),
	datab => \factorial_1|output\(9),
	datac => \factorial_1|output\(8),
	datad => \factorial_1|output\(11),
	combout => \U_LED4|Mux6~0_combout\);

-- Location: LCCOMB_X74_Y46_N2
\U_LED4|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|Mux5~0_combout\ = (\factorial_1|output\(9) & ((\factorial_1|output\(8) & ((\factorial_1|output\(11)))) # (!\factorial_1|output\(8) & (\factorial_1|output\(10))))) # (!\factorial_1|output\(9) & (\factorial_1|output\(10) & (\factorial_1|output\(8) $ 
-- (\factorial_1|output\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|output\(10),
	datab => \factorial_1|output\(9),
	datac => \factorial_1|output\(8),
	datad => \factorial_1|output\(11),
	combout => \U_LED4|Mux5~0_combout\);

-- Location: LCCOMB_X74_Y46_N8
\U_LED4|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|Mux4~0_combout\ = (\factorial_1|output\(10) & (\factorial_1|output\(11) & ((\factorial_1|output\(9)) # (!\factorial_1|output\(8))))) # (!\factorial_1|output\(10) & (\factorial_1|output\(9) & (!\factorial_1|output\(8) & !\factorial_1|output\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|output\(10),
	datab => \factorial_1|output\(9),
	datac => \factorial_1|output\(8),
	datad => \factorial_1|output\(11),
	combout => \U_LED4|Mux4~0_combout\);

-- Location: LCCOMB_X74_Y46_N14
\U_LED4|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|Mux3~0_combout\ = (\factorial_1|output\(8) & (\factorial_1|output\(10) $ ((!\factorial_1|output\(9))))) # (!\factorial_1|output\(8) & ((\factorial_1|output\(10) & (!\factorial_1|output\(9) & !\factorial_1|output\(11))) # (!\factorial_1|output\(10) 
-- & (\factorial_1|output\(9) & \factorial_1|output\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|output\(10),
	datab => \factorial_1|output\(9),
	datac => \factorial_1|output\(8),
	datad => \factorial_1|output\(11),
	combout => \U_LED4|Mux3~0_combout\);

-- Location: LCCOMB_X74_Y46_N0
\U_LED4|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|Mux2~0_combout\ = (\factorial_1|output\(9) & (((\factorial_1|output\(8) & !\factorial_1|output\(11))))) # (!\factorial_1|output\(9) & ((\factorial_1|output\(10) & ((!\factorial_1|output\(11)))) # (!\factorial_1|output\(10) & 
-- (\factorial_1|output\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|output\(10),
	datab => \factorial_1|output\(8),
	datac => \factorial_1|output\(9),
	datad => \factorial_1|output\(11),
	combout => \U_LED4|Mux2~0_combout\);

-- Location: LCCOMB_X74_Y46_N10
\U_LED4|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|Mux1~0_combout\ = (\factorial_1|output\(9) & (!\factorial_1|output\(11) & ((\factorial_1|output\(8)) # (!\factorial_1|output\(10))))) # (!\factorial_1|output\(9) & (\factorial_1|output\(8) & (\factorial_1|output\(10) $ 
-- (!\factorial_1|output\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|output\(9),
	datab => \factorial_1|output\(8),
	datac => \factorial_1|output\(10),
	datad => \factorial_1|output\(11),
	combout => \U_LED4|Mux1~0_combout\);

-- Location: LCCOMB_X74_Y46_N26
\U_LED4|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|Mux0~0_combout\ = (\factorial_1|output\(8) & ((\factorial_1|output\(11)) # (\factorial_1|output\(10) $ (\factorial_1|output\(9))))) # (!\factorial_1|output\(8) & ((\factorial_1|output\(9)) # (\factorial_1|output\(10) $ 
-- (\factorial_1|output\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|output\(10),
	datab => \factorial_1|output\(9),
	datac => \factorial_1|output\(8),
	datad => \factorial_1|output\(11),
	combout => \U_LED4|Mux0~0_combout\);

-- Location: LCCOMB_X67_Y50_N2
\factorial_1|output[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|output[14]~feeder_combout\ = \factorial_1|tempFact\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \factorial_1|tempFact\(14),
	combout => \factorial_1|output[14]~feeder_combout\);

-- Location: FF_X67_Y50_N3
\factorial_1|output[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \factorial_1|output[14]~feeder_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \factorial_1|state.OUTPUTMATH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|output\(14));

-- Location: FF_X74_Y50_N21
\factorial_1|output[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \factorial_1|tempFact\(15),
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => VCC,
	ena => \factorial_1|state.OUTPUTMATH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|output\(15));

-- Location: LCCOMB_X67_Y50_N12
\factorial_1|output[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|output[12]~feeder_combout\ = \factorial_1|tempFact\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \factorial_1|tempFact\(12),
	combout => \factorial_1|output[12]~feeder_combout\);

-- Location: FF_X67_Y50_N13
\factorial_1|output[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \factorial_1|output[12]~feeder_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \factorial_1|state.OUTPUTMATH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|output\(12));

-- Location: FF_X74_Y50_N3
\factorial_1|output[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \factorial_1|tempFact\(13),
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => VCC,
	ena => \factorial_1|state.OUTPUTMATH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|output\(13));

-- Location: LCCOMB_X74_Y50_N22
\U_LED5|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|Mux6~0_combout\ = (\factorial_1|output\(14) & (!\factorial_1|output\(13) & (\factorial_1|output\(15) $ (!\factorial_1|output\(12))))) # (!\factorial_1|output\(14) & (\factorial_1|output\(12) & (\factorial_1|output\(15) $ 
-- (!\factorial_1|output\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|output\(14),
	datab => \factorial_1|output\(15),
	datac => \factorial_1|output\(12),
	datad => \factorial_1|output\(13),
	combout => \U_LED5|Mux6~0_combout\);

-- Location: LCCOMB_X74_Y50_N8
\U_LED5|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|Mux5~0_combout\ = (\factorial_1|output\(15) & ((\factorial_1|output\(12) & ((\factorial_1|output\(13)))) # (!\factorial_1|output\(12) & (\factorial_1|output\(14))))) # (!\factorial_1|output\(15) & (\factorial_1|output\(14) & 
-- (\factorial_1|output\(12) $ (\factorial_1|output\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|output\(14),
	datab => \factorial_1|output\(15),
	datac => \factorial_1|output\(12),
	datad => \factorial_1|output\(13),
	combout => \U_LED5|Mux5~0_combout\);

-- Location: LCCOMB_X74_Y50_N26
\U_LED5|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|Mux4~0_combout\ = (\factorial_1|output\(14) & (\factorial_1|output\(15) & ((\factorial_1|output\(13)) # (!\factorial_1|output\(12))))) # (!\factorial_1|output\(14) & (!\factorial_1|output\(15) & (!\factorial_1|output\(12) & 
-- \factorial_1|output\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|output\(14),
	datab => \factorial_1|output\(15),
	datac => \factorial_1|output\(12),
	datad => \factorial_1|output\(13),
	combout => \U_LED5|Mux4~0_combout\);

-- Location: LCCOMB_X74_Y50_N0
\U_LED5|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|Mux3~0_combout\ = (\factorial_1|output\(12) & (\factorial_1|output\(14) $ (((!\factorial_1|output\(13)))))) # (!\factorial_1|output\(12) & ((\factorial_1|output\(14) & (!\factorial_1|output\(15) & !\factorial_1|output\(13))) # 
-- (!\factorial_1|output\(14) & (\factorial_1|output\(15) & \factorial_1|output\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|output\(14),
	datab => \factorial_1|output\(15),
	datac => \factorial_1|output\(12),
	datad => \factorial_1|output\(13),
	combout => \U_LED5|Mux3~0_combout\);

-- Location: LCCOMB_X74_Y50_N2
\U_LED5|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|Mux2~0_combout\ = (\factorial_1|output\(13) & (\factorial_1|output\(12) & (!\factorial_1|output\(15)))) # (!\factorial_1|output\(13) & ((\factorial_1|output\(14) & ((!\factorial_1|output\(15)))) # (!\factorial_1|output\(14) & 
-- (\factorial_1|output\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|output\(12),
	datab => \factorial_1|output\(15),
	datac => \factorial_1|output\(13),
	datad => \factorial_1|output\(14),
	combout => \U_LED5|Mux2~0_combout\);

-- Location: LCCOMB_X74_Y50_N10
\U_LED5|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|Mux1~0_combout\ = (\factorial_1|output\(14) & (\factorial_1|output\(12) & (\factorial_1|output\(15) $ (\factorial_1|output\(13))))) # (!\factorial_1|output\(14) & (!\factorial_1|output\(15) & ((\factorial_1|output\(12)) # 
-- (\factorial_1|output\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|output\(14),
	datab => \factorial_1|output\(15),
	datac => \factorial_1|output\(12),
	datad => \factorial_1|output\(13),
	combout => \U_LED5|Mux1~0_combout\);

-- Location: LCCOMB_X74_Y50_N20
\U_LED5|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|Mux0~0_combout\ = (\factorial_1|output\(12) & ((\factorial_1|output\(15)) # (\factorial_1|output\(13) $ (\factorial_1|output\(14))))) # (!\factorial_1|output\(12) & ((\factorial_1|output\(13)) # (\factorial_1|output\(15) $ 
-- (\factorial_1|output\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|output\(12),
	datab => \factorial_1|output\(13),
	datac => \factorial_1|output\(15),
	datad => \factorial_1|output\(14),
	combout => \U_LED5|Mux0~0_combout\);

-- Location: LCCOMB_X69_Y50_N24
\factorial_1|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \factorial_1|Selector0~0_combout\ = (\factorial_1|state.FINISH~q\) # ((\factorial_1|done~q\ & \factorial_1|state.START~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \factorial_1|state.FINISH~q\,
	datac => \factorial_1|done~q\,
	datad => \factorial_1|state.START~q\,
	combout => \factorial_1|Selector0~0_combout\);

-- Location: FF_X69_Y50_N25
\factorial_1|done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \factorial_1|Selector0~0_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \factorial_1|done~q\);

-- Location: IOIBUF_X46_Y54_N29
\rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X49_Y0_N8
\go~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_go,
	o => \go~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\switch[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(3),
	o => \switch[3]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\switch[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(4),
	o => \switch[4]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\switch[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(5),
	o => \switch[5]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\switch[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(6),
	o => \switch[6]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\switch[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(7),
	o => \switch[7]~input_o\);

-- Location: IOIBUF_X51_Y54_N8
\button[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button(0),
	o => \button[0]~input_o\);

-- Location: IOIBUF_X38_Y0_N22
\button[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button(1),
	o => \button[1]~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_led0(0) <= \led0[0]~output_o\;

ww_led0(1) <= \led0[1]~output_o\;

ww_led0(2) <= \led0[2]~output_o\;

ww_led0(3) <= \led0[3]~output_o\;

ww_led0(4) <= \led0[4]~output_o\;

ww_led0(5) <= \led0[5]~output_o\;

ww_led0(6) <= \led0[6]~output_o\;

ww_led0_dp <= \led0_dp~output_o\;

ww_led1(0) <= \led1[0]~output_o\;

ww_led1(1) <= \led1[1]~output_o\;

ww_led1(2) <= \led1[2]~output_o\;

ww_led1(3) <= \led1[3]~output_o\;

ww_led1(4) <= \led1[4]~output_o\;

ww_led1(5) <= \led1[5]~output_o\;

ww_led1(6) <= \led1[6]~output_o\;

ww_led1_dp <= \led1_dp~output_o\;

ww_led2(0) <= \led2[0]~output_o\;

ww_led2(1) <= \led2[1]~output_o\;

ww_led2(2) <= \led2[2]~output_o\;

ww_led2(3) <= \led2[3]~output_o\;

ww_led2(4) <= \led2[4]~output_o\;

ww_led2(5) <= \led2[5]~output_o\;

ww_led2(6) <= \led2[6]~output_o\;

ww_led2_dp <= \led2_dp~output_o\;

ww_led3(0) <= \led3[0]~output_o\;

ww_led3(1) <= \led3[1]~output_o\;

ww_led3(2) <= \led3[2]~output_o\;

ww_led3(3) <= \led3[3]~output_o\;

ww_led3(4) <= \led3[4]~output_o\;

ww_led3(5) <= \led3[5]~output_o\;

ww_led3(6) <= \led3[6]~output_o\;

ww_led3_dp <= \led3_dp~output_o\;

ww_led4(0) <= \led4[0]~output_o\;

ww_led4(1) <= \led4[1]~output_o\;

ww_led4(2) <= \led4[2]~output_o\;

ww_led4(3) <= \led4[3]~output_o\;

ww_led4(4) <= \led4[4]~output_o\;

ww_led4(5) <= \led4[5]~output_o\;

ww_led4(6) <= \led4[6]~output_o\;

ww_led4_dp <= \led4_dp~output_o\;

ww_led5(0) <= \led5[0]~output_o\;

ww_led5(1) <= \led5[1]~output_o\;

ww_led5(2) <= \led5[2]~output_o\;

ww_led5(3) <= \led5[3]~output_o\;

ww_led5(4) <= \led5[4]~output_o\;

ww_led5(5) <= \led5[5]~output_o\;

ww_led5(6) <= \led5[6]~output_o\;

ww_led5_dp <= \led5_dp~output_o\;

ww_ledr0 <= \ledr0~output_o\;
END structure;


