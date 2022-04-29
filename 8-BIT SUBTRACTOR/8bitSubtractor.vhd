library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
entity subtractor_8b is
port (
    a : in std_logic_vector(7 downto 0);
    b : in std_logic_vector(7 downto 0);
    d: out std_logic_vector(7 downto 0);
);
 
end subtractor_8b;

architecture myarc of subtractor_8b is  
begin  
	d(7 downto 0) <= a(7 downto 0) - b(7 downto 0);
end myarc;