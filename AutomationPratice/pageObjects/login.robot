*** Settings ***

*** Variables ***

${CREATE_ACCOUNT}        id=email_create
${BTN_CREATE_ACC}        id=SubmitCreate
${LOGIN_EMAIL}           id=email
${LOGIN_PASSWD}          id=passwd
${FOGOT_PASSWD}          xpath=//a[@title="Recover your forgotten password"]
${BTN_SIGN_IN}           id=SubmitLogin
${FORGOT_EMAIL}          id=email
${RETRIEVE_PASSWD}       xpath=//span[text()="Retrieve Password"]


*** Keywords ***
Create Account
    Input Text      ${CREAT_ACCOUNT}        novoTeste@teste.com
    Click Element   ${BTN_CREATE_ACC}

Login
    Input Text      ${LOGIN_EMAIL}          teste@teste.com
    Input Text      ${LOGIN_PASSWD}         123456
    Click Element   ${BTN_SIGN_IN}
