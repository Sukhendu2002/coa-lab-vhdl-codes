library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity tb_subtractor_8b is
end tb_subtractor_8b;

architecture myarc of tb_subtractor_8b is
component subtractor_8b
port (
    a : in std_logic_vector(7 downto 0);
    b : in std_logic_vector(7 downto 0);
    d: out std_logic_vector(7 downto 0);
);
end subtractor_8b;

signal a: std_logic_vector (7 downto 0) := (others => '0');
signal b: std_logic_vector (7 downto 0) := (others => '0');
signal d: std_logic_vector(7 downto 0);
begin  

uut: subtractor_8b PORT MAP(a=>a,b=>b,d=>d);
tb: process
begin
	wait for 10 ns;
    a<="00000000";
    b<="01010101";
    wait for 10 ns;
    a<="00000001";
	b<="00000011";
	wait for 10 ns;
  end process;
  end myarc;