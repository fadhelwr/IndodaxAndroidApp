*** Settings ***
Library     AppiumLibrary
Resource    AccountRes.robot

*** Variables ***
${LOGIN-BUTTON-TEXT}        Login
${LOGIN-EMAIL-FIELD}        id.co.bitcoin:id/actEmail
${LOGIN-PASSWORD-FIELD}     id.co.bitcoin:id/etPassWithLabel
${LOGIN-BUTTON}             id.co.bitcoin.auth:id/btLogin

*** Keywords ***
Login Application
    Click Text          ${LOGIN-BUTTON-TEXT}
Input Email User
    Input Text          ${LOGIN-EMAIL-FIELD}       ${ACCOUNT-EMAIL-1}
Input Password User
    Input Password      ${LOGIN-PASSWORD-FIELD}    ${ACCOUNT-PASS-1}
    Click Element       ${LOGIN-BUTTON}
Input PIN
       Click Text    ${PIN-5}
       Click Text    ${PIN-4}
       Click Text    ${PIN-3}
       Click Text    ${PIN-2}
       Click Text    ${PIN-4}
       Click Text    ${PIN-4}






