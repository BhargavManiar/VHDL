library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FE_DFF_ARH is
  Port (
  Q, notQ : out std_logic;
  D, CLK, RST : in std_logic
  );
end FE_DFF_ARH;

architecture Behavioral of FE_DFF_ARH is

begin
    process(CLK)
    begin
    
        if(RST = '1') then
            Q <= '0';
            notQ <= '1';
        elsif(falling_edge(CLK)) then
            Q <= D;
            notQ <= D;
        end if;
    
    end process;


end Behavioral;