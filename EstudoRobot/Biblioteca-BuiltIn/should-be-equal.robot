*** Test Cases ***

##Comparação de valores em Robot
Exemplo de Should be Equals
    ${msgm}=     Set Variable        10
    Should Be Equal     10       ${msgm}

Exemplo de mensagem personalizada de Should be Equals
    ${msgm}=     Set Variable        10
    Should Be Equal     10       ${msgm}    msg=O Teste Falhou