----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:28:06 02/14/2021 
-- Design Name: 
-- Module Name:    intersection - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity intersection is
    Port ( clk : in  STD_LOGIC; 		--horloge
           rst : in  STD_LOGIC;		--reset
           R1 : out  STD_LOGIC;	--feu rouge principal voie 1
           O1 : out  STD_LOGIC;	--feu orangé  principal  voie 1
           V1 : out  STD_LOGIC;	--feu vert  principal  voie 1
			  RT1 : out  STD_LOGIC;	--feu rouge pour tourner voie 1 à droite vers voie 2 
           OT1 : out  STD_LOGIC;	--feu orangé pour tourner voie 1 à droite vers voie 2 
           VT1 : out  STD_LOGIC;	--feu vert pour tourner voie 1 à droite vers voie 2 
			  RP1 : out  STD_LOGIC;	--feu rouge pietons voie 1
           VP1 : out  STD_LOGIC;	--feu vert pietons voie 1 
			  R2 : out  STD_LOGIC;	--feu rouge  principal  voie 2
           O2 : out  STD_LOGIC;	--feu orangé  principal  voie 2
           V2 : out  STD_LOGIC;	--feu vert  principal voie 2
			  RP2 : out  STD_LOGIC;	--feu rouge pietons voie 2
           VP2 : out  STD_LOGIC;	--feu vert pietons voie 2
           RT2 : out  STD_LOGIC;		--feu rouge pour tourner voie 2 à droite vers voie 1 
           VT2 : out  STD_LOGIC;		--feu vert pour tourner voie 2 à droite vers voie 1 
           OT2 : out  STD_LOGIC);	--feu orangé pour tourner voie 2 à droite vers voie 1 

end intersection;

architecture Behavioral of intersection is

	 Type etat is (e0,e1,e2,e3,e4,e5); 		-- les 6 états de notre système
	 signal current, next_state: etat;
	 signal counter:integer:=0; -- compteur
	 constant T1:integer:=15;
	 constant T2:integer:=6;
	 constant T3:integer:=2;
	 constant T4:integer:=10;
	 constant T5:integer:=5;

begin
  definir_etat:process(rst,clk)
   begin
	 if rst ='1' then
		current<=e0;		-- reset à l'état initial
	 elsif rising_edge(clk) then
		current<=next_state;	
	 end if;
	end process definir_etat;
	
	sorties: process(current)
		begin 
		 case current is
			when e0 => R1<='0';R2<='1';V1<='1';V2<='0';O1<='0';O2<='0';RT1<='1';RT2<='1';VT1<='0';VT2<='0';OT1<='0';OT2<='0';RP1<='1';RP2<='0';VP1<='0';VP2<='1';  --voie1 = vert principale, rouge pour tourner et rouge pietons // voie 2 = rouge principale, rouge pour tourner et vert pietons
			
						next_state<=e1;
						
			when e1 => R1<='0';R2<='1';V1<='1';V2<='0';O1<='0';O2<='0';RT1<='0';RT2<='1';VT1<='1';VT2<='0';OT1<='0';OT2<='0';RP1<='1';RP2<='1';VP1<='0';VP2<='0';  --voie1 = vert principale, vert pour tourner et rouge pietons// voie 2 = rouge  principale, rouge pour tourner et rouge pietons
					next_state<=e2;
			when e2 => R1<='0';R2<='1';V1<='0';V2<='0';O1<='1';O2<='0';RT1<='0';RT2<='1';VT1<='0';VT2<='0';OT1<='1';OT2<='0';RP1<='0';RP2<='1';VP1<='1';VP2<='0';  --voie1 = orangé principale, orangé pour tourner et rouge pietons// voie 2 = rouge principale, rouge pour tourner et rouge pietons
					next_state<=e3;
			when e3 => R1<='1';R2<='0';V1<='0';V2<='1';O1<='0';O2<='0';RT1<='1';RT2<='1';VT1<='0';VT2<='0';OT1<='0';OT2<='0';RP1<='0';RP2<='1';VP1<='1';VP2<='0';  --voie1 = rouge principale, rouge pour tourner et vert pieton // voie 2 = vert principale, rouge pour tourner et rouge pietons
					next_state<=e4;
			when e4 => R1<='1';R2<='0';V1<='0';V2<='1';O1<='0';O2<='0';RT1<='1';RT2<='0';VT1<='0';VT2<='1';OT1<='0';OT2<='0';RP1<='1';RP2<='1';VP1<='0';VP2<='0'; --voie1 = rouge principale, rouge pour tourner et rouge pietons // voie 2 = vert principale, vert pour tourner et rouge pietons
					next_state<=e5;
			when e5 => R1<='1';R2<='0';V1<='0';V2<='0';O1<='0';O2<='1';RT1<='1';RT2<='0';VT1<='0';VT2<='0';OT1<='0';OT2<='1';RP1<='1';RP2<='1';VP1<='0';VP2<='0'; --voie1 = rouge principale, rouge pour tourner et rouge pietons // voie 2 =  orangé principale, orangé pour tourner et rouge pietons					
					next_state<=e0;
			
			end case;
	end process sorties;

end Behavioral;