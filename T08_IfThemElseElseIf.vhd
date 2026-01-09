entity T08_IfThemElseElseIf is
end entity;

architecture sim of T08_IfThemElseElseIf is

	signal CountUp : integer := 0;
	signal CountDown : integer := 10;
begin

	process is
	begin
		CountUp <= CountUp +1;
		CountDown <= CountDown -1;
		wait for 10 ps;
		
	end process;
	
	process is
	begin 
		wait on CountUp, CountDown;
		report "Count UP= " & integer'image(CountUp) & ", CountDown= " & integer'image(CountDown);
	end process;
	process is
	begin 
		if CountUp> CountDown then
			report "Jackpot";
		elsif CountDown> CountUp then
			report "Not Jackpot";
		else 
			report "Jackpot SMALLL";
		end if;
		wait on CountUp, CountDown;
		
		
	end process;
		
		
end architecture;