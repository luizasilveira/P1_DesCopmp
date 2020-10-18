
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 24;
          addrWidth: natural := 8
    );
   port (
          Endereco : in std_logic_vector (7 DOWNTO 0);
          Dado : out std_logic_vector (23 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
        -- Inicializa os endereços:
		  --        OpCode     Ra       Rb        Rc     Imediato
		  
		   tmp(0) := "0111" & "0000" & "0000" & "0001" & "00000011";
         tmp(1) := "0111" & "0000" & "0000" & "0010" & "00000001";
         tmp(2) := "0010" & "0001" & "0010" & "0011" & "00000000";
         tmp(3) := "0110" & "0011" & "0000" & "0000" & "01000000";
         tmp(4) := "0110" & "0010" & "0000" & "0000" & "01000001";
         tmp(5) := "0111" & "0001" & "0000" & "0000" & "00001111";
		  
--        tmp(0) := "0000" & "0000" & "0000" & "0000" & "00000000"; -- NOP
--        tmp(1) := "0111" & "0000" & "0000" & "0001" & "00001110"; -- MOVI R1, #14
--		  tmp(2) := "0111" & "0000" & "0000" & "0010" & "00001111"; -- MOVI R2, #15
--		  tmp(3) := "0100" & "0001" & "0010" & "0000" & "00001010"; -- JE R1, R2, 0x15
--		  tmp(4) := "0000" & "0000" & "0000" & "0000" & "00000000"; -- NOPE
--		  tmp(5) := "0111" & "0000" & "0000" & "0011" & "00001100"; -- MOVI R3, #12
--		  tmp(6) := "0010" & "0001" & "0011" & "0100" & "00000000"; -- SUB R1 - R3 => R4 
--		  
--		  
--		  
--		  tmp(7) := "1000" & "0000" & "0000" & "1111" & "00000111"; -- LOAD R0 <= [7]
--		  tmp(8) := "0110" & "0100" & "0000" & "0000" & "00010000"; -- STORE [8] <= R4
		  
		  
--		  tmp(9) := "0101" & "0000" & "0000" & "0000" & "00000110"; -- JMP 0x6
--		  tmp(10) := "0000" & "0000" & "0000" & "0000" & "00000000";
--        tmp(11) := "0000" & "0000" & "0000" & "0000" & "00000000";
--		  tmp(12) := "0000" & "0000" & "0000" & "0000" & "00000000";
--		  tmp(13) := "0000" & "0000" & "0000" & "0000" & "00000000";
--		  tmp(14) := "0000" & "0000" & "0000" & "0000" & "00000000";
--		  tmp(15) := "0000" & "0000" & "0000" & "0000" & "00000000";
--		  tmp(16) := "0000" & "0000" & "0000" & "0000" & "00000000";
--		  tmp(17) := "0000" & "0000" & "0000" & "0000" & "00000000";
--		  tmp(18) := "0000" & "0000" & "0000" & "0000" & "00000000";
--		  tmp(19) := "0000" & "0000" & "0000" & "0000" & "00000000";
--		  tmp(20) := "0000" & "0000" & "0000" & "0000" & "00000000";
--		  tmp(21) := "0000" & "0000" & "0000" & "0000" & "00000000";
--		  tmp(22) := "0000" & "0000" & "0000" & "0000" & "00000000";
--		  tmp(23) := "0000" & "0000" & "0000" & "0000" & "00000000";
		  
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;