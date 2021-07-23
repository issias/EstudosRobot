*** Settings ***

Library     DateTime


*** Test Cases ***

Retornar a Data Atual
    ${data}     Get Current Date
    Log To Console      ${data}

Formatação da Data Atual
    ${data_formatada}     Get Current Date      result_format=%d/%m/%y %H:%M
    Log To Console      ${data_formatada}