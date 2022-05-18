***Settings***

Resource        ../resources/base.robot

#Executa a Keyword antes de cada testcase
Test Setup          Open Session
#Executa a Keyword antes de cada testcase
Test Teardown       Close Session

***Test Cases***
Deve logar com sucesso
    [tags]      login_valid
    Go To Login Form 

    Input Text          id=io.qaninja.android.twp:id/etEmail        eu@papito.io
    Input Text          id=io.qaninja.android.twp:id/etPassword     qaninja 
    Click Element       id=io.qaninja.android.twp:id/btnSubmit 

    Wait Until Page Contains    Show! Suas credenciais são validas.
    
Deve retornar login com senha inválida
    [tags]      login_invalid
    Go To Login Form 

    Input Text          id=io.qaninja.android.twp:id/etEmail        eu@papito.io
    Input Text          id=io.qaninja.android.twp:id/etPassword     abc
    Click Element       id=io.qaninja.android.twp:id/btnSubmit 

    Wait Until Page Contains    Senha inválida!

