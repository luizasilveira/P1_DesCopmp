library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


ENTITY divisorGenerico_e_Interface IS
    GENERIC (
        DATA_WIDTH : NATURAL := 8
    );
    PORT (
        -- Input ports
		  clk              : IN std_logic;
        habilitaLeitura  : IN std_logic;
        limpaLeitura     : IN std_logic;
		  sel              : IN std_logic;
        leituraUmSegundo : OUT std_logic_vector(DATA_WIDTH - 1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE interface OF divisorGenerico_e_Interface IS
    -- Sinal que indica se passou um segundo.	 
	 signal clockNormal      : std_logic; 
    signal clockAcelerado   : std_logic;
    SIGNAL clock_utilizado  : std_logic;
    SIGNAL sinalUmSegundo   : std_logic;

BEGIN

		 baseTempoNormal : ENTITY work.divisorGenerico
		  GENERIC MAP(
				divisor => 25000000
		  ) 
		  PORT MAP(
				clk       => clk,
				saida_clk => clockNormal 
		  );
		  
		  baseTempoRapido : ENTITY work.divisorGenerico
		  GENERIC MAP(
				divisor => 125000
		  ) 
		  PORT MAP(
				clk       => clk,
				saida_clk => clockAcelerado 
		  );
		  
		  mux : entity work.muxStd_logic
		  PORT MAP(
				entradaA_MUX => clockNormal,
				entradaB_MUX => clockAcelerado,
				seletor_MUX => sel,
				saida_MUX => clock_utilizado 
		  );
		  
		  registraUmSegundo : ENTITY work.flipflop
        PORT MAP(
            data_in    => '1',
            ENABLE => '1',
            clk    => clock_utilizado,
            rst    => limpaLeitura,
			   data_out   => sinalUmSegundo
        );
		
    leituraUmSegundo <= "0000000" & sinalUmSegundo WHEN habilitaLeitura = '1' ELSE
        "ZZZZZZZZ";
END ARCHITECTURE interface;