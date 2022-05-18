***Settings***

Resource        ../resources/base.robot

#Executa a Keyword antes de cada testcase
Test Setup          Open Session
#Executa a Keyword antes de cada testcase
Test Teardown       Close Session

#start_x - x-percent at which to start
#start_y - y-percent at which to start
#end_x - x-percent distance from start_x at which to stop
#end_y - y-percent distance from start_y at which to stop
#duration - (optional) time to take the swipe, in ms.

# X=18.22 -> Horizontal
# Y= 88.88 -> Vertical

# X= 18.22 -> Horizontal
# Y= 47.22 -> Vertical

***Variables***

${BTN_REMOVE}       id=io.qaninja.android.twp:id/btnRemove

***Test Cases***
Deve remover o Capitão América
    [tags]      captain_american
    Go To Avenger List

    Swipe By Percent        88.88   18.88   47.22   18.22

    Wait Until Element Is Visible       ${BTN_REMOVE}
    Click Element                       ${BTN_REMOVE}
    Sleep                               5