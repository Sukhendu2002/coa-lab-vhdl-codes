--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   06:55:47 05/03/2022
-- Design Name:   
-- Module Name:   /home/ise/decoder/tb_decoder.vhd
-- Project Name:  decoder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: decoder
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
 
ENTITY tb_decoder IS
END tb_decoder;
 
ARCHITECTURE behavior OF tb_decoder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT decoder
    PORT(
         a : IN  std_logic_vector(1 downto 0);
         b : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal b : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: decoder PORT MAP (
          a => a,
          b => b
        );

   -- Clock process definitions

   -- Stimulus process
   stim_proc: process
   begin		
	wait for 100 ns;
 
 a <= "00";
 
 wait for 100 ns;
 
 a <= "01";
 
 wait for 100 ns;
 
 a <= "10";
 
 wait for 100 ns;
 
 a <= "11";
 
 wait;

   end process;

END;
