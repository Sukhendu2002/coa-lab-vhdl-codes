-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;
entity norGate is
port(
	a,b: in std_logic;
    c: out std_logic;
);
end norGate;

architecture myarc of norGate is
begin
c<= a nor b;
end myarc;