--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:25:39 12/13/2010
-- Design Name:   
-- Module Name:   C:/Users/gewt/Documents/xilinx/KCPSM3/source/CPU_and_Table_tb.vhd
-- Project Name:  KCPSM3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CPU_and_Table
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
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
 
ENTITY CPU_and_Table_tb IS
END CPU_and_Table_tb;
 
ARCHITECTURE behavior OF CPU_and_Table_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CPU_and_Table
    PORT(
         match_strobe : OUT  std_logic;
         out_port : OUT  std_logic_vector(7 downto 0);
         interrupt : IN  std_logic;
         interrupt_ack : OUT  std_logic;
         reset : IN  std_logic;
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal interrupt : std_logic := '0';
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal match_strobe : std_logic;
   signal out_port : std_logic_vector(7 downto 0);
   signal interrupt_ack : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CPU_and_Table PORT MAP (
          match_strobe => match_strobe,
          out_port => out_port,
          interrupt => interrupt,
          interrupt_ack => interrupt_ack,
          reset => reset,
          clk => clk
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100ns.
		reset <= '1';
      wait for 100ns;	
      reset <= '0';
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
