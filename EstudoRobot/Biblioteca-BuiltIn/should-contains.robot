*** Test Cases ***

##Verificando se valor existe em determinada variável
Exemplo de Should Contains
    ${var}=     Set Variable    Meu nome é Issias
    Should Contain      ${var}      nome

    ## Should Contain      Meu nome é Issias     nome
    ## Outra forma de fazer a comparação

Exemplo de Should Contains utilizando Lista
    @{lista_cores}=     Create List     azul    amarelo     vermelho    laranja     verde
    Should Contain      ${lista_cores}      verde