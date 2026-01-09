library ieee;
use ieee.std_logic_1164.all;
entity T11_std_logic_vector is
end entity;

architecture sim of T11_std_logic_vector is
	signal Slv1 : std_logic_vector(7 downto 0);
	signal Slv2 : std_logic_vector(7 downto 0) := (others => '0');
	signal Slv3 : std_logic_vector(7 downto 0) := (others => '1');	
	signal Slv4 : std_logic_vector(7 downto 0) := x"AA";	
	signal Slv5 : std_logic_vector(7 downto 0) := "00000001";

begin

	process is
	begin
		wait for 10 ps;
		
		for i in Slv5'left downto Slv5'right+1 loop
			Slv5(i) <= Slv5(i-1);
		end loop;
			Slv5(0) <= Slv5(7);
			--Slv5(Slv'right) <= Slv5(Slv5'left);
	end process;
		
end architecture;