-- The following entity is the top-level entity for lab 4. No changes are
-- required, but you need to map the I/O to the appropriate pins on the
-- board.

-- I/O Explanation (assumes the switches are on side of the
--                  board that is closest to you)
-- switch(9) is the leftmost switch
-- button(1) is the top button
-- led5 is the leftmost 7-segment LED
-- ledx_dp is the decimal point on the 7-segment LED for LED x

-- Note: this code will cause a harmless synthesis warning because not all
-- the buttons are used and because some output pins are always '0' or '1'

library ieee;
use ieee.std_logic_1164.all;

entity top_level is
	 generic(WIDTH : positive :=16);
    port (
        clk 	  : in  std_logic;
        rst      : in  std_logic;
		  go       : in  std_logic;
        switch   : in  std_logic_vector(9 downto 0);
        button   : in  std_logic_vector(1 downto 0);
        led0     : out std_logic_vector(6 downto 0);
        led0_dp  : out std_logic;
        led1     : out std_logic_vector(6 downto 0);
        led1_dp  : out std_logic;
        led2     : out std_logic_vector(6 downto 0);
        led2_dp  : out std_logic;
        led3     : out std_logic_vector(6 downto 0);
        led3_dp  : out std_logic;
        led4     : out std_logic_vector(6 downto 0);
        led4_dp  : out std_logic;
        led5     : out std_logic_vector(6 downto 0);
        led5_dp  : out std_logic;
		  ledr0	  : out std_logic
        );
end top_level;

architecture STR of top_level is

    component decoder7seg
        port (
            input  : in  std_logic_vector(3 downto 0);
            output : out std_logic_vector(6 downto 0));
    end component;
	 

	 constant C0             : std_logic_vector(3 downto 0)  := (others => '0');
    signal factOut    		 : std_logic_vector(15 downto 0);
   
begin

factorial_1 : entity work.factorial(FSM_D1)
				generic map(WIDTH =>width)
				port map(
				clk				=> clk,
				rst				=> switch(8),
				go					=> switch(9),
				n(2 downto 0)	=> switch(2 downto 0),
				n(15 downto 3)	=> (others => '0'),			
				done    			=> ledr0,
				output  			=> factOut
				);
											
	 U_LED5 : entity work.decoder7seg port map (
        input  => factOut(15 downto 12),
        output => led5);

    U_LED4 : entity work.decoder7seg port map (
        input  => factOut(11 downto 8),
        output => led4);
    
    U_LED3 : entity work.decoder7seg port map (
        input  => factOut(7 downto 4),
        output => led3);

    U_LED2 : entity work.decoder7seg port map (
        input  => factOut(3 downto 0),
        output => led2);
    
    U_LED1 : entity work.decoder7seg port map (
        input  => C0,
        output => led1);

    U_LED0 : entity work.decoder7seg port map (
        input  => C0,
        output => led0);
    
    led5_dp <= '1';
    led4_dp <= '1';
    led3_dp <= '1';
    led2_dp <= '1';
    led1_dp <= '1';
	 led0_dp <= '1';

end STR;