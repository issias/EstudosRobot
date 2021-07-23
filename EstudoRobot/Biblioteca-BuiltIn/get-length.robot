*** Test Cases ***

##calcular a quantidade de strings ou caracteres de uma determinda palavra ou frase;
Exemplo de getLength
    ${length}=      Get Length  oi mundo!
    Log To Console  ${length}

Tamanho da Lista usando getLength
    @{lista}=       Create List     valor1  valor2  valor3  valor4  valor5  valor6
    ${tamanho_lista}=        Get Length  ${lista} 
    
    Log To Console  ${tamanho_lista}
