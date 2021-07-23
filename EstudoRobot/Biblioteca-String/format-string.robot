## Formatação de Strings

*** Settings ***

Library     String

*** Test Cases ***

Exemplo format String
    ${user}=        Set Variable  Issias Castro
    ${email}=       Set Variable  issias.p.castro@noesis.pt
    ${to}=      Format String       Para: {} <{}>   ${user}     ${email}
    Log To Console  ${to}