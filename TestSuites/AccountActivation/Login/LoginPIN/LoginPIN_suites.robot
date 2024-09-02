*** Settings ***
Library     AppiumLibrary
Resource    ../../../../Resources/AAres/LoginKeywords.robot
Resource    ../../../Generic/OpenApplication.robot

*** Keywords ***
Perform Login PIN
    Open Indodax Application
    Input PIN




