*** Settings ***
Library     AppiumLibrary
Resource    LoginOTP.robot

*** Keywords ***
Perform fresh login with OTP
    Open Indodax Application
    Login Application
    Input Email User
    Input Password User
    Input PIN
    Verify OTP
    Verify Pop up Trading Mode
    Verify App Tour: Home Page
    Verify Bottom Sheet Biometric: Skip



