--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   07:05:51 05/03/2022
-- Design Name:   
-- Module Name:   /home/ise/encoder/tb_encoder.vhd
-- Project Name:  encoder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: encoder
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_encoder IS
END tb_encoder;
 
ARCHITECTURE behavior OF tb_encoder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT encoder
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal b : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: encoder PORT MAP (
          a => a,
          b => b
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
	wait for 100 ns;
 
a <= "0000";
 
wait for 100 ns;
 
a <= "0001";
 
wait for 100 ns;
 
a <= "0010";
 
wait for 100 ns;
 
a <= "0100";
 
wait for 100 ns;
 
a <= "1000";
 
wait;

   end process;

END;
