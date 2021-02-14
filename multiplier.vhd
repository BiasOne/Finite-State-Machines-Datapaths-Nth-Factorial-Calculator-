library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multiplier is
  generic (
    width  :     positive := 16);
  port (
    in1    : in  std_logic_vector(width-1 downto 0);
    in2    : in  std_logic_vector(width-1 downto 0);
    output : out std_logic_vector(width-1 downto 0));
end multiplier;

architecture BHVMULT of multiplier is

begin 
  output <= std_logic_vector(resize(unsigned(in1)*unsigned(in2), width));
end BHVMULT;
