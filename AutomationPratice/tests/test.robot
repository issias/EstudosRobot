*** Settings ***
Resource        ../pageObjects/home.robot
Resource        ../pageObjects/login.robot

Suite Setup     Abrir Navegador
Test Setup      Sign In
Test Teardown   Sign Out
Suite Teardown  Close Browser

*** Test Cases ***
Fazer Login
    Login
    Pesquisar