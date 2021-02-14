library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity factorial is
  generic(
    WIDTH         :   positive := 32);
  port(
    clk     : in  std_logic;
    rst     : in  std_logic;
    n       : in  std_logic_vector(width-1 downto 0);
    go      : in  std_logic;
    done    : out std_logic;
    output  : out std_logic_vector(WIDTH-1 downto 0)

  );
end factorial;


architecture FSM_D1 of factorial is
type STATE_TYPE is (START, LOAD, LOOP_COND, LOOP_BODY, OUTPUTMATH, FINISH);  
signal state: STATE_TYPE;

signal tempFact, regN : unsigned(width-1 downto 0);
  -- Fill in with your code

begin

process(clk, rst)

begin 

	if (rst = '1') then
	
	output <=  std_logic_vector(to_unsigned(0, width));
	done <= '0';
	regN <= to_unsigned(0, width);
	tempFact <= to_unsigned(0, width);
	state <= START;
	elsif(rising_edge(clk)) then	
	
	case state is
----------------------------------------------------------	
 	when START =>
   done <= '0';	
	if (go = '1') then
	state <= LOAD;
	else
	state <= START;	
	end if;
 ----------------------------------------------------------	
	when LOAD =>          
	tempFact <= to_unsigned(1, width);
	regN <= unsigned(n);
	state <= LOOP_COND;
 ----------------------------------------------------------	
   when LOOP_COND =>
   if (regN  >= 1) then
   state <= LOOP_BODY;
   else
   state <= OUTPUTMATH;
   end if;

   when LOOP_BODY =>
	tempFact <= resize((tempFact * regN), width);
	regN <= regN - 1;
   state <= LOOP_COND;
	
 ----------------------------------------------------------	
	when OUTPUTMATH =>          
	output <= std_logic_vector(tempFact);
		
	state <= FINISH;	
 ----------------------------------------------------------	
	when FINISH =>
	done <= '1';
	if (go  = '0') then
	state <= START;
	else
	state <= FINISH;
	end if;
  
  
  when others =>null;
	
	end case;
  end if;
 end process;  
end FSM_D1;

architecture FSM_D2 of factorial is	

		signal n_ge_1, regN_sel, regN_en, output_en, tempFact_sel, tempFact_en : std_logic;  

begin  -- FSM_D2

ctrl1_1 : entity work.ctrl1
		generic map(WIDTH => width)
		port map (
		clk   			=> clk,
		rst    			=> rst,
		go					=> go,
		n_ge_1      	=> n_ge_1, 
		regN_sel    	=> regN_sel, 
		regN_en     	=> regN_en, 
		output_en   	=> output_en, 
		tempFact_sel	=> tempFact_sel,
		tempFact_en 	=> tempFact_en,
		done				=> done
		);
		
------------------------------------
datapath_1: entity work.datapath1
		generic map(WIDTH => width)
		port map (	
		clk   			=> clk,
		rst    			=> rst,
		n              => n,
		n_ge_1      	=> n_ge_1, 
		regN_sel    	=> regN_sel, 
		regN_en     	=> regN_en, 
		output_en   	=> output_en, 
		tempFact_sel	=> tempFact_sel,
		tempFact_en 	=> tempFact_en,
		output			=> output     			
		);
		
end FSM_D2;