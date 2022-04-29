library ieee;
use ieee.std_logic_1164.all;

entity full_adder_4b_tst is
 
end full_adder_4b_tst;
 architecture beh of full_adder_4b_tst is
   component full_adder_4b
       port (
    a,b: in  std_logic_vector(3 downto 0);   
     c :inout std_logic_vector(4 downto 1);  
    s: out std_logic_vector(3 downto 0));  

end component;
    signal a_s,b_s : std_logic_vector(3 downto 0);  
    signal s_s : std_logic_vector(3 downto 0); 
    signal c_s : std_logic_vector(4 downto 1);
 begin  

u1 : full_adder_4b port map (
  a => a_s,
   b => b_s,
   c => c_s,
   s => s_s);

tst_p: process
   begin
      a_s<="0000";
       b_s<="0101";
       wait for 100 ns;
       a_s<="1100";
       b_s<="0100";
       wait for 100 ns;
       a_s<="1111";
       b_s<="0000";
       wait for 100 ns;
       a_s<="0010";
       b_s<="1101";
       wait for 100 ns;
      end process;
  end beh;