## Subtrair uma date de outra data

*** Settings ***
Library     DateTime

*** Test Cases ***
Exemplo de Subtract Date
    ${data1}    Subtract Date From Date     2021-07-21      2021-07-18      result_format=verbose
    Log To Console  ${data1}