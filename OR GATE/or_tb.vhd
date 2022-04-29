library IEEE;
use IEEE.std_logic_1164.all;
entity or_tb is 
end or_tb;

architecture myarc of or_tb is
component orGate is 
port(
	a,b: in std_logic;
    c: out std_logic;
);
end component;

signal a: std_logic := '0';
signal b: std_logic := '0';
signal c: std_logic;

begin
uut: orGate PORT MAP (a=>a,b=>b,c=>c);
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