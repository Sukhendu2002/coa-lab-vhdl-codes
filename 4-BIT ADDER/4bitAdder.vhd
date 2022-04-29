library ieee;
use ieee.std_logic_1164.all;

entity full_adder_4b is

  port (
    a,b : in std_logic_vector(3 downto 0);
    s : out std_logic_vector(3 downto 0);
    c : inout std_logic_vector(4 downto 1)
    );
 
end full_adder_4b;

architecture beh of full_adder_4b is
constant c0 : std_logic := '0';     
begin  

  s(0) <= a(0) xor b(0) xor c0;
  c(1) <= (a(0) and b(0))or(b(0) and c0)or(a(0) and c0);
  s(1) <= a(1) xor b(1) xor c(1);
  c(2) <= (a(1) and b(1))or(b(1) and c(1))or(a(1) and c(1));
  s(2) <= a(2) xor b(2) xor c(2);
  c(3) <= (a(2) and b(2))or(b(2) and c(2))or(a(2) and c(2));
  s(3) <= a(3) xor b(3) xor c(3);
  c(4) <= (a(3) and b(3))or(b(3) and c(3))or(a(3) and c(3));

end beh;