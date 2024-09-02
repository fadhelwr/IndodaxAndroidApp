*** Settings ***
Library          AppiumLibrary
Resource         ../../TestSuites/AccountActivation/Login/LoginPIN/LoginPIN_suites.robot
Resource         ../../TestSuites/Exchange/Lite/Homepage/VerifyHomePageLite_suites.robot

*** Test Cases ***
Testcase 1: Perform Login Account via PIN
    Perform Login PIN
Tescase 2: Verify Home Page Lite
    Verify Home Page Lite




