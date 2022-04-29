library IEEE;
use IEEE.std_logic_1164.all;

entity tb_halfSubtractor is
end tb_halfSubtractor;

architecture myarc of tb_halfSubtractor is
component halfSubtractor is
port(
	a,bin: in std_logic;
    d,bout: out std_logic;
);
end halfSubtractor;

signal a: std_logic := '0';
signal bin: std_logic := '0';
signal d: std_logic;
signal bout: std_logic;

begin
uut: halfSubtractor PORT MAP(a=>a,bin=>bin,d=>d,bout=>bout);
stim_proc:process
begin
	wait for 10ns;
    a<='1';
    bin<='0';
    wait for 10ns;
    a<='0';
    bin<='1';
    wait for 10ns;
    a<='0';
    bin<='0';
    wait for 10ns;
    a<='1';
    bin<='1';
    wait for 10ns;
end process;
end myarc;
    