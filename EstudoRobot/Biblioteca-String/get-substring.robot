*** Settings ***

Library     String

*** Test Cases ***

Exemplo de Sub String
    ${strg1}    Set Variable    Texto de Exemplo
    ${resultado}    Get Substring   ${strg1}    1   5
    Log To Console  ${resultado}

    ## ${strg1}    Get Substring    Texto de Exemplo    1   5