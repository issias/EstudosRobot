***Test Cases***

##Concatenação usando RobotFramework
Exemplo do uso catenate
    ${str1}=    catenate    oi  mundo  do  robotFramework
    ${str2}=    catenate  SEPARATOR=,  oi  mundo  do  robotFramework
    Log To Console      ${str1}
    Log To Console      ${str2}