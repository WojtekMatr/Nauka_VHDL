library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity T14_Multiplexer is
end entity;

architecture sim of T14_Multiplexer is
	signal Sig1 : unsigned(7 downto 0):=x"08";
	signal Sig2 : unsigned(7 downto 0):=x"BB";
	signal Sig3 : unsigned(7 downto 0):=x"CC";
	signal Sig4 : unsigned(7 downto 0):=x"FF";
	

	
begin

	process is
	begin

	    wait;
	end process;

end architecture;