*** Settings ***

Documentation     Exemplo de tipos de variáveis: ESCALARES, LISTAS, DICIONARIOS E AMBIENTE

*** Variables ***

${EXEMPLO_VAR_ESCALAR}      Eu sou uma variável escalar!
@{EXEMPLO_VAR_LISTA}        azul  verde  amarelo  laranja
&{EXEMPLO_VAR_DICIONARIO}   nome=teste      email=teste@gmail.com

*** Test Cases ***
Exemplo do uso de variáveis
    Log To Console      ${EXEMPLO_VAR_ESCALAR}
    Log To Console      ${EXEMPLO_VAR_LISTA[3]}
    Log To Console      ${EXEMPLO_VAR_DICIONARIO.nome}
    Log To Console      Teste executado por %{USERNAME}