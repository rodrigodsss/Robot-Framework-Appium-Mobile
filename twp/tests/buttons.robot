***Settings***

Resource        ../resources/base.robot

#Executa a Keyword antes de cada testcase
Test Setup          Open Session
#Executa a Keyword antes de cada testcase
Test Teardown       Close Session

***Test Cases***
Deve realizar um clique simples 
    [tags]      short_click
    Go To Short Click

    Click Element                   id=io.qaninja.android.twp:id/short_click

    Wait Until Page Contains        Isso é um clique simples 

Deve realizar um clique longo
    [tags]        long_click
    Go To Long Click

    Long Press                      id=io.qaninja.android.twp:id/long_click        1000

    Wait Until Page Contains        CLIQUE LONGO OK 