library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity signed_comparator is generic (n: positive);

port(X,Y: in signed (n-1 downto 0); 
	  lt, eq,gt: out std_logic
	 );
end signed_comparator;

architecture beh of signed_comparator is
	begin
		process (X, Y)
			begin
			gt <= '0';lt <= '0';eq<= '0';
			if(X>Y) then gt <= '1';
			elsif (X=Y) then eq <= '1';
			elsif (x < Y) then lt <= '1';
			else
			lt <= '0';gt <= '0';eq <= '0';
			end if;
		end process;
end beh;