library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity T13_ConcurrentStatement is
end entity;

architecture sim of T13_ConcurrentStatement is
	signal Uns : unsigned(5 downto 0):=(others=>'0');
	signal Mul1: unsigned(7 downto 0);
	
begin

	process is
	begin
		Uns <= Uns +1;
		wait for 10 ps;
		
	    
	end process;
	process isbegin
	Mul1 <= Uns & "00";
		
end architecture;