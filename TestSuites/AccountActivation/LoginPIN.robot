*** Settings ***
Library     AppiumLibrary
Resource    ../../Resources/AAres/LoginRes.robot
Resource    ../Generic/OpenApplication.robot

*** Test Cases ***
User should be able to open Indodax Application
    Open Indodax Application
Direct to PIN App
    Input PIN
    



