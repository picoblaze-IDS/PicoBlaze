----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:33:21 11/26/2010 
-- Design Name: 
-- Module Name:    dataTable - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity dataTable is
    Generic(
	     -- port address, for picoblaze
		  -- Note: set this to an EVEN value.
        portnumber : std_logic_vector(7 downto 0);

		 INIT_00 : bit_vector := X"0000000000000000000000000000000000000000000000002000000303000000";
       INIT_01 : bit_vector := X"0000000000000000000000000000000000000000000000002000000303000000";
       INIT_02 : bit_vector := X"0000000000000000000000000000000000000000000000002000000303000000";
       INIT_03 : bit_vector := X"0000000000000000000000000000000000000000000000002000000303000000";       
		 INIT_04 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_05 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_06 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_07 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_08 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_09 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0A : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0B : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0C : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0D : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0E : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0F : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_10 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_11 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_12 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_13 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_14 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_15 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_16 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_17 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_18 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_19 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_1A : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_1B : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_1C : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_1D : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_1E : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_1F : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_20 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_21 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_22 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_23 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_24 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_25 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_26 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_27 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_28 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_29 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_2A : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_2B : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_2C : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_2D : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_2E : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_2F : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_30 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_31 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_32 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_33 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_34 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_35 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_36 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_37 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_38 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_39 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_3A : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_3B : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_3C : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_3D : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_3E : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_3F : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000"

		  ); 
    Port (
        CLK : in  STD_LOGIC;
        RST : in std_logic;
        RD : in  STD_LOGIC;
        WR : in  STD_LOGIC;
        PORT_ID : in  STD_LOGIC_VECTOR (7 downto 0);
        DATA_IN : in std_logic_vector (7 downto 0);
        DATA_OUT : out  STD_LOGIC_VECTOR (7 downto 0) );
end dataTable;

architecture Behavioral of dataTable is


    component counter2 is
        Generic(
            W : integer := 11 );
        Port (
            RST : in std_logic;
            A0 : in  STD_LOGIC;
            LOAD : in std_logic;
            D : in std_logic_vector(7 downto 0);
            CLK : in  STD_LOGIC;
            Q : out  STD_LOGIC_VECTOR (W-1 downto 0);
            INC : in  STD_LOGIC);
    end component;

    ----- component RAMB16_S9 -----
    component RAMB16_S9
        generic
        (
            INIT_00 : bit_vector := INIT_00;
				INIT_01 : bit_vector := INIT_01;
				INIT_02 : bit_vector := INIT_02;
				INIT_03 : bit_vector := INIT_03;
				INIT_04 : bit_vector := INIT_04;
				INIT_05 : bit_vector := INIT_05;
				INIT_06 : bit_vector := INIT_06;
				INIT_07 : bit_vector := INIT_07;
				INIT_08 : bit_vector := INIT_08;
				INIT_09 : bit_vector := INIT_09;
				INIT_0A : bit_vector := INIT_0A;
				INIT_0B : bit_vector := INIT_0B;
				INIT_0C : bit_vector := INIT_0C;
				INIT_0D : bit_vector := INIT_0D;
				INIT_0E : bit_vector := INIT_0E;
				INIT_0F : bit_vector := INIT_0F;
				INIT_10 : bit_vector := INIT_10;
				INIT_11 : bit_vector := INIT_11;
				INIT_12 : bit_vector := INIT_12;
				INIT_13 : bit_vector := INIT_13;
				INIT_14 : bit_vector := INIT_14;
				INIT_15 : bit_vector := INIT_15;
				INIT_16 : bit_vector := INIT_16;
				INIT_17 : bit_vector := INIT_17;
				INIT_18 : bit_vector := INIT_18;
				INIT_19 : bit_vector := INIT_19;
				INIT_1A : bit_vector := INIT_1A;
				INIT_1B : bit_vector := INIT_1B;
				INIT_1C : bit_vector := INIT_1C;
				INIT_1D : bit_vector := INIT_1D;
				INIT_1E : bit_vector := INIT_1E;
				INIT_1F : bit_vector := INIT_1F;
				INIT_20 : bit_vector := INIT_20;
				INIT_21 : bit_vector := INIT_21;
				INIT_22 : bit_vector := INIT_22;
				INIT_23 : bit_vector := INIT_23;
				INIT_24 : bit_vector := INIT_24;
				INIT_25 : bit_vector := INIT_25;
				INIT_26 : bit_vector := INIT_26;
				INIT_27 : bit_vector := INIT_27;
				INIT_28 : bit_vector := INIT_28;
				INIT_29 : bit_vector := INIT_29;
				INIT_2A : bit_vector := INIT_2A;
				INIT_2B : bit_vector := INIT_2B;
				INIT_2C : bit_vector := INIT_2C;
				INIT_2D : bit_vector := INIT_2D;
				INIT_2E : bit_vector := INIT_2E;
				INIT_2F : bit_vector := INIT_2F;
				INIT_30 : bit_vector := INIT_30;
				INIT_31 : bit_vector := INIT_31;
				INIT_32 : bit_vector := INIT_32;
				INIT_33 : bit_vector := INIT_33;
				INIT_34 : bit_vector := INIT_34;
				INIT_35 : bit_vector := INIT_35;
				INIT_36 : bit_vector := INIT_36;
				INIT_37 : bit_vector := INIT_37;
				INIT_38 : bit_vector := INIT_38;
				INIT_39 : bit_vector := INIT_39;
				INIT_3A : bit_vector := INIT_3A;
				INIT_3B : bit_vector := INIT_3B;
				INIT_3C : bit_vector := INIT_3C;
				INIT_3D : bit_vector := INIT_3D;
				INIT_3E : bit_vector := INIT_3E;
				INIT_3F : bit_vector := INIT_3F
        );
        port
        (
            DO : out std_logic_vector(7 downto 0);
            DOP : out std_logic_vector(0 downto 0);
            ADDR : in std_logic_vector(10 downto 0);
            CLK : in std_ulogic;
            DI : in std_logic_vector(7 downto 0);
            DIP : in std_logic_vector(0 downto 0);
            EN : in std_ulogic;
            SSR : in std_ulogic;
            WE : in std_ulogic
        );
    end component;

    attribute box_type : string;
    attribute BOX_TYPE of
        RAMB16_S9 : component is "black_box";
    
    signal zeros : std_logic_vector(7 downto 0);
    signal SEL : std_logic;
    signal INC : std_logic;
    signal ADDRESS : std_logic_vector(10 downto 0);
    signal DQ : std_logic_vector(7 downto 0);
    signal LOAD : std_logic;
    
