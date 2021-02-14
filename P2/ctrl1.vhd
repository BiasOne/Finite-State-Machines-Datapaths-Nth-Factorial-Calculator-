library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ctrl1 is
generic(WIDTH : positive :=16);
  port(
    clk           : in std_logic;
    rst           : in std_logic;
    go            : in std_logic;
    n_ge_1        : in std_logic;
    regN_sel      : out std_logic;
    regN_en       : out std_logic;
    output_en     : out std_logic;
    tempFact_sel  : out std_logic;
    tempFact_en   : out std_logic;
    done          : out std_logic
  );
end ctrl1;

architecture BHV of ctrl1 is


		type STATE_TYPE is (START, LOAD, LOOP_COND, LOOP_BODY, FINISH);
		signal state, next_state : STATE_TYPE;
	
begin

	process(clk, rst)
	begin
		if (rst = '1') then
			state <= START;		
		elsif(rising_edge(clk)) then
			state <= next_state;
		end if;
	end process;
	
	
	process(state, go, n_ge_1)
	begin	
		
		regN_sel 		<= '0';
		tempFact_sel 	<= '0';
		regN_en 			<= '0';
		tempFact_en 	<= '0';
		output_en		<= '0';
		done 				<= '0';
		next_state 		<= state;
		
	case state is
----------------------------------------------------------	
 	when START =>
   done <= '0';	
	if (go = '1') then
	next_state <= LOAD;
	else
	next_state <= START;	
	end if;
 ----------------------------------------------------------	
	when LOAD => 
	regN_sel 		<= '0';
	tempFact_sel 	<= '0';	
	regN_en 			<= '1';
	tempFact_en 	<= '1';
	next_state 		<= LOOP_COND;
 ----------------------------------------------------------	
   when LOOP_COND =>
   if (n_ge_1 = '1') then
   next_state 	<= LOOP_BODY;
   else	
   next_state 	<= FINISH;
   end if;

   when LOOP_BODY =>
	regN_sel 		<= '1';
	tempFact_sel 	<= '1';
	regN_en 			<= '1';
	tempFact_en 	<= '1';		
	output_en <='1';
   next_state 			<= LOOP_COND;
	
 ----------------------------------------------------------	
	
 ----------------------------------------------------------	
	when FINISH =>
	done <= '1';
	output_en <= '1';
	if (go  = '0') then
	next_state <= START;
	else
	next_state <= FINISH;
	end if;
  
  
  when others =>null;
	
	end case;
 end process;  
end BHV;
