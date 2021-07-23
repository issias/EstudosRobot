***Settings***
Library     String

##Conversao maicusla e minuscula
*** Test Cases ***

Conversao para minusculo
    ${strg1}=       Set Variable       ESSE TEXTO VAI SER CONVERTIDO PARA MINUSCULO
    ${minusculo}=      Convert To Lower Case   ${strg1}
    Log To Console  ${minusculo}
    ##${strg1}=       Convert To Lower Case       ESSE TESTO VAI SER CONVERTIDO PARA MINUSCULO
Conversao para Maiusculo
    ${strg2}=       Set Variable       esse texto vai ser convertido para maiuscula
    ${maiuscula}=      Convert To Upper Case   ${strg2}
    Log To Console  ${maiuscula}
    ##${strg2}=       Convert To Upper Case       esse testo vai ser convertido para maiusculo
    

