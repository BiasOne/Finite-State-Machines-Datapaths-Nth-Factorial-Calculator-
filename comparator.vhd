library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comparator is
  generic(
    WIDTH         :   positive := 16);
  port(
    in1    	: in  std_logic_vector(width-1 downto 0);
    n_ge_1 		: out std_logic

  );
end comparator;

architecture BHVCOMP of comparator is

begin

process(in1)
begin

if(unsigned(in1) >= 1) then
n_ge_1 <= '1';
else
n_ge_1 <= '0';
end if;

end process;
end BHVCOMP;