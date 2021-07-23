*** Test Cases ***

##Fazendo soma utilizando Python
Exemplo de uso da keyword Evaluate
    ${ns}=        Create Dictionary       x=${4}      y=${2}
    ${resultado}=    Evaluate  x+y  namespace=${ns}

    Log To Console  ${resultado}