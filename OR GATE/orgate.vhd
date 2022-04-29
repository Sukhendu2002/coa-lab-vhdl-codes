library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity orGate is
port(
	a,b: in std_logic;
    c: out std_logic;
);
end orGate;

architecture myarc of orGate is
begin
 c<= a or b;
end myarc;
