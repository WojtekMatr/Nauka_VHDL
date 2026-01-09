entity T06_SignalTB is
end entity;

architecture sim of T06_SignalTB is

	signal Signal1 : integer := 0;
begin

	process is
		variable i : integer := 1;
	begin
		report "*** Process begin ***";
		
		i := i+3;
		Signal1 <= Signal1 +3;
		report "I: " & integer'image(i) & ", Signal1=" & integer'image(Signal1);
			
			
		i := i+1;
		Signal1 <= Signal1 +10;
		report "I: " & integer'image(i) & ", Signal1=" & integer'image(Signal1);	
		wait for 10 ps;
					
					-- The process will loop back 
	end process;
		
end architecture;