Library Ieee;
use ieee.std_logic_1164.all;
----------------------------------
entity identificador is
	port
	(
--------- Entradas------------

			
			
			B4: in  std_logic;
			B3: in  std_logic;
			B2: in  std_logic;
			B1: in  std_logic;
			B0: in  std_logic;
		
			EPeaje : in std_logic	
		

--------- Salidas ------------
		Salida1	: out std_logic
		 A    : out std_logic_vector(6 downto 0) );
	);
end identificador;


architecture arq1 of identificador is
    
   
begin
    
--entradas del sistema
    process (B4,B3,B2,B1,B0)
        begin
            case B4,B3,B2,B1,B0 is
				
            when "01001" => Salida1 <= '1';
            when "10010" => Salida1 <= '1';
            when "11100" => Salida1 <= '1';
            when others  => Salida1 <= '0';
            end case;
				
				
    end process; 
	 
--- proceso de Bcd 7 segmentoss ---

process (B4,B3)

		begin 
			case B4,B3 is
			
			begin
				  A<= "0000001" when   B4(2) & B3(1) else
              "1001111" when  B4(2) & B3(1) else
              "0010010" when  B4(2) & B3(1) else
				  when others   ; 
             
		end case;
	end process;
			
			
            

	 

