library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FE_DFF_SR is
  Port (
  Q, notQ : out std_logic;
  CLK, D, RST : in std_logic
  );
end FE_DFF_SR;

architecture Behavioral of FE_DFF_SR is

begin
    process(CLK)
    begin   
        
        if (falling_edge(CLK)) then
        
              if(RST='0') then
                Q <= '0';
              else
                Q <= D;
                notQ <= not D;
              end if;
              
        end if;
    
    end process;

end Behavioral;
