*** Settings ***
Library     AppiumLibrary
Resource    ../../Resources/AAres/LoginKeyword.robot
Resource    ../Generic/OpenApplication.robot
Resource    ../../Resources/EXres/HomepageKeyword.robot

*** Test Cases ***
Verify Home Page Lite
    Verify <AppBar> LAYOUT LITE
    Verify Bottom Sheet Estimated Asset Value



