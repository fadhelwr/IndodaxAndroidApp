*** Settings ***
Library     AppiumLibrary
Resource    AccountRes.robot

*** Variables ***
${LOGIN-BUTTON-TEXT}        Login
${LOGIN-EMAIL-FIELD}        id.co.bitcoin:id/actEmail
${LOGIN-PASSWORD-FIELD}     id.co.bitcoin:id/etPassWithLabel
${LOGIN-BUTTON}             id.co.bitcoin.auth:id/btLogin
${LOGIN-BUTTON-OTP}         id.co.bitcoin:id/tbtRight
${LOGIN-OTP-FIELD}          id.co.bitcoin:id/etValue
${LOGIN-BUTTON-VERIFY}      id.co.bitcoin:id/tbtNext

*** Keywords ***
Login Application
    Click Text          ${LOGIN-BUTTON-TEXT}
    Sleep    1s
Input Email User
    Input Text          ${LOGIN-EMAIL-FIELD}       ${ACCOUNT-EMAIL-1}
    Sleep    1s
Input Password User
    Input Password      ${LOGIN-PASSWORD-FIELD}    ${ACCOUNT-PASS-1}
    Sleep    1s
    Click Element       ${LOGIN-BUTTON}
#Change This
Input PIN
       Click Text    ${PIN-5}
       Sleep    1s
       Click Text    ${PIN-4}
       Sleep    1s
       Click Text    ${PIN-3}
       Sleep    1s
       Click Text    ${PIN-2}
       Sleep    1s
       Click Text    ${PIN-4}
       Sleep    1s
       Click Text    ${PIN-4}
       Sleep    2s
#OTP AUTH
Verify OTP
       Click Element    ${LOGIN-BUTTON-OTP}
       Sleep    2s
       Click Element    ${LOGIN-OTP-FIELD}
       Sleep    10s
       Click Element    ${LOGIN-BUTTON-VERIFY}
       





