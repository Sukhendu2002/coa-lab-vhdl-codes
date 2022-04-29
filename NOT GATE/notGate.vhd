library IEEE;
use IEEE.std_logic_1164.all;
entity notGate is
port(
	a: in std_logic;
    b: out std_logic;
);
end notGate;

architecture myarc of notGate is
begin
b<= not a;
end myarc;