*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***

Abrir Navegador na página do Google
    Abrir Navegador     http://www.google.com.br                Chrome       ##Utilizamos uma Keyword para abrir o Chrome      
    Title Should Be     Google                                  ##Confirmação que estamos na página do Google
    Input Text          xpath= //input[@Title="Pesquisar"]      Robot Framework
    Press Keys          xpath= //input[@Title="Pesquisar"]      ENTER
    CLose Browser

*** Keywords ***
Abrir Navegador
    [Arguments]     ${URL}      ${BROWSER}
    Open Browser    ${URL}      ${BROWSER}