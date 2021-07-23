*** Settings ***
Library     SeleniumLibrary


*** Variables ***

${URL_CADASTRO_LOGIN}       https://estivalet.github.io/robot-static-testing-site/index.html#
${NAVEGADOR}                Chrome
${USER}                     id=username
${PASSWORD}                 id=password
${BTN_LOGAR}                id=login


*** Keywords ***
Abrir Navegador
    Open Browser        ${URL_CADASTRO_LOGIN}           ${NAVEGADOR}
    Set Selenium Speed  0.3s

Logar
    Input Text      ${USER}         admin
    Input Text      ${PASSWORD}     admin
    Click Element   ${BTN_LOGAR}