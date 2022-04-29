library IEEE;
use IEEE.std_logic_1164.all;

entity tb_halfAdder is
end tb_halfAdder;

architecture myarc of tb_halfAdder is
component halfAdder is
port(
	a,b: in std_logic;
    s,c: out std_logic;
);
end halfAdder;

signal a: std_logic := '0';
signal b: std_logic := '0';
signal s: std_logic;
signal c: std_logic;

begin
uut: halfAdder PORT MAP(a=>a,b=>b,s=>s,c=>c);
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
    