***Settings***

Resource        ../resources/base.robot

#Executa a Keyword antes de cada testcase
Test Setup          Open Session
#Executa a Keyword antes de cada testcase
Test Teardown       Close Session

***Variables***

${SPINNER}          id=io.qaninja.android.twp:id/spinnerJob
${LIST_OPTIONS}     class=android.widget.ListView     

***Test Cases***
Deve Selecionar o perfil QA
    [tags]      QA
    Go To Singup Form 

    Choice Job   QA

Deve Selecionar o perfil Desenvolvedor
    [tags]      Desenvolvedor
    Go To Singup Form 

    Choice Job   Desenvolvedor

Deve Selecionar o perfil DevOps
    [tags]      DevOps
    Go To Singup Form 

    Choice Job   DevOps

Deve Selecionar o perfil UX
    [tags]      UX
    Go To Singup Form 

    Choice Job   UX

***Keywords***
Choice Job 
    [Arguments]     ${target}

    Click Element       ${SPINNER}      

    Wait Until Element Is Visible       ${LIST_OPTIONS}     
    Click Text                          ${target}

