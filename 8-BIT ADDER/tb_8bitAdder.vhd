library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity tb_adder_8b is
end tb_adder_8b;

architecture myarc of tb_adder_8b is
component adder_8b
port (
    a : in std_logic_vector(7 downto 0);
    b : in std_logic_vector(7 downto 0);
    c: out std_logic_vector(7 downto 0);
);
end adder_8b;

signal a: std_logic_vector (7 downto 0) := (others => '0');
signal b: std_logic_vector (7 downto 0) := (others => '0');
signal c: std_logic_vector(7 downto 0);
begin  

uut: adder_8b PORT MAP(a=>a,b=>b,c=>c);
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