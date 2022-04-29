library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity halfAdder is
port(
	a,b: in std_logic;
    s,c: out std_logic;
);
end halfAdder;

architecture myarc of halfAdder is
begin
	s<= a xor b;
    c<= a and b;
end myarc;