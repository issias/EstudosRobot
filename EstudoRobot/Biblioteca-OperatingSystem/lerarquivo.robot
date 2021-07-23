*** Settings ***
Library     OperatingSystem
Library     String

*** Test Cases ***
Exemplo para Ler Arquiva
    ${conteudo}=    Get File    ${CURDIR}/dados.txt
    Log To Console      ${conteudo}

Exemplo de leitura de linha
    ${conteudo}=    Get File    ${CURDIR}/dados.txt
    ${linhas}=      Split to lines      ${conteudo}
    FOR  ${x}  IN  ${linhas}
        Log To Console      ${x}
    END
    