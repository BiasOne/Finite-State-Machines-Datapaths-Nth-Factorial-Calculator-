library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decrementer is
  generic (
    width  :     positive := 16);
  port (
    in1    : in  std_logic_vector(width-1 downto 0);
    output : out std_logic_vector(width-1 downto 0));
end decrementer;

architecture BHVDEC of decrementer is

begin 
  output <= std_logic_vector(unsigned(in1)-1);
end BHVDEC;