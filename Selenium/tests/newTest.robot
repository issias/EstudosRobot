*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${NOME_CLIENTE}     id=nome_cliente
${CPF}              id=cpf
${DATA_NASCIMENTO}  id=dtnasc
${ESCOLHER_SEXO}    xpath=//input[@value="masculino"]
${TELEFONE}         id=prependedtext
${EMAIL}            id=email
${CEP}              id=cep
${BTN_PESQUISAR}    xpath=//button[text()="Pesquisar"]
${RUA}              id=rua
${NUMERO_CASA}      id=numero
${ESTADO_CIVIL}     id=estado-civil
${INTERESSES}       xpath=//span[contains(text(), "Testes Automatizados")]/preceding::input[1]  ##Com o preceding acessamos o elemento anterior no caso irmão
${BTN_CADASTRAR}    id=cadastrar
${AGUARDAR_MSG}     id=msg
${URL_CADASTRO}     https://estivalet.github.io/robot-static-testing-site/cadastro/index.html
${NAVEGADOR}        Chrome
${RUA_CLIENTE}      Rua Felicidade de Jesus Teixeira
${MSG_CADASTRO}     Cliente cadastrado com sucesso!
${VERIFICAR_PAGE}   Cadastro de Clientes

*** Test Cases ***
Fazer o cadastro de um novo cliente
    Abrir Navegador     ${URL_CADASTRO}             ${NAVEGADOR}
    Maximize Browser Window
    Verificar Página
    Preencher campos
    Realizar cadastro
    Close Browser


*** Keywords ***
Abrir Navegador
    [Arguments]     ${URL}      ${BROWSER}
    Open Browser    ${URL}      ${BROWSER}

Verificar Página
    Title Should be     ${VERIFICAR_PAGE}

Aguardar o valor "${valor_esperado}" no elemento "${elemento}" estar presente
    ${valor_atual}=  Get Element Attribute      ${elemento}     value
    Should Be Equal As Strings  ${valor_atual}  ${valor_esperado}

Preencher campos
    Input Text          ${NOME_CLIENTE}              Pedro da Silva
    Input Text          ${CPF}                       123456789713
    Input Text          ${DATA_NASCIMENTO}           11112017
    Click Element       ${ESCOLHER_SEXO}
    Input Text          ${TELEFONE}                  21999999999
    Input Text          ${EMAIL}                     pedro@exemplo.com
    Input Text          ${CEP}                       26535650
    Click Element       ${BTN_PESQUISAR}
    Wait Until Keyword Succeeds  10s  200ms  Aguardar o valor "${RUA_CLIENTE}" no elemento "${RUA}" estar presente
    input Text          ${NUMERO_CASA}               600
    Select From List By Value   ${ESTADO_CIVIL}      Solteiro(a)
    Click Element       ${INTERESSES}

Realizar cadastro
    Click Element       id=cadastrar
    Wait Until Element Is Visible  ${AGUARDAR_MSG}
    Wait Until Page Contains       ${MSG_CADASTRO}