library IEEE;
use IEEE.std_logic_1164.all;
entity not_tb is 
end entity;

architecture myarc of not_tb is
component notGate is
port(
	a: in std_logic;
    b: out std_logic;
);
end notGate;

signal a: std_logic := '0';
signal b: std_logic;

begin
uut: notGate PORT MAP(a=>a,b=>b);
stim_proc:process
begin
wait for 10ns;
a<='1';
wait for 10ns;
a<='0';
wait for 10ns;
end process;
end myarc;