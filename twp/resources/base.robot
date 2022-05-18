***Settings***

Library             AppiumLibrary
Library             libs/extend.py
Resource            helpers.robot

***Keywords***
Open Session
    Set Appium Timeout      5
    Open Application        http://localhost:4723/wd/hub
    ...                     automationName=UIAutomator2
    ...                     platformName=Android
    ...                     deviceName=Emulator
    ...                     app=${EXECDIR}/app/twp.apk
    Get Started

Close Session
    Close Application

  
