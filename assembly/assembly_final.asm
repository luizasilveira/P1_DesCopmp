MOVI R_US, $0
MOVI R_DS, $0
MOVI R_UM, $0
MOVI R_DM, $0
MOVI R_UH, $0
MOVI R_DH, $0
MOVI R_ADD1, $1
MOVI R_0, $0
loop:
LOAD R_CMP, $14
CMP R_CMP, R_ADD1
JE passou_um_segundo
JMP loop
passou_um_segundo:
LOAD R_CMP, $15
LOAD R_BT, $24
MOVI R_IM, $1
CMP R_BT, R_IM
JE apertou_botao1
MOVI R_IM, $2
CMP R_BT, R_IM
JE apertou_botao2
MOVI R_IM, $4
CMP R_BT, R_IM
JE apertou_botao3
ADD R_US, R_ADD1, R_US
MOVI R_IM, $10
CMP R_IM, R_US
JE passou_10_segundos
JMP atualiza
passou_10_segundos:
MOVI R_US, $0
ADD R_DS, R_ADD1, R_DS
MOVI R_IM, $6
CMP R_IM, R_DS
JE passou_60_segundos
JMP atualiza
passou_60_segundos:
MOVI R_DS, $0
apertou_botao2:
ADD R_UM, R_ADD1, R_UM
MOVI R_IM, $10
CMP R_IM, R_UM
JE passou_10_minutos
JMP atualiza
passou_10_minutos:
MOVI R_UM, $0
ADD R_DM, R_ADD1, R_DM
MOVI R_IM, $6
CMP R_IM, R_DM
JE passou_60_minutos
JMP atualiza
passou_60_minutos:
MOVI R_DM, $0
apertou_botao3:
ADD R_UH, R_ADD1, R_UH
MOVI R_IM, $4
CMP R_IM, R_UH
JE passou_24_horas
compara_10uni_hora:
MOVI R_IM, $10
CMP R_IM, R_UH
JE passou_10_horas
JMP atualiza
passou_10_horas:
MOVI R_UH, $0
ADD R_DH, R_ADD1, R_DH
MOVI R_IM, $2
CMP R_IM, R_DH
JE passou_20_horas
JMP atualiza
passou_20_horas:
MOVI R_UH, $0
JMP atualiza
passou_24_horas:
MOVI R_IM, $2
CMP R_IM, R_DH
JE recomeca
JMP compara_10uni_hora
recomeca:
MOVI R_UH, $0
MOVI R_DH, $0
JMP atualiza
apertou_botao1:
MOVI R_US, $0
MOVI R_DS, $0
MOVI R_UM, $0
MOVI R_DM, $0
MOVI R_UH, $0
MOVI R_DH, $0
atualiza:
STORE $64, R_US
STORE $65, R_DS
STORE $66, R_UM 
STORE $67, R_DM
STORE $68, R_UH 
STORE $69, R_DH
JMP loop