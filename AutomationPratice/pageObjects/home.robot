*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${SIGN_IN}       xpath=//a[@class="login"]
${PESQUISA}      name=search_query
${NAVEGADOR}     Chrome
${URL}           http://automationpractice.com/index.php
${SIGN_OUT}      xpath=//a[@title="Log me out"]

*** Keywords ***
Abrir Navegador
    Open Browser        ${URL}      ${NAVEGADOR}
    Maximize Browser Window
    Set Selenium Speed  0.3s

Sign In
    Click Element       ${SIGN_IN}

Pesquisar
    Input Text          ${PESQUISA}     Faded Short Sleeve T-shirts
    Press Keys          ${PESQUISA}     ENTER

Sign Out
    Click Element       ${SIGN_OUT}