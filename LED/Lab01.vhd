LIBRARY ieee;
USE ieee.std_logic_1164.all;
-- Simple module that connects
-- the SW switches to the LEDR lights
ENTITY Lab01 IS
PORT ( SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
LEDR : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)); -- red LEDs
END Lab01;
ARCHITECTURE Behavior OF Lab01 IS
BEGIN
LEDR <= SW;
END Behavior;