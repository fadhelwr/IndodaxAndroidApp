*** Settings ***
Library     AppiumLibrary
Resource    OpenApplication.robot
Resource    ../Resources/LoginRes.robot

*** Test Cases ***
User should be able to open Indodax Application
    Open Indodax Application
    Sleep    2S
User could be access Login Page
    Login Application
Perform Login Account
    Input Email User
    Input Password User
    Input PIN
    Verify OTP



