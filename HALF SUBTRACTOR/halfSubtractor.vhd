library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity halfSubtractor is
port(
	a,bin: in std_logic;
    d,bout: out std_logic;
);
end halfSubtractor;

architecture myarc of halfSubtractor is
begin
	d<= a xor bin;
    bout<= (not a) and bin;
end myarc;