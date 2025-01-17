library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
	

entity clk_divider is
port(
	 clkin : in std_logic;
	 div : in std_logic_vector(1 downto 0);
	 clkout: out std_logic
	 );
end clk_divider;

architecture beh of clk_divider is
shared variable upto : integer range 0 to 999; 
shared variable count : integer range 0 to 999 :=0;

begin

process(clkin)
begin--process
 if(clkin'event and clkin ='1') then--at each rising edge... 
   case div(1 downto 0) is--...we increase counters
     when "00" =>--400kHz => 125 clock cycle
      upto := 125-1;
     when "01" =>--200kHz => 250 cc
      upto := 250-1;
     when "10" =>--100kHz => 500 cc
      upto := 500-1;
     when others =>--50 kHz => 1000 cc
      upto := 1000-1; 
   end case;
   if(count >= upto) then --we reached max value
     clkout <= '1';
     count := 0;
   else --we must keep counting
     count := count + 1; 
     clkout <= '0';
   end if;--count=upto 
 end if;--clkin
end process;

end beh;

