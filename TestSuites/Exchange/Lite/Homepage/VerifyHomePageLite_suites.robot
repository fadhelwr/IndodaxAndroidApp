*** Settings ***
Library     AppiumLibrary
Resource    ../../../../Resources/AAres/LoginKeywords.robot
Resource    ../../../Generic/OpenApplication.robot
Resource    ../../../../Resources/EXres/HomepageKeywords.robot

*** Keywords ***
Verify Home Page Lite
    Verify <AppBar> LAYOUT LITE
    Verify Bottom Sheet Estimated Asset Value



