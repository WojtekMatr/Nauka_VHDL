library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity T12_SignedUsigned is
end entity;

architecture sim of T12_SignedUsigned is
	signal UnsCnt : unsigned(7 downto 0):=(others=>'0');
	signal SigCnt : signed(7 downto 0):=(others=>'0');
	
	signal Uns4 : unsigned(3 downto 0) := "1000";
	signal Sig4 : signed (3 downto 0) := "1000";
	
	signal UnsCnt1 : unsigned(7 downto 0):=(others=>'0');
	signal SigCnt1 : signed(7 downto 0):=(others=>'0');
	
	
begin

	process is
	begin
		wait for 10 ps;
		
	     UnsCnt <= UnsCnt +1;
		 SigCnt <= SigCnt +1;
		 
		 --Adding signals
		 UnsCnt1 <= UnsCnt + Uns4;
		 SigCnt1 <= SigCnt + Sig4;
	end process;
		
end architecture;