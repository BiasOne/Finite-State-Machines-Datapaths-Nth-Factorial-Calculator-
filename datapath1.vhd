library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity datapath1 is
  generic(
  WIDTH :   positive := 16);
  port(
    clk             : in std_logic;
    rst             : in std_logic;
    n               : in std_logic_vector(width-1 downto 0);
    regN_en         : in std_logic;
    regN_sel        : in std_logic;
    tempFact_en     : in std_logic;
    tempFact_sel    : in std_logic;
    output_en       : in std_logic;
    n_ge_1          : out std_logic;
    output          : out std_logic_vector(width-1 downto 0)

  );
end datapath1;

architecture STR of datapath1 is

  -- Fill in with your code
	signal mux1, mux2, reg1, reg2, dec, mult :std_logic_vector(width-1 downto 0);
begin

  -- Fill in with your code
MUX_1:   entity work.mux_2x1
		   generic map (WIDTH 	=> width)
		   port map (
			in1		=> n,
			in2		=> dec,
			sel		=> regN_sel,
			output	=> mux1
			
			);
			
MUX_2:   entity work.mux_2x1
		   generic map (WIDTH 	=> width)
		   port map (
			--need to fix this one
			in1		=> std_logic_vector(to_unsigned(1, width)),
			in2		=> mult,
			sel		=> tempFact_sel,
			output	=> mux2
			
			);
			
REG2_1:	entity work.reg2
			generic map(WIDTH  => width)
			port map(
			clk      =>	clk,
			rst		=> rst,   
			en 		=> regN_en,
			input  	=> mux1,
			output	=> reg1
			);
			
REG2_2:	entity work.reg2
			generic map(WIDTH  => width)
			port map(
			clk      =>	clk,
			rst		=> rst,   
			en 		=> tempFact_en,
			input  	=> mux2,
			output	=> reg2
			);
			
REG2_3:	entity work.reg2
			generic map(WIDTH  => width)
			port map(
			clk      =>	clk,
			rst		=> rst,   
			en 		=> output_en,
			input  	=> reg2,
			output	=> output
			);
			
COMP_1:	entity work.comparator
			generic map(WIDTH  => width)
			port map(
			in1     =>	reg1,
			n_ge_1	=> n_ge_1
			);
			
DEC_3:	entity work.decrementer
			generic map(WIDTH  => width)
			port map(
			in1  	=> reg1,
			output	=> dec
			);
			
Mult_1:	entity work.multiplier
			generic map(WIDTH  => width)
			port map(
			in1      =>	reg1,
			in2	=> reg2,   
			output	=> mult
			);
end STR;