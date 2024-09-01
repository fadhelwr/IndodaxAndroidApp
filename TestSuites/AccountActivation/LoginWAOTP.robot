*** Settings ***
Library     AppiumLibrary
Resource    ../../Resources/AAres/LoginRes.robot
Resource    ../Generic/OpenApplication.robot

*** Test Cases ***
User should be able to open Indodax Application
    Open Indodax Application
User could be access Login Page
    Login Application
Perform Login Account
    Input Email User
    Input Password User
    Input PIN
    Verify OTP
    Verify Bottom Sheet Biometric: Skip



