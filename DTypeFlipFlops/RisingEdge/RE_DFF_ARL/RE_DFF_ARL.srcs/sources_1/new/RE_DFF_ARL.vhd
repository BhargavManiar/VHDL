library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RE_DFF_ARL is
  Port ( 
    Q, notQ : out std_logic;
    CLK, SyncReset, D : in std_logic
  );
end RE_DFF_ARL;

architecture Behavioral of RE_DFF_ARL is

begin

    process(CLK, SyncReset)
    begin
        if(SyncReset='0') then
            Q <= '0';
        elsif(rising_edge(CLK)) then
            Q <= D;
        end if;
    end process;
    
end Behavioral;
