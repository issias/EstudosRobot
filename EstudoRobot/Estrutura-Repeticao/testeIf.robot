## Old Version
*** Test Cases ***
Teste do if
    ${idade}=  Set Variable  60
    Run Keyword If      ${idade} < 13       Tratar de crianças
    ...  ELSE IF        13 <= ${idade} <= 19    Tratar de adolescentes
    ...  ELSE IF        20 <= ${idade} <= 50    Tratar de adultos
    ...  ELSE                                   Tratar de idosos


*** Keywords ***
Tratar de crianças
    Log Lo Console      if das crianças

Tratar de adolescentes
    Log To Console      if dos adolescentes

Tratar de adultos
    Log To Console      if dos adultos

Tratar de idosos
    Log To Console      if de idosos