begin

    zeros <= std_logic_vector(to_unsigned(0, 8));
     
    c: counter2 generic map(W=>11) port map(RST=>RST, CLK=>CLK, D=>DATA_IN, LOAD=>LOAD, A0=>PORT_ID(0), INC=>INC, Q=>ADDRESS);
     
    r:RAMB16_S9
        port map
		  (
            CLK=>CLK, EN=>'1', WE=>'0', SSR=>'0',
            DI=>zeros, DIP=>"0", ADDR=>ADDRESS, DO=>DQ, DOP=>open
        );  

    SEL <= '1' when PORT_ID(7 downto 1)=PORTNUMBER(7 downto 1) else '0';
     
    DATA_OUT <= DQ;
     
    INC <= SEL AND RD;
    LOAD <= SEL AND WR;
     
end Behavioral;

----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter2 is
    Generic(
        W : integer := 11 );
    Port (
        RST : in std_logic;
        A0 : in  STD_LOGIC;
        LOAD : in std_logic;
        D : in std_logic_vector(7 downto 0);
        CLK : in  STD_LOGIC;
        Q : out  STD_LOGIC_VECTOR (W-1 downto 0);
        INC : in  STD_LOGIC);
end counter2;

architecture Behavioral of counter2 is

    signal QV : std_logic_vector(W-1 downto 0);
    signal newQV : std_logic_vector(W-1 downto 0);
     
    component reg is
        Generic (
            WIDTH : integer := 1 );
        Port (
            D   : in  STD_LOGIC_VECTOR ((WIDTH-1) downto 0);
            CLK : in  STD_LOGIC;
            Q   : out STD_LOGIC_VECTOR ((WIDTH-1) downto 0));
    end component;

begin
    
    -- generate new value for counter	 
    p: process(QV, RST, LOAD, A0, INC, D)
    begin
        if RST='1' then
            newQV <= std_logic_vector(to_unsigned(0, W));       -- Reset counter to 0
        elsif LOAD='1' AND A0='0' then
            newQV <= QV(W-1 downto 8) & D;                      -- Load low byte
        elsif LOAD='1' AND A0='1' then
            newQV <= D(W-1-8 downto 0) & QV(7 downto 0);        -- Load high byte
        elsif INC='1' then
            newQV <= QV + std_logic_vector(to_unsigned(1, W));  -- Increment
        else
            newQV <= QV;
        end if;
    end process;

	 -- register to hold the counter
    rg: reg generic map(WIDTH=>W) port map(CLK=>CLK, D=>newQV, Q=>QV);

    -- copy counter value to output port
	 Q <= QV;
	 
end Behavioral;

----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity reg is
    Generic (
        WIDTH : integer := 1 );
    Port (
        D : in  STD_LOGIC_VECTOR ((WIDTH-1) downto 0);
        CLK : in  STD_LOGIC;
        Q : out  STD_LOGIC_VECTOR ((WIDTH-1) downto 0));
end reg;

architecture Behavioral of reg is

begin

    U_FD_INST: for i in 0 to (WIDTH-1) generate
    --
        U_FD : FD port map (
            D => D(i),
            C => CLK,
            Q => Q(i) );
    end generate;

end Behavioral;


