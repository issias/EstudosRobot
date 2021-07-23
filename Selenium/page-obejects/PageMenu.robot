
*** Variables ****
${BTN_CADASTRO_CLIENTES}        id=btn-cadastro-cliente
${BTN_LOGOUT}                   id=btn-logout

*** Keywords ***
Ir para cadastro de cliente
    Click Element               ${BTN_CADASTRO_CLIENTES} 

Fazer Logout
    Click Element               ${BTN_LOGOUT}
