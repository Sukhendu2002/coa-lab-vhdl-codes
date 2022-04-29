-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;
entity nor_tb is
end nor_tb;

architecture myarc of nor_tb is
component norGate is
port(
	a,b: in std_logic;
    c: out std_logic;
);
end norGate;

signal a: std_logic := '0';
signal b: std_logic := '0';
signal c: std_logic ;

begin
uut: norGate PORT MAP(a=>a,b=>b,c=>c);
stim_proc:process
begin
wait for 10ns;
a<='1';
b<='0';
wait for 10ns;
a<='0';
b<='1';
wait for 10ns;
a<='0';
b<='0';
wait for 10ns;
a<='1';
b<='1';
wait for 10ns;
end process;
end myarc;