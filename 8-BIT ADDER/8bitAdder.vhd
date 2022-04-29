library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
entity adder_8b is
port (
    a : in std_logic_vector(7 downto 0);
    b : in std_logic_vector(7 downto 0);
    c: out std_logic_vector(7 downto 0);
);
 
end adder_8b;

architecture myarc of adder_8b is  
begin  
	c(7 downto 0) <= a(7 downto 0) + b(7 downto 0);
end myarc;