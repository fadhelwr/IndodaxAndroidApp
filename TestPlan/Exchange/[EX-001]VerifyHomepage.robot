*** Settings ***
Library          AppiumLibrary
Library          Process

*** Test Cases ***
Run Login Test Case
    Run Process    robot    -d Output ../../TestSuites/AccountActivation/LoginGoogleAuth.robot --test
Run Verify Home Page
    Run Process    robot    -d Output ../../TestSuites/Exchange/VerifyHomepageLite.robot




