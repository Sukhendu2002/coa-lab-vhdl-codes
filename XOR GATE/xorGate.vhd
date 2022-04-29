-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;
entity xorGate is
port(
	a,b: in std_logic;
    c: out std_logic;
);
end xorGate;

architecture myarc of xorGate is
begin
c<= a xor b;
end myarc;