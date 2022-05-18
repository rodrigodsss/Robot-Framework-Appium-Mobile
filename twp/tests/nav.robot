***Settings***

Resource        ../resources/base.robot

#Executa a Keyword antes de cada testcase
Test Setup          Open Session
#Executa a Keyword antes de cada testcase
Test Teardown       Close Session

#{
# "automationName": "UIAutomator2",
# "platformName": "Android",
# "deviceName": "Emulator",
# "app": "C:\\qaninja\\twp\\app\\twp.apk"
#}

***Variables***
${TOOLBAR_TITLE}        id=io.qaninja.android.twp:id/toolbarTitle  

***Test Cases***
Deve abrir a tela dos Vingadores
    [tags]      avengers
    Open Nav    

    Click Text                          AVENGERS
    Wait Until Element Is Visible       ${TOOLBAR_TITLE}
    Element Text Should Be              ${TOOLBAR_TITLE}       AVENGERS

Deve abrir a tela de formulários
    [tags]          forms 
    Open Nav       

    Click Text                          FORMS
    Wait Until Element Is Visible       ${TOOLBAR_TITLE}
    Element Text Should Be              ${TOOLBAR_TITLE}       FORMS

Deve abrir a tela Dialogs
    [tags]      dialogs 
    Open Nav       

    Click Text                          DIALOGS
    Wait Until Element Is Visible       ${TOOLBAR_TITLE}
    Element Text Should Be              ${TOOLBAR_TITLE}      DIALOGS

Deve abrir a tela Seek Bar
    [tags]      seek_bar
    Open Nav      

    Click Text                          SEEK BAR
    Wait Until Element Is Visible       ${TOOLBAR_TITLE}
    Element Text Should Be              ${TOOLBAR_TITLE}       SEEK BAR

Deve abrir a tela de Inputs
    [tags]      inputs 
    Open Nav    

    Click Text                          INPUTS
    Wait Until Element Is Visible       ${TOOLBAR_TITLE}
    Element Text Should Be              ${TOOLBAR_TITLE}       INPUTS

Deve abrir a tela de Botões
    [tags]      buttons 
    Open Nav 

    Click Text                          BOTÕES
    Wait Until Element Is Visible       ${TOOLBAR_TITLE}
    Element Text Should Be              ${TOOLBAR_TITLE}       BOTÕES




