library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity and_tb is
end and_tb;

architecture myarc of and_tb is
--Component name and entity's name must be same
--ports must be same 
 component andgate is
  Port (A,B:in std_logic;
  C: out std_logic );
end component;
--inputs
signal a: std_logic:= '0';
signal b: std_logic:= '0';
--outputs
signal c : std_logic;

begin
uut: andgate PORT MAP(a=>A,b=>B,c=>C);
--Stimulus Process
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