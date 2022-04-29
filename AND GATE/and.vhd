-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;
entity andgate is
port(
A: in std_logic;
B: in std_logic;
C: out std_logic;
);
end andgate;

architecture myarc of andgate is
begin
C <= A and B;
end myarc;