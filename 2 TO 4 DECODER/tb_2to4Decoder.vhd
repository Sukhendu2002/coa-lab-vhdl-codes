library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity decoder_tb is
end entity;

architecture tb of decoder_tb is
component DECODER_SOURCE is
Port ( I : in STD_LOGIC_VECTOR (1 downto 0);
Y : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal I: STD_LOGIC_VECTOR(1 downto 0);
signal Y: STD_LOGIC_VECTOR(3 downto 0);

begin

uut: DECODER_SOURCE port map(
I => I, Y => Y);

stim: process
begin

I <= "00";
wait for 20 ns;

I <= "01";
wait for 20 ns;

I <= "10";
wait for 20 ns;

I <= "11";
wait for 20 ns;
wait;

end process;

end tb;