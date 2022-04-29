library ieee;
use ieee.std_logic_1164.all;
 
entity tb is
end tb;
 
architecture behavior of tb is 
 
    -- component declaration for the unit under test's (uut) 
component bin2gray is
    port(   bin : in std_logic_vector(3 downto 0);
            g : out std_logic_vector(3 downto 0)
            );
end component;

component gray2bin is
port(   g : in std_logic_vector(3 downto 0);
        bin : out std_logic_vector(3 downto 0)
        );
end component;

signal bin,g,bin_out : std_logic_vector(3 downto 0) := (others => '0');
 
begin
    -- instantiate the unit under test's (uut)
   uut1: bin2gray port map (
          bin => bin,
          g => g
        );
 
   uut2: gray2bin port map (
          g => g,
          bin => bin_out
        );
          
   -- stimulus process
   stim_proc: process
   begin        
        bin <= "0000";    wait for 10 ns;
        bin <= "0001";  wait for 10 ns;
        bin <= "0010";  wait for 10 ns;
        bin <= "0011";  wait for 10 ns;
        bin <= "0100";    wait for 10 ns;
        bin <= "0101";  wait for 10 ns;
        bin <= "0110";  wait for 10 ns;
        bin <= "0111";  wait for 10 ns;
        bin <= "1000";    wait for 10 ns;
        bin <= "1001";  wait for 10 ns;
        bin <= "1010";  wait for 10 ns;
        bin <= "1011";  wait for 10 ns;
        bin <= "1100";    wait for 10 ns;
        bin <= "1101";  wait for 10 ns;
        bin <= "1110";  wait for 10 ns;
        bin <= "1111";  wait for 10 ns;     
      wait;
   end process;

end;