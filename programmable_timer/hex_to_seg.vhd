library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hex_to_seg is
    Port ( hex : in STD_LOGIC_VECTOR (3 downto 0);
           seg : out STD_LOGIC_VECTOR (6 downto 0);
           dp  : out STD_LOGIC);
end hex_to_seg;

architecture Behavioral of hex_to_seg is
begin
seg(6 downto 0) <=
        --  gfedcba 
           "1000000" when hex="0000" else--0
           "1001111" when hex="0001" else--1
           "0100100" when hex="0010" else--2
           "0110000" when hex="0011" else--3
           "0011001" when hex="0100" else--4
           "0010010" when hex="0101" else--5
           "0000010" when hex="0110" else--6
           "1111000" when hex="0111" else--7
           "0000000" when hex="1000" else--8
           "0010000" when hex="1001" else--9
           "0001000" when hex="1010" else--A
           "0000011" when hex="1011" else--b
           "1000110" when hex="1100" else--C
           "0100001" when hex="1101" else--d
           "0000110" when hex="1110" else--E
           "0001110" when hex="1111" else--F
           "0000000";       
dp <= '1';
end Behavioral;