***Settings***

Resource        ../resources/base.robot

#Executa a Keyword antes de cada testcase
Test Setup          Open Session
#Executa a Keyword antes de cada testcase
Test Teardown       Close Session

***Test Cases***
Deve Selecionar a opção Robot Framework
    Go To CheckBox

    ${element}=     Set Variable        xpath=//android.widget.CheckBox[contains(@text, 'Robot Framework')]

    Click Text                          ${element}
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/rvContainer
    Wait Until Element Is Visible       ${element}      
    Element Attribute Should Match      ${element}      checked     true