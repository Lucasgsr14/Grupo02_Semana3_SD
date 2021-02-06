library ieee; 
use ieee.std_logic_1164.all; 

entity MUX_SUM is
	port(
		-- Entradas
		
		REG_ADD : in std_logic_vector(7 downto 0);
		REG_SUB : in std_logic_vector(7 downto 0);
		S3      : in std_logic;
		enable  : in std_logic;
		
		-- Saídas
		
		OUT_REG  : out std_logic_vector(7 downto 0)
		
	);
end MUX_SUM;

architecture ckt of MUX_SUM is

	signal mux_i0 : std_logic_vector(7 downto 0);
	signal mux_i1 : std_logic_vector(7 downto 0);
begin
	-- saida se '0' (SOMA)
	
	mux_i0(7) <= enable and not(s3) and reg_ADD(7);
	mux_i0(6) <= enable and not(s3) and reg_ADD(6);
	mux_i0(5) <= enable and not(s3) and reg_ADD(5);
	mux_i0(4) <= enable and not(s3) and reg_ADD(4);
	mux_i0(3) <= enable and not(s3) and reg_ADD(3);
	mux_i0(2) <= enable and not(s3) and reg_ADD(2);
	mux_i0(1) <= enable and not(s3) and reg_ADD(1);
	mux_i0(0) <= enable and not(s3) and reg_ADD(0);
	
	-- saida se '1' (SUBTRAÇÃO)
	
	mux_i1(7) <= enable and (s3) and reg_SUB(7);
	mux_i1(6) <= enable and (s3) and reg_SUB(6);
	mux_i1(5) <= enable and (s3) and reg_SUB(5);
	mux_i1(4) <= enable and (s3) and reg_SUB(4);
	mux_i1(3) <= enable and (s3) and reg_SUB(3);
	mux_i1(2) <= enable and (s3) and reg_SUB(2);
	mux_i1(1) <= enable and (s3) and reg_SUB(1);
	mux_i1(0) <= enable and (s3) and reg_SUB(0);
	
	-- saida geral
	
	OUT_REG(7) <= mux_i0(7) or mux_i1(7);
	OUT_REG(6) <= mux_i0(6) or mux_i1(6);
	OUT_REG(5) <= mux_i0(5) or mux_i1(5);
	OUT_REG(4) <= mux_i0(4) or mux_i1(4);
	OUT_REG(3) <= mux_i0(3) or mux_i1(3);
	OUT_REG(2) <= mux_i0(2) or mux_i1(2);
	OUT_REG(1) <= mux_i0(1) or mux_i1(1);
	OUT_REG(0) <= mux_i0(0) or mux_i1(0);
	
	

end ckt;
	
