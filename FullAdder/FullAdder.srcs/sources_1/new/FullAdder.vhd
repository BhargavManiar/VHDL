library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdder is
  Port ( A, B, Cin : in std_logic;
         Cout, Sum : out std_logic
        );
end FullAdder;

architecture BehavioralFullAdder of FullAdder is
begin
    Sum <= (A xor B) xor (Cin); 
    Cout <= (Cin and (A xor B)) or (A and B);
end BehavioralFullAdder;