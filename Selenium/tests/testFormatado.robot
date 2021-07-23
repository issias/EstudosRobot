*** Settings ***
Resource    ../page-obejects/PageLogin.robot
Resource    ../page-obejects/PageMenu.robot
Resource    ../page-obejects/PageCadastro.robot

Suite Setup     Abrir Navegador
Test Setup      Logar
Test Teardown   Fazer Logout
Suite Teardown  Close Browser
    

*** Test Cases ***
Fazer o cadastro de um novo cliente
    Ir para cadastro de cliente
    Verificar Página
    Preencher campos
    Realizar cadastro
    