LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY ImageGenerator IS
  GENERIC(
    pixel_limit_vert :  INTEGER := 144;
    pixel_limit_hori :  INTEGER := 176; 
  
    pixels_yR :  INTEGER := 240;   --row that first color will persist until  640x480
    pixels_xR :  INTEGER := 320;  --column that first color will persist until
     
     pixels_yG :  INTEGER := 240;   --row that first color will persist until
    pixels_xG :  INTEGER := 640;  --column that first color will persist until
     
     pixels_yB :  INTEGER := 480;   --row that first color will persist until
    pixels_xB :  INTEGER := 320;  --column that first color will persist until
     
     pixels_yW :  INTEGER := 480;   --row that first color will persist until
    pixels_xW :  INTEGER := 640);  --column that first color will persist unti

  PORT(
    clk      :  IN   STD_LOGIC;
     resetin  :  IN   STD_LOGIC;
    disp_ena :  IN   STD_LOGIC;  -- display enable ('1' = display time, '0' = blanking time)
    row      :  IN   INTEGER;    -- row pixel coordinate
    column   :  IN   INTEGER;    -- column pixel coordinate
    red      :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0) ;  --red magnitude output to DAC
    green    :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0) ;  --green magnitude output to DAC
    blue     :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)); --blue magnitude output to DAC
END ImageGenerator;

ARCHITECTURE behavior OF ImageGenerator IS

COMPONENT img_rom_r IS
    PORT
    (
        aclr        : IN STD_LOGIC  := '0';
        address     : IN STD_LOGIC_VECTOR (14 DOWNTO 0);
        clock       : IN STD_LOGIC  := '1';
        rden        : IN STD_LOGIC  := '1';
        q       : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
    );
end component;

COMPONENT img_rom_g IS
    PORT
    (
        aclr        : IN STD_LOGIC  := '0';
        address     : IN STD_LOGIC_VECTOR (14 DOWNTO 0);
        clock       : IN STD_LOGIC  := '1';
        rden        : IN STD_LOGIC  := '1';
        q       : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
    );
end component;

COMPONENT img_rom_b IS
    PORT
    (
        aclr        : IN STD_LOGIC  := '0';
        address     : IN STD_LOGIC_VECTOR (14 DOWNTO 0);
        clock       : IN STD_LOGIC  := '1';
        rden        : IN STD_LOGIC  := '1';
        q       : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
    );
end component;

component counter is
port(
clock : in std_logic;
reset : in std_logic;
enable : in std_logic;
counter : out integer
);
end component counter;
    
-- ROMs give us the data when we put the address in the component, so we have change the address in order to take data.
--CONSTANT addresszero : INTEGER := 0;
SIGNAL qr, qg, qb : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL rdenveri,enb: STD_LOGIC;
SIGNAL addressgen : STD_LOGIC_VECTOR (14 DOWNTO 0);
SIGNAL cnt : INTEGER;


BEGIN
  rdenveri <= '1';
  counter PORT MAP (clk, resetin,enb,cnt);
  ROM0:  img_rom_r PORT MAP (not resetin,std_logic_vector(to_unsigned(cnt, 15)),clk,rdenveri,qr);
  ROM1:  img_rom_g PORT MAP (not resetin,std_logic_vector(to_unsigned(cnt, 15)),clk,rdenveri,qg);
  ROM2:  img_rom_b PORT MAP (not resetin,std_logic_vector(to_unsigned(cnt, 15)),clk,rdenveri,qb);
  
  
  PROCESS(disp_ena, row, column,clk)
   
  BEGIN
  IF( clk'event and clk='1') then
   IF( disp_ena = '1') THEN --display time
      IF(row < pixel_limit_vert AND column < pixel_limit_hori) THEN
        enb <= '1';  
       red <= qr;
       green  <= qg;
       blue <= qb;
         
      --ELSIF (row < pixels_yG  AND column > pixels_xR AND column < pixels_xG ) THEN
       -- red <= (OTHERS => '0');
       -- green  <= (OTHERS => '1');
       -- blue <= (OTHERS => '0');
          
        --ELSIF (row > pixels_yR AND row < pixels_yB AND column < pixels_xB) THEN
      --  red <= (OTHERS => '1');
      --  green  <= (OTHERS => '0');
      --blue <= (OTHERS => '1');
          
        --ELSE
         -- red <= (OTHERS => '1');
       -- green  <= (OTHERS => '1');
       -- blue <= (OTHERS => '1'); 
      ELSE                           --blanking time
        red <= (OTHERS => '0');
        green <= (OTHERS => '1');
        blue <= (OTHERS => '0');
          enb <= '0';   
            
      END IF;
    

    ELSE
       red <= (OTHERS => '1');
      green <= (OTHERS => '0');
      blue <= (OTHERS => '0');
        --addressgen <= (OTHERS => '0');
END IF;
    END IF; 
  END PROCESS;
END behavior;

