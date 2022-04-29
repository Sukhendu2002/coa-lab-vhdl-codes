-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;
entity nandGate is
port(
	a,b: in std_logic;
    c: out std_logic;
);
end nandGate;

architecture myarc of nandGate is
begin
c<= a nand b;
end myarc;