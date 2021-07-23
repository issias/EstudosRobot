*** Test Cases ***

##Verificar quantos digitos um número possui
Exemplo de regexp
    ${numero}=      Set Variable    1234987
    Should Match Regexp      ${numero}   ^\\d{6}$

