*** Settings ***
Library     AppiumLibrary
Resource    LoginGoogleAuth.robot

*** Keywords ***
Perform fresh login with Google Auth
    Open Indodax Application
    Login Application
    Input Email User
    Input Password User
    Input PIN
    Verify GAuth
    Verify Pop up Trading Mode
    Verify App Tour: Home Page
    Verify Bottom Sheet Biometric: Skip



