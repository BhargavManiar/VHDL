library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FE_DFF_ARL is
  Port (
    Q, notQ : out std_logic;
    CLK, D, RST : in std_logic
  );
end FE_DFF_ARL;

architecture Behavioral of FE_DFF_ARL is

begin

    process(CLK)
    begin
    
        if(RST = '0') then
            Q <= '0';
            notQ <= '1';
        elsif(falling_edge(CLK)) then
            Q <= D;
            notQ <= not D;
        end if;
           
    end process;

end Behavioral;
