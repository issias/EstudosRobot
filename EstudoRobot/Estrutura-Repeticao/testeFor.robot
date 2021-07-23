*** Test Cases ***
Testando For em Robot Framework
    @{cores}=   Create List      Amarelo  Vermelho  Azul  Rosa  Verde  Laranja  Branco  Preto
    FOR  ${x}  IN  @{cores}
        Log To Console      ${x}
    END

Pulando elemento em um For
    @{cores}=   Create List      Amarelo    Vermelho    Azul    Rosa    Verde   Laranja     Branco      Preto
    FOR  ${x}  IN  @{cores}
        Continue For Loop If  '${x}' == 'Azul'
        Log To Console      ${x}
    END

Finalizando elementos em um determinado For
    @{frutas}=  Create List     Banana      Maçã    Mamão   Goiaba      Caju
    FOR  ${x}  IN  @{frutas}
        Exit For Loop If  '${x}' == 'Goiaba'
        Log To Console  ${x}
    END

Testando For in Range
    FOR  ${i}  IN RANGE   1   10
        Log To Console  ${i}
    END